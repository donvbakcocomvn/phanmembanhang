<?php

use lib\APIs;
use Module\user\Model\Users\UsersService;

class Controller_apiprofile extends Controller_profile
{

    function __construct()
    {
        parent::__construct();
    }

    static function GetCurentUser()
    {
        $_SESSION[UserLogin] = isset($_SESSION[UserLogin]) ? $_SESSION[UserLogin] : null;
        return $_SESSION[UserLogin];
    }

    function GetLichSuGD()
    {
        $usersServie = UsersService::CurentUsers();
        $total = 0;
        $dataAray = $usersServie->LichSuGiaoDịch(1, 10, $total);
        $dataAray = array_map(function ($item) {
            $item["PriceVND"] = Common\Common::MoneyFomat($item["Price"]);
            return $item;
        }, $dataAray);
        $data["data"] = $dataAray;
        APIs::Json_Encode_ToString($data);
    }

    function Donhang()
    {
        try {
            $apiRes = new Model\modelResApi();
            $profile = new \Model\Profile();
            $params["Status"] = isset($_REQUEST["Status"]) ? $_REQUEST["Status"] : "all";
            $params["Keyword"] = isset($_REQUEST["Keyword"]) ? $_REQUEST["Keyword"] : "";
            $indexPage = isset($_REQUEST["pagesIndex"]) ? $_REQUEST["pagesIndex"] : 1;
            $pageNumber = isset($_REQUEST["pagesNumber"]) ? $_REQUEST["pagesNumber"] : 10;
            $total = 1;
            $donhang = $profile->GetDanhSachDonHang($params, $total, $indexPage, $pageNumber);
            $donhang = array_map(function ($item) {
                $order = new \Module\cart\Model\Order($item);
                $item = $order->ToArray();
                return $item;
            }, $donhang);
            $apiRes->data = $donhang;
            $apiRes->params = $params;
            $apiRes->pagesIndex = $indexPage;
            $apiRes->pagesNumber = $pageNumber;
            $apiRes->total = $total;
            $apiRes->status = Model\modelResApi::Success;
            APIs::Json_Encode_ToString($apiRes->ToArray());
        } catch (Exception $exc) {
            echo $exc->getMessage();
        }
    }

    function orderdetail()
    {
        $modelRes = new Model\modelResApi();
        $id = isset($_POST["Id"]) ? $_POST["Id"] : null;
        if ($id == null) {
            $modelRes->status = Model\modelResApi::ErrorBadRequest;
            http_response_code(Model\modelResApi::ErrorBadRequest);
        }
        $order = new \Module\cart\Model\Order($id);
        $modelRes->data = $order->ToArrayDeTail();
        APIs::Json_Encode_ToString($modelRes->ToArray());
    }

    function getActionOrder()
    {
        $oreder = new \Module\cart\Model\Order();
        $listsatus = $oreder->listStatusSaler();
        $listsatus = array_map(function ($item) {
            $item["Id"] = $item["Id"] . "";
            return $item;
        }, $listsatus);
        APIs::Json_Encode_ToString($listsatus);
    }

    function ThongKeDonHang()
    {
        $orderService = new \Module\cart\Model\OrderService();
        $params["Saler"] = self::GetCurentUser()["Username"];
        $adminService = new Model\AdminService();
        $tongDonHang = 0;
        $orderService->GetOrderBySaler($params, $tongDonHang, 1, 1);
        $a[] = [
            "BgColor" => "#0061A8",
            "Color" => "#fff",
            "Name" => "Tổng Tiền Đơn Hàng",
            "Number" => Common\Common::MoneyFomat("0"),
        ];
        $a[] = [
            "BgColor" => "#0061A8",
            "Color" => "#fff",
            "Name" => "Tổng Đơn Hàng",
            "Number" => Common\Common::NumberFomat($tongDonHang),
        ];
        APIs::Json_Encode_ToString($a);
    }
}
