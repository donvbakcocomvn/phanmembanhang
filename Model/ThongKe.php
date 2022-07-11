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
        $sql = "SELECT p.nameProduct,p.unitPrice,p.Code,od.Price,SUM(od.Number) as `SoLuong` FROM `bakcodt_orderdetail` as od,`bakcodt_order` as o,`bakcodt_product` as p 
        WHERE od.IdProduct = p.ID and od.CodeOrder = o.CodeOrder 
        and (o.NgayTao > '{$TuNgay}' and o.NgayTao < '{$DenNgay}')
        GROUP BY od.IdProduct,od.Number";
        $this->Query($sql);
        return $this->fetchAssoc();
    }
}
