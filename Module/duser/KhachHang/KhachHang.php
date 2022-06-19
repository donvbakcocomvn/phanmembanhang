<?php

namespace Module\duser\KhachHang;

class KhachHang extends \Model\DB implements \Model\IModel {

    public $Id;
    public $Username;
    public $Phone;
    public $Email;
    public $Tinh;
    public $Huyen;
    public $DiaChi;
    public $Password;

    public function __construct($kh = null) {
        parent::$TableName = table_prefix . "khachhang";
        parent::__construct();
        if (!is_array($kh)) {
            $id = $kh;
            $kh = $this->GetById($id);
        }
        if ($kh) {
            $this->Id = isset($kh["Id"]) ? $kh["Id"] : null;
            $this->Username = isset($kh["Username"]) ? $kh["Username"] : null;
            $this->Phone = isset($kh["Phone"]) ? $kh["Phone"] : null;
            $this->Email = isset($kh["Email"]) ? $kh["Email"] : null;
            $this->Tinh = isset($kh["Tinh"]) ? $kh["Tinh"] : null;
            $this->Huyen = isset($kh["Huyen"]) ? $kh["Huyen"] : null;
            $this->DiaChi = isset($kh["DiaChi"]) ? $kh["DiaChi"] : null;
            $this->Password = isset($kh["Password"]) ? $kh["Password"] : null;
        }
    }

    public function Delete($id) {

    }

    public function GetByPhone($phone) {
        $where = "`Phone` = '$phone'";
        return $this->SelectRow($where);
    }

    public function GetByEmail($email) {
        $where = "`Email` = '$phone'";
        return $this->SelectRow($where);
    }

    public function GetByUsername($username) {
        $where = "`Email` = '$username'";
        return $this->SelectRow($where);
    }

    public function GetAllPT($name, &$total, $indexPage = 1, $pageNumber = 10) {
        $where = "`Name`";
        return $this->SelectPT($where, $indexPage, $pageNumber, $total);
    }

    public function GetById($id) {
        $where = "`Id` = '{$id}'";
        return $this->SelectRow($where);
    }

    public function Post($model) {
        return $this->Insert($model);
    }

    public function Put($model) {
        return $this->Update($model);
    }

    public static function ToSelect() {

    }

}
