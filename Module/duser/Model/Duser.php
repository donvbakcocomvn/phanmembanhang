<?php

namespace Module\duser\Model;

class Duser extends \Model\Admin {

    const Superadmin = -1;
    const admin = 0;
    const ChinhSuaNoiDung = 1;
    const QuanLySanPham = 2;
    const QuanLyDonHang = 3;
    const QuanLyThanhToan = 4;
    const CongTacVien = 5;

//    const ChinhSuaNoiDung = 1;

    public static $TableName = table_prefix . "admin";
    public $Username;
    public $Password;
    public $Random;
    public $Name;
    public $Email;
    public $Phone;
    public $Address;
    public $Note;
    public $Groups;

    function __construct($NhanVien = NULL) {
        parent::__construct();
        if ($NhanVien) {
            if (!is_array($NhanVien)) {
                $id = $NhanVien;
                $NhanVien = $this->GetByUsername($id);
            }
            $this->Username = isset($NhanVien['Username']) ? $NhanVien['Username'] : '';
            $this->Password = isset($NhanVien['Password']) ? $NhanVien['Password'] : '';
            $this->Random = isset($NhanVien['Random']) ? $NhanVien['Random'] : '';
            $this->Name = isset($NhanVien['Name']) ? $NhanVien['Name'] : '';
            $this->Email = isset($NhanVien['Email']) ? $NhanVien['Email'] : "";
            $this->Phone = isset($NhanVien['Phone']) ? $NhanVien['Phone'] : "";
            $this->Address = isset($NhanVien['Address']) ? $NhanVien['Address'] : "";
            $this->Note = isset($NhanVien['Note']) ? $NhanVien['Note'] : "";
            $this->Groups = isset($NhanVien['Groups']) ? $NhanVien['Groups'] : "";
        }
    }

    function CheckLogin($Username, $Password, $isobj = true) {
        return parent::CheckLogin($Username, $Password, $isobj);
    }

    public function CreatePassword($pass, $random) {
        return sha1($pass . $random);
    }

    function Admins($isobj = true) {
        return parent::Admins($isobj);
    }

    static function CurentUsernameAdmin($isobj = true) {
        if ($isobj)
            return new \Module\duser\Model\Duser($_SESSION[QuanTri]);
        return $_SESSION[QuanTri];
    }

    public function CreateUser($user) {
        $sql = sprintf("INSERT INTO `" . table_prefix . "admin`"
                . "(`Username`, `Password`, `Random`, `Name`, `Email`, `Phone`, `Address`, `Note`, `Groups`, `Urlimages`) VALUES"
                . " ('%s','%s','%s','%s','%s','%s','%s','%s','%s','%s')", $user["Username"], $user["Password"], $user["Random"], $user["Name"], $user["Email"], $user["Phone"], $user["Address"], $user["Note"], $user["Groups"], $user["Urlimages"]
        );
        $this->Query($sql);
        return $this->SaveInsert();
    }

    public function MapArray($POST) {

    }

    public function UpdateInfor($username) {
        $sql = sprintf("UPDATE `" . table_prefix . "admin` SET "
                . "`Name` = '%s', "
                . "`Email` = '%s', "
                . "`Phone` = '%s', "
                . "`Address` = '%s', "
                . "`Note` = '%s', "
                . "`Groups` = '%s', "
                . "`Urlimages` = '%s' WHERE `Username` = '%s'", $username["Name"]
                , $username["Email"]
                , $username["Phone"]
                , $username["Address"]
                , $username["Note"]
                , $username["Groups"]
                , $username["Urlimages"]
                , $username["Username"]
        );
        $this->Query($sql);
        return $this->SaveInsert();
    }

    public static function SetUsernameAdmin($username) {
        $_SESSION[QuanTri] = $username;
    }

    public function UpdatePassword($username) {
        return $this->update(table_prefix . "admin", $username, "`Username` = '{$username["Username"]}'");
    }

    public function ThemUser($user) {
        return $this->insert(self::$TableName, $user);
    }

    public function GetByUsername($Username) {
        $users = $this->select(self::$TableName, null, "`Username` = '{$Username}'");
        if ($users) {
            return $users[0];
        }
        return NULL;
    }

    function getGroups() {
        return [-1 => "SuperAdmin",
            "Admin",
            "Sửa Nội Dung",
            "Quản Lý Sản Phẩm",
            "Quản Lý Đơn Hàng",
            "Quản Lý Thanh Toán",
            "Cộng Tác Viên"];
    }

    function getGroupsAll() {
        return [
            ["Id" => 0, "Name" => "Admin"],
            ["Id" => 1, "Name" => "Sửa Nội Dung"],
            ["Id" => 2, "Name" => "Quản Lý Sản Phẩm"],
            ["Id" => 3, "Name" => "Quản Lý Đơn Hàng"],
            ["Id" => 4, "Name" => "Quản Lý Thanh Toán"],
            ["Id" => 5, "Name" => "Cộng Tác Viên"]
        ];
    }

    public function Groups() {
        $a = $this->getGroups();
        if (isset($a[$this->Groups]))
            return $a[$this->Groups];
        return "N/a";
    }

    public static function KiemTraQuyen($param = []) {
        return in_array($_SESSION[QuanTri]["Groups"], $param);
    }

    function ToArray() {
        $NhanVien['Username'] = $this->Username;
        $NhanVien['Name'] = $this->Name;
        $NhanVien['Email'] = $this->Email;
        $NhanVien['Phone'] = $this->Phone;
        $NhanVien['Address'] = $this->Address;
        $NhanVien['Groups'] = $this->Groups;
        return $NhanVien;
    }

}

?>
