<?php

namespace Model;

class ThongKe extends Database
{

    // BẢNG KÊ BÁN HÀNG CĂN TIN
    public function ThongKeBanHangCangTin($TuNgay, $DenNgay)
    {
        if ($TuNgay == "" || $DenNgay == "") {
            return [];
        }
        // BẢNG KÊ BÁN HÀNG CĂN TIN
         $sql = "SELECT od.IdProduct
        ,p.nameProduct
        ,p.unitPrice
        ,p.Code
        ,od.Price
        ,SUM(od.Number) as `SoLuong` FROM `bakcodt_orderdetail` as od,`bakcodt_order` as o,`bakcodt_product` as p 
        where  o.NgayTao > '{$TuNgay}' and o.NgayTao < '{$DenNgay}'
         and od.IdProduct = p.Code and od.CodeOrder = o.CodeOrder 
        GROUP BY od.IdProduct
        " ;
        $this->Query($sql);
        return $this->fetchAssoc();
    }
}
