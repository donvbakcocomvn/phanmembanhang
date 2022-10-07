<?php

namespace Module\cart\Model;

use Common\Common;
use Model\ThanhToan;
use Model_OptionsService;


/**
 * Description of Order
 *
 * @author MSI
 */
class Order extends \Model\Database
{

    //put your code here

    public $Id;
    public $Name;
    public $MaBenhNhan;
    public $TotalPrice;
    public $CodeOrder;
    public $Email;
    public $Phone;
    public $KhoaBenh;
    public $Status;
    public $Note;
    public $Tinh;
    public $Huyen;
    public $Address;
    public $NgayTao;
    public $NgaySinh;
    public $Saler;

    const Huy = 0;
    const ThatBai = 1;
    const ThanhCong = 2;
    const DangXuLy = 3;
    const MoiDat = 4;
    const DaThuTien = 5;
    const DaNopTienVeCty = 6;
    const XacNhanDonHang = 7;

    function __construct($order = null)
    {
        parent::$Tablename  = table_prefix . "order";
        parent::__construct();
        if ($order) {
            if (!is_array($order)) {
                $id = $order;
                $order = $this->orderbyid($id)[0] ?? null;
                if ($order == null) {
                    $order = $this->orderbycode($id)[0] ?? null;
                }
            }
            if ($order) {
                $this->Id = $order["Id"];
                $this->Name = $order["Name"];
                $this->MaBenhNhan = $order["MaBenhNhan"];
                $this->TotalPrice = $order["TotalPrice"];
                $this->CodeOrder = $order["CodeOrder"];
                $this->Email = $order["Email"];
                $this->Phone = $order["Phone"];
                $this->KhoaBenh = $order["KhoaBenh"];
                $this->Status = $order["Status"];
                $this->Note = $order["Note"];
                $this->Tinh = $order["Tinh"];
                $this->Huyen = $order["Huyen"];
                $this->Address = $order["Address"];
                $this->NgayTao = $order["NgayTao"];
                $this->Saler = $order["Saler"];
                $this->NgaySinh = $order["NgaySinh"];
            }
        }
    }

    public function GetIdCard()
    {
        $sql = "SELECT `Name` FROM `" . table_prefix . "order` WHERE 1=1 GROUP BY `Name`";
        $this->Query($sql);
        return $this->fetchAssoc();
    }

    static public function CreateCode()
    {
        $date = date("Y-m-d");
        $Order  = new Order();
        $count = $Order->SelectCount("where `NgayTao` LIKE '{$date}%'");
        return date("ymd", time()) . Common::NumberToStringFomatZero($count + 1, 4);
    }
    public function KhoaBenh()
    {
        $modelOption = new  Model_OptionsService();
        return new  Model_OptionsService($modelOption->GetByKeyValue($this->KhoaBenh, "khoa"));
    }
    function NgayDat()
    {
        return date("d-m-Y H:i", strtotime($this->NgayTao));
    }

    public function UpdateTongTien($orderCode)
    {
        $orderDetail = $this->orderDetailbyid($orderCode);
        $tongTien = 0;
        foreach ($orderDetail as   $value) {
            $thanhTien = $value["Price"] * $value["Number"];
            $tongTien += $thanhTien;
        }
        $order = $this->orderbyid($orderCode)[0];
        $order["TotalPrice"] = $tongTien;
        return $this->updateOrder($order);
    }

    function Status($idStatus = null)
    {
        $a = $this->listStatus();
        if ($idStatus == null)
            return $a[$this->Status];
        return $a[$idStatus];
    }

    function createOrder($Order)
    {
        $this->insert(table_prefix . "order", $Order);
    }

    public function GetKhaoBenh()
    {
        return $this->select(table_prefix . "order", [], '1 Group by `KhoaBenh`');
    }

    function updateOrder($Order)
    {
        // var_dump($Order);
        return $this->update(table_prefix . "order", $Order, "`CodeOrder` = '{$Order["CodeOrder"]}'");
    }
    function updateOrderStatus($CodeOrder, $status)
    {
        $Order = ["Status" => $status];
        return $this->update(table_prefix . "order", $Order, "`CodeOrder` = '{$CodeOrder}'");
    }
    function updateKhachHang($CodeOrder, $MaThe)
    {
        $thanhToan = new ThanhToan();
        $ThongTinBenhNhan =  $thanhToan->GetTTBenhnhan($MaThe);
        $Order = ["Name" => $MaThe];
        $Order["MaBenhNhan"] = $ThongTinBenhNhan["Nhommau"];
        $Order["KhoaBenh"] = $ThongTinBenhNhan["Tiensubenh"];
        return $this->update(table_prefix . "order", $Order, "`CodeOrder` = '{$CodeOrder}'");
    }

