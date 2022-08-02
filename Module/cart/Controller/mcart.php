<?php

namespace Module\cart\Controller;

class mcart extends \Controller_backend
{

    function __construct()
    {
        parent::__construct();
    }

    /**
     * tao on hàng
     * @param {type} parameter
     */
    function index()
    {
        $this->Bread[] = [
            "title" => "Tạo Đơn Hàng",
            "link" => "/backend/"
        ];
        $Bread = new \Model\Breadcrumb();
        $Bread->setBreadcrumb($this->Bread);
        $this->ViewThemeModule();
    }

    function taodonhang()
    {
        $modelOrder = new \Module\cart\Model\Order();
        $order = $_POST["Order"];
        $Order["Name"] = $order["Name"];
        $Order["TotalPrice"] = $_POST["CartsProduct"]["TotalPrice"];
        $Order["CodeOrder"] = "DH-" . date("mdHis") . rand(100, 999);
        $Order["Email"] = $order["Email"];
        $Order["Status"] = 4;
        $Order["Saler"] = $_SESSION[QuanTri]["Username"];
        $Order["Note"] = "";
        $Order["Tinh"] = $order["Tinh"];
        $Order["Huyen"] = $order["Huyen"];
        $Order["Phone"] = $order["Phone"];
        $Order["NgayTao"] = date("Y-m-d H:i:s", time());
        $Order["Address"] = $order["Duong"];
        $modelOrder->createOrder($Order);
        foreach ($_POST["CartsProduct"]["Product"] as $P) {
            $OD["Name"] = "Chi Tiết Đơn Hàng " . $Order["CodeOrder"];
            $OD["Price"] = $P["Price"];
            $OD["CodeOrder"] = $Order["CodeOrder"];
            $OD["IdProduct"] = $P["ID"];
            $OD["Number"] = $P["Number"];
            $modelOrder->createOrderDetail($OD);
        }
        echo \lib\APIs::Json_Encode($Order);
        \Module\cart\Model\Cart::clearAllCart();
    }

    function trangnoidung()
    {
        $path = \Module\cart\Model\Cart::GetPathContent(\Module\cart\Model\Cart::DatHangThanhCong);
        if (isset($_POST["DatHangThanhCong"])) {
            file_put_contents($path, $_POST["DatHangThanhCong"]);
        }
        //        $path = \Module\cart\Model\Cart::GetPathContent(\Module\cart\Model\Cart::DatHangThanhCong);
        $content = file_get_contents($path);
        $this->ViewThemeModule(["ContentPage" => $content], null, "news");
    }
    function trangdathangthatbai()
    {
        $path = \Module\cart\Model\Cart::GetPathContent(\Module\cart\Model\Cart::DatHangThatBai);
        if (isset($_POST["DatHangThatBai"])) {
            file_put_contents($path, $_POST["DatHangThatBai"]);
        }
        //        $path = \Module\cart\Model\Cart::GetPathContent(\Module\cart\Model\Cart::DatHangThanhCong);
        $content = file_get_contents($path);
        $this->ViewThemeModule(["ContentPage" => $content], null, "news");
    }

    function donhangcuatoi()
    {
        $this->Bread[] = [
            "title" => "Đơn Hàng Của Tôi",
            "link" => "/backend/"
        ];
        $Bread = new \Model\Breadcrumb();
        $Bread->setBreadcrumb($this->Bread);
        $this->ViewThemeModule([], null);
    }

    function donhangchitiet()
    {
        return $this->AViewModule([]);
    }

    function giohang()
    {
        return $this->AViewModule([]);
    }

    function thongtinkhachhang()
    {
        return $this->AViewModule([]);
    }

    public function suadonhang()
    {
        $this->ViewThemeModule();
    }
    public function suadonhangchitiet()
    {
        return $this->AViewModule([]);
    }
}
