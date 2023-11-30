<?php

namespace Module\cart\Controller;

use Common\Common;
use Model\Breadcrumb;
use Model\Response;
use Model\ThanhToan;
use Module\cart\Model\BenhNhan;
use Module\cart\Model\Cart;
use Module\cart\Model\Order;
use Module\duser\Model\Duser;

class vieworder extends \Controller_backend {

    public $Product;
    public $Cart;
    public $Param;
    public $Order;
    public $Breadcrumb;

    function __construct() {

        if(Duser::KiemTraQuyen([Duser::admin, Duser::NhanVien, Duser::Superadmin, Duser::QuanLy]) == FALSE) {
            exit("Bạn không có quyền");
            // return;
        }
        parent::__construct();

        $this->Breadcrumb = new Breadcrumb();
        $this->Param = $this->getParam();
        $this->Order = new \Module\cart\Model\Order();
        $this->Bread[] = [
            "title" => "Đơn hàng",
            "link" => ""
        ];
        $this->Product = new \Model\Products();
        $this->Cart = new \Module\cart\Model\Cart();
    }

    function index() {
        $this->Bread[] = [
            "title" => "Danh sách đơn hàng",
            "link" => ""
        ];
        $this->Breadcrumb->setBreadcrumb($this->Bread);
        $this->ViewThemeModule("", "", "");
    }

    public function dongbodonhang() {
        //
        $order = new Order();
        // danh sách order chưa đủ thông tin
        $orders = $order->GetOrderError();
        // var_dump($orders);
        foreach($orders as $item) {
            $benhNhan = new BenhNhan();
            $bn = $benhNhan->GetBySothe($item["Name"]);
            $_order = new Order();
            // var_dump($bn["Tiensubenh"]);
            $item["KhoaBenh"] = $bn["Tiensubenh"] ?? "";
            $item["MaBenhNhan"] = $bn["Nhommau"] ?? "";
            // var_dump($item);
            $_order->updateOrder($item);
        }
    }

    public function install() {
        $modelBenhNhan = new BenhNhan();
        $modelBenhNhan->CreateViewKhoaBenh();
    }
    public function DongboAjax() {

        $_order = new Order();
        $cardIds = $_order->GetDanhSachMaThe();
        foreach($cardIds as $key => $value) {
            // var_dump($value);
            $thanhToan = new ThanhToan();
            $benhNhan = $thanhToan->GetTTBenhnhan($value["Name"]);
            // var_dump($benhNhan);
            $_benhNhan = new BenhNhan();
            $_benhNhanDetail = $_benhNhan->GetBySotheMaBN($benhNhan["Sothe"], $benhNhan["MaBN"]);
            if($_benhNhanDetail == null) {
                $_benhNhan->Post($benhNhan);
            } else {
                $benhNhan["NumberCheck"] += 1;
                $_benhNhan->Put($benhNhan);
            }
            echo $benhNhan["MaBN"];
            flush();
        }
    }
    public function DongboAjaxById() {

        // var_dump($value);
        $maThe = Common::CheckInput($_GET["Id"]);
        $thanhToan = new ThanhToan();
        $benhNhan = $thanhToan->GetTTBenhnhan($maThe);
        $_benhNhan = new BenhNhan();
        $_benhNhanDetail = $_benhNhan->GetBySotheMaBN($benhNhan["Sothe"], $benhNhan["MaBN"]);
        if($_benhNhanDetail == null) {
            $_benhNhan->Post($benhNhan);
        } else {
            $benhNhan["NumberCheck"] += 1;
            $_benhNhan->Put($benhNhan);
        }
        echo json_encode($benhNhan);
        flush();
        // echo $benhNhan["MaBN"];
    }

    public function GetDongboAjax() {
        header('Access-Control-Allow-Origin: *');
        header('Content-Type: application/json; charset=utf-8');
        $_order = new Order();
        $cardIds = $_order->GetDanhSachMaThe();
        header("");
        echo json_encode($cardIds);
    }

    public function dongbo() {
        $_benhNhan = new BenhNhan();
        $indexPage = $_GET["page"] ?? 1;
        $khoabenh = $_GET["khoabenh"] ?? "";
        $mathe = $_GET["SoThe"] ?? "";
        $pageNumber = $_GET["number"] ?? 20;
        $params["page"] = $indexPage;
        $params["khoabenh"] = $khoabenh;
        $params["name"] = $mathe;
        $params["number"] = $pageNumber;

        $items = $_benhNhan->GetItems($params, $indexPage, $pageNumber, $total);
        $totalPage = ceil($total / $pageNumber);
        $this->ViewThemeModule(
            [
                "totalPage" => $totalPage,
                "Items" => $items,
                "total" => $total,
                "params" => $params
            ],
            "",
            ""
        );
    }

    function googleform() {
        $this->Breadcrumb->setBreadcrumb($this->Bread);
        $this->ViewThemeModule("", "", "");
    }

    function dsorderstatus() {
        $this->param[0] = intval($this->param[0]);
        $this->param[0] = max(1, $this->param[0]);
        $this->param[1] = intval($this->param[1]);
        $this->param[1] = max(0, $this->param[1]);
        $a = $this->Order->ordersStatusPt($this->param[0], 15, $this->param[1], $sum);
        if($a) {
            echo $this->Order->_encode($a);
            return;
        }
        echo "[]";
    }

    function dsorder() {
        $sum = 0;
        $this->param[0] = intval($this->param[0]);
        $this->param[0] = max(1, $this->param[0]);
        $a = $this->Order->ordersPt($this->param[0], 15, $sum);
        echo $this->Order->_encode($a);
    }