    function createOrderDetail($OrderDetail)
    {
        return $this->insert(table_prefix . "orderdetail", $OrderDetail);
    }

    function orders()
    {
        return $this->select(table_prefix . "order", [], '1');
    }

    function ordersPt($page = 1, $number = 20, &$sun)
    {
        $sun = 10;
        $page = intval($page);
        $page = max($page, 1);
        $page = ($page - 1) * $number;

        $d = $this->select(table_prefix . "order", [], " 1   ORDER BY `Id` DESC");
        $sun = count($d);
        return $this->select(table_prefix . "order", [], "1  ORDER BY `Id` DESC limit {$page},{$number}");
    }

    function ordersByKey($key = "")
    {
        return $this->select(table_prefix . "order", ["Id", 'Name', "TotalPrice", "CodeOrder", "Email", "Phone", "Status"], " `CodeOrder` like '%{$key}%' || `Email` like '%{$key}%' || `Phone` like '%{$key}%' || `Email` like '%{$key}%' ");
    }

    function ordersStatusPt($page = 1, $number = 20, $status = 1, &$sun)
    {
        $sun = 0;
        $page = intval($page);
        $page = max($page, 1);
        $page = ($page - 1) * $number;
        $d = $this->select(table_prefix . "order", ["Id"], " `Status` = '{$status}'   ORDER BY `Id` DESC");
        if ($d)
            $sun = count($d);
        return $this->select(table_prefix . "order", [], " `Status` = '{$status}'  ORDER BY `Id` DESC limit {$page},{$number}");
    }

    function ordersPt1()
    {
        return $this->select(table_prefix . "order", [], '1');
    }

    function orderbyid($id)
    {
        if (is_numeric($id)) {
            return $this->select(table_prefix . "order", [], " `Id` = '{$id}' ");
        }
        return null;
    }
    function orderbycode($id)
    {
        return $this->select(table_prefix . "order", [], "`CodeOrder` = '{$id}'");
    }

    function orderDetailbyid($id)
    {
        return $this->select(table_prefix . "orderdetail", [], "`CodeOrder` = '{$id}'");
    }

    function listStatus()
    {
        $DSStatus = [
            self::Huy => "Hủy",
            self::DangXuLy => "Đang xử lý",
            self::MoiDat => "Mới Đặt",
            self::DaThuTien => "Đã Thanh Toán",
            self::XacNhanDonHang => "Xác Nhận Đơn Hàng",
            self::DaNopTienVeCty => "Đã Nộp Tiền Về Công Ty"
        ];
        return $DSStatus;
    }

    function getStatus($id)
    {
        $DSStatus = $this->listStatus();
        return $DSStatus[$id];
    }

    public function ProductsByDonHang()
    {
        return $this->select(table_prefix . "orderdetail", [], "`CodeOrder` = '{$this->CodeOrder}'");
    }

    public function Saler()
    {
        $admin = new \Module\duser\Model\Duser();
        $sale = $admin->GetByUsername($this->Saler);
        return new \Module\duser\Model\Duser($sale);
    }

    function ToArrayMode()
    {
        $order["Id"] = $this->Id;
        $order["Name"] = $this->Name;
        $order["TotalPrice"] = $this->TotalPrice;
        $order["CodeOrder"] = $this->CodeOrder;
        $order["Email"] = $this->Email;
        $order["Phone"] = $this->Phone;
        $order["Status"] = $this->Status;
        $order["Note"] = $this->Note;
        $order["Tinh"] = $this->Tinh;
        $order["Huyen"] = $this->Huyen;
        $order["Saler"] = $this->Saler;
        return $order;
    }

