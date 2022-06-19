<?php

namespace Model;

class Profile {

    public function __construct() {

    }

    static function GetCurentUser() {
        $_SESSION[UserLogin] = isset($_SESSION[UserLogin]) ? $_SESSION[UserLogin] : null;
        return $_SESSION[UserLogin];
    }

    public function GetDanhSachDonHang($params, &$total, $indexPage, $pageNumber) {
        $order = new \Module\cart\Model\Order();
        $params["Saler"] = self::GetCurentUser()["Username"];
        return $order->GetBySale($params, $total, $indexPage, $pageNumber);
    }

}