    function dsorderifame() {
        $this->ViewThemeModule("", "", "ifame");
    }

    function orderdetail() {
        if(isset($_POST["delete"])) {
            if($_POST["huy"] == "HUY") {
                $_Order = $this->Order->orderbyid($_POST["CodeOrder"]);
                $_Order = $_Order[0];
                $_Order["Status"] = $_POST["Status"];
                $_Order["Note"] = "[".$_SESSION[QuanTri]["Username"]."] Hủy đơn hàng :".date("Y-m-d H:i:s")." <br>".$_POST["note"]."<br>_______<br>".$_Order["Note"];
                $this->Order->updateOrder($_Order);
                $this->Order->_header("/cart/vieworder/dsorderifame");
            }
            $error = new \Model\Error();
            $error->setError("Bạn hãy nhập 'HUY' để hủy đơn hàng.", "danger");
        }
        if(isset($_POST["save"])) {
            $_Order = $this->Order->orderbyid($_POST["CodeOrder"]);
            $_Order = $_Order[0];
            $_Order["Status"] = $_POST["Status"];
            $stus = $this->Order->getStatus($_Order["Status"]);
            $_Order["Note"] = "[".$_SESSION[QuanTri]["Username"]."] $stus :".date("Y-m-d H:i:s")." <br>".$_POST["note"]."<br>_______<hr><br>".$_Order["Note"];
            $this->Order->updateOrder($_Order);
            $this->Order->_header("/cart/vieworder/dsorderifame");
            $error = new \Model\Error();
            $error->setError("Bạn hãy nhập 'HUY' để hủy đơn hàng.", "danger");
        }
        $this->ViewThemeModule("", "", "ifame");
    }

    function viewordersearch($param) {
        $a = $this->Order->ordersByKey($this->param[0]);
        echo $this->Order->_encode($a);
    }

    function orderbystatus() {
        $this->ViewThemeModule("", "", "ifame");
    }

    function resetSLSPdonhang() {
        $idorder = $this->getParam()[0];
        $order = new Order($idorder);
        $_Product = new \Model\Products();
        $producs = $order->ProductsByDonHang();
        foreach($producs as $orderdetail) {
            $modelProduct = $_Product->ProductsByID($orderdetail["IdProduct"], FALSE);
            $modelProduct["Number"] += $orderdetail["Number"];
            $_Product->EditProducts($modelProduct);
        }
        \lib\Common::ToUrl($_SERVER["HTTP_REFERER"]);
    }


    public function thanhtoan() {

        if(isset($_POST["thanhToan"])) {
            $thanhToan = $_POST["thanhToan"];
            $_order = new Order($thanhToan["MaDonHang"]);
            $MaDonHang = $thanhToan["MaDonHang"];
            $modelThanhToan = new ThanhToan();
            $id = $_order->Id;
            $result = $modelThanhToan->InsertLSGiaodich($thanhToan["MaThe"], $_order->TotalPrice, "{$id}");
            if($result) {
                // var_dump($resul);
                $result->InsertLSGiaodichResult;
                if($result->InsertLSGiaodichResult == 1) {

                    $order = new Order();
                    $order->updateOrderStatus($MaDonHang, Order::DaThuTien);
                    $order->updateKhachHang($MaDonHang, $thanhToan["MaThe"]);
                    sleep(1);
                    Common::ToUrl("/cart/thanhcong/index/".$MaDonHang."/");
                    exit();
                } else {
                    // Số dư không đủ để thanh toán
                    Common::ToUrl("/cart/thanhcong/fail/{$result->InsertLSGiaodichResult}/");
                    exit();
                }
            } else {
                // Số dư không đủ để thanh toán
                Common::ToUrl("/cart/thanhcong/fail/{$result->InsertLSGiaodichResult}/");
                exit();
            }
        }

        $this->ViewThemeModule("", "", "");
    }

    public function DongBoKhoaBenh() {
        $id = $this->getParam()[0];
        $benhnhan = new BenhNhan($id);
        if($benhnhan->Sothe) {
            // cập nhật khoa bệnh
        }
    }
    public function xoabenhnhan() {
        $soThe = $this->getParam()[0];
        $maBN = $this->getParam()[1];
        $benhnhan = new BenhNhan();
        $benhnhan->DeleteBN($soThe, $maBN);
        Common::toUrl($_SERVER["HTTP_REFERER"]);
    }

    public function benhnhan() {

        if(isset($_POST["UpdateKhoa"])) {
            $Sothe = $_POST["Sothe"] ?? "";
            $KhoaBenh = $_POST["KhoaBenh"] ?? "";
            $order = new Order();
            $order->UpdateKhoaOrder($Sothe, $KhoaBenh);
        }

        $id = $this->getParam()[0];
        $index = $_REQUEST["index"] ?? 1;
        $index = max($index, 1);
        $number = $_REQUEST["number"] ?? 10;
        $number = max(0, $number);
        $benhnhan = new BenhNhan($id);
        $repon = new Response();
        $total = 0;
        $repon->rows = $benhnhan->Order($index, $number, $total);
        $repon->items = (array)$benhnhan;
        $repon->index = $index;
        $repon->number = $number;

        $repon->totalPage = ceil($total / $number);
        $repon->totalrows = $total;
        $repon->status = Response::OK;
        $this->ViewThemeModule($repon->ToAray(), "", "");
    }
}