<?php

namespace Model;

class AdminService extends DB implements IModel {

    public function __construct() {
        $tableName = table_prefix . "admin";
        parent::__construct($tableName);
    }

    public function Delete($id) {

    }

    public function GetAllPT($name, &$total, $indexPage = 1, $pageNumber = 10) {
        $where = $this->Like(["Username", "Name", "Email", "Phone"], $name);
        return $this->SelectPT($where, $indexPage, $pageNumber, $total);
    }

    public function GetById($id) {

    }

    public function TotalOrder($saler) {
        $where = "`Saler` = '{$saler}'  Groups By `Saler` ";
        return $this->SelectCount($where);
    }

    public function Post($model) {

    }

    public function PutWidthArray($arrayModel) {
        $userName = $arrayModel["Username"];
        $modelDetail = $this->GetByUsername($userName);
        $modelDetail["Name"] = isset($arrayModel["Name"]) ? $arrayModel["Name"] : $modelDetail["Name"];
        $modelDetail["Phone"] = isset($arrayModel["Phone"]) ? $arrayModel["Phone"] : $modelDetail["Phone"];
        $modelDetail["Email"] = isset($arrayModel["Email"]) ? $arrayModel["Email"] : $modelDetail["Email"];
        $modelDetail["NgaySinh"] = isset($arrayModel["NgaySinh"]) ? $arrayModel["NgaySinh"] : $modelDetail["NgaySinh"];
        $modelDetail["GioiTinh"] = isset($arrayModel["GioiTinh"]) ? $arrayModel["GioiTinh"] : $modelDetail["GioiTinh"];
        $this->Put($modelDetail);
    }

    public function Put($model) {
        $where = "`Username` = '{$model["Username"]}'";
        return $this->Update($model, $where);
    }

    public static function ToSelect() {

    }

    public static function CheckLogin($FormLogin) {
        $admin = new Admin();
        return $admin->CheckLogin($FormLogin["Username"], $FormLogin["Password"], FALSE);
    }

    public function GetByUsername($userName) {
        $where = " `Username` ='{$userName}' ";
        return $this->SelectRow($where);
    }

}