    function ToArray()
    {
        if ($this->Status == self::DaThuTien) {
            $tt =  new ThanhToan();
            $benhNhan =  new BenhNhan($this->Name);
            // them the moi
            if ($benhNhan->MaBN == null) {
                $tt =  new ThanhToan();
                $ttbn = $tt->GetTTBenhnhan($this->Name);
                if ($ttbn) {
                    $name = $ttbn;
                    $benhNhan =  new BenhNhan();
                    $benhNhan->Post($ttbn);
                }
            } else {
                $name = $benhNhan->ToArray();
            }
        }
        $order["Id"] = $this->Id;
        $order["Name"] = $name["HotenBN"] ?? $this->Name;
        $order["KhoaBenh"] = $this->KhoaBenh()->Name;
        $order["MaBenhNhan"] = $this->MaBenhNhan;
        $order["TotalPrice"] = intval($this->TotalPrice);
        $order["TotalPriceVND"] = \lib\Common::MoneyFomat($this->TotalPrice);
        $order["CodeOrder"] = $this->CodeOrder;
        $order["Email"] = $this->Email;
        $order["Phone"] = $this->Phone;
        $order["Status"] = $this->Status;
        $order["statusName"] = $this->Status();
        $order["Note"] = $this->Note;
        $order["Address"] = strip_tags($this->DiaChi());
        $order["Tinh"] = $this->Tinh;
        $order["Huyen"] = $this->Huyen;
        $order["NgayTao"] = \lib\Common::DateFomat($this->NgayTao);
        $order["Saler"] = $this->Saler;
        $order["SalerInfor"] = $this->Saler();
        return $order;
    }

    public function GetBySale($params, &$total, $indexPage, $pageNumber)
    {
        $OredrService = new OrderService();
        return $OredrService->GetOrderBySaler($params, $total, $indexPage, $pageNumber);
    }

    public function listStatusAll()
    {
        return [
            ["Id" => self::MoiDat, "Name" => "Mới Đặt"],
            // ["Id" => self::XacNhanDonHang, "Name" => "Xác Nhận Đơn Hàng"],
            // ["Id" => self::DangXuLy, "Name" => "Đang xử lý"],
            ["Id" => self::DaThuTien, "Name" => "Đã Thu Tiền"],
            // ["Id" => self::DaNopTienVeCty, "Name" => "Đã Nộp Tiền Về Công Ty"], ["Id" => self::Huy, "Name" => "Hủy"]
        ];
    }

    public function listStatusSaler()
    {
        return [
            ["Id" => self::MoiDat, "Name" => "Mới Đặt"],
            ["Id" => self::XacNhanDonHang, "Name" => "Xác Nhận Đơn Hàng"],
            ["Id" => self::DangXuLy, "Name" => "Đang xử lý"],
            ["Id" => self::Huy, "Name" => "Hủy"]
        ];
    }

    public function Tinh()
    {
        return new \Model\TinhThanh\TinhThanh($this->Tinh);
    }

    public function Huyen()
    {
        return new \Model\TinhThanh\TinhThanh($this->Huyen);
    }

    public function DiaChi()
    {
        return sprintf("%s,%s,%s", $this->Address, $this->Huyen()->Name, $this->Tinh()->Name);
    }

    public function ChekStauts($param0)
    {
        return in_array($this->Status, $param0);
    }

    public function ToArrayDeTail()
    {
        $order["Id"] = $this->Id;
        $order["Name"] = $this->Name;

        $order["statusName"] = $this->Status();

        $order["CodeOrder"] = $this->CodeOrder;
        $order["Email"] = $this->Email;
        $order["Phone"] = $this->Phone;
        $order["Status"] = $this->Status;
        $order["Note"] = $this->Note;
        $order["Address"] = strip_tags($this->DiaChi());
        $order["Tinh"] = $this->Tinh;
        $order["Huyen"] = $this->Huyen;
        $order["NgayTao"] = \lib\Common::DateFomat($this->NgayTao);
        $order["Saler"] = $this->Saler;
        $order["SalerInfor"] = $this->Saler()->ToArray();
        $orderDetail = $this->orderDetailbyid($this->CodeOrder);
        $tongTien = 0;

        $orderDetail = array_map(function ($item) {
            $idproduct = $item["IdProduct"];
            $ps = new \Model\Products($idproduct);
            $item["Number"] = intval($item["Number"]);
            $item["Price"] = intval($item["Price"]);
            $item["PriceVND"] = \Common\Common::MoneyFomat($item["Price"]);
            $item["ThanhTien"] = $item["Price"] * $item["Number"];
            $item["ThanhTienVND"] = \Common\Common::MoneyFomat($item["Price"] * $item["Number"]);
            $item["Product"] = $ps->Obj2Api();
            return $item;
        }, $orderDetail);
        $order["TotalPrice"] = intval($this->TotalPrice);
        $order["TotalPriceVND"] = \lib\Common::MoneyFomat($this->TotalPrice);
        $order["OrderDetail"] = $orderDetail;
        return $order;
    }

    public function BenhNhan()
    {
        return new BenhNhan($this->MaBenhNhan);
    }
}
