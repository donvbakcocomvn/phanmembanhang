<?php

namespace Model;

use Module\cart\Model\BenhNhan;
use Module\cart\Model\Order as ModelOrder;


class ThongKe extends Database
{


    public function ThongKeBanHangTheoBenhNhan($TuNgay, $DenNgay)
    {
        if ($TuNgay == "" || $DenNgay == "") {
            return [];
        }
        $TuNgay = date("Y-m-d 00:00:00", strtotime($TuNgay));
        $DenNgay = date("Y-m-d 23:59:59", strtotime($DenNgay));

        $order = new ModelOrder();
        return $order->GetOrderByDateStatus($TuNgay, $DenNgay, ModelOrder::DaThuTien);
    }

    public function ThongKeBanHangTheoBenhNhanPT($param, $pageIndex, $pageNumber, &$total)
    {
        $param["fromDate"] = $param["fromDate"] ?? null;
        $param["toDate"] = $param["toDate"] ?? null;
        $param["Status"] = $param["Status"] ?? null;
        $order = new ModelOrder();
        $BenhNhan = new BenhNhan();
        $DSBenhNhan =  $BenhNhan->GetDSMaThe();
        $data = [];
        if ($DSBenhNhan) {
            foreach ($DSBenhNhan as $key => $val) {
                $DSOrderCoder = $order->ThongKeSanPhamTheoBenhNhan($val["Sothe"], $param["fromDate"], $param["toDate"]);
                if ($DSOrderCoder) {
                    foreach ($DSOrderCoder as  $k => $v) {
                        $data[] = $v;
                    }
                }
            }
        }
        return $data;
    }

    // BẢNG KÊ BÁN HÀNG CĂN TIN
    public function ThongKeBanHangCangTin($TuNgay, $DenNgay, $KhoaBenh = null, $DanhMuc = null)
    {
        if ($TuNgay == "" || $DenNgay == "") {
            return [];
        }
        $KhoaBenhSql = "";
        if ($KhoaBenh != null) {
            $KhoaBenhSql = "and o.KhoaBenh = '{$KhoaBenh}' ";
        }
        $DanhMucSql = "";
        if ($DanhMuc != null) {
            $DanhMucSql = "and p.catID = '{$DanhMuc}' ";
        }

        $TuNgay = date("Y-m-d 00:00:00", strtotime($TuNgay));
        $DenNgay = date("Y-m-d 23:59:59", strtotime($DenNgay));
        // BẢNG KÊ BÁN HÀNG CĂN TIN
        $sql = "SELECT od.IdProduct
        ,p.nameProduct
        ,p.unitPrice
        ,o.KhoaBenh
        ,p.Code
        ,od.Price
        ,SUM(od.Number) as `SoLuong` FROM `bakcodt_orderdetail` as od,`bakcodt_order` as o,`bakcodt_product` as p
        where  o.NgayTao > '{$TuNgay}' and o.NgayTao < '{$DenNgay}'
         and od.IdProduct = p.Code and od.CodeOrder = o.CodeOrder
         and o.Status = 5
         {$KhoaBenhSql} 
         {$DanhMucSql} 
        GROUP BY od.IdProduct ,o.KhoaBenh";
        $this->Query($sql);
        return $this->fetchAssoc();
    }
}
