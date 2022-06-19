<?php

namespace Model;

class UsersService extends \Model\DB {

    public $Id;
    public $Name;
    public $Alias;
    public $RandomCode;
    public $Username;
    public $isActive;
    public $Password;
    public $GoogleCode;
    public $Email;
    public $Phone;
    public $Role;
    public $TinhThanh;
    public $QuanHuyen;
    public $PhuongXa;
    public $DiaChi;

    public function __construct($users = null) {
        parent::$TableName = table_prefix . "users";
        parent::__construct();
        if ($users) {
            if (!is_array($users)) {
                $id = $users;
                $users = $this->GetById($id);
                if ($users == null) {
                    $users = $this->GetByUserName($id);
                }
            }
        }

        $this->Id = isset($users["Id"]) ? $users["Id"] : null;
        $this->Name = isset($users["Name"]) ? $users["Name"] : null;
        $this->Name = isset($users["Name"]) ? $users["Name"] : null;
        $this->Alias = isset($users["Alias"]) ? $users["Alias"] : null;
        $this->RandomCode = isset($users["RandomCode"]) ? $users["RandomCode"] : \lib\guid::guidV4();
        $this->isActive = isset($users["isActive"]) ? $users["isActive"] : null;
        $this->Username = isset($users["Username"]) ? $users["Username"] : null;
        $this->Password = isset($users["Password"]) ? $users["Password"] : null;
        $this->GoogleCode = isset($users["GoogleCode"]) ? $users["GoogleCode"] : null;
        $this->Email = isset($users["Email"]) ? $users["Email"] : null;
        $this->Phone = isset($users["Phone"]) ? $users["Phone"] : null;
        $this->Role = isset($users["Role"]) ? $users["Role"] : null;
        $this->TinhThanh = isset($users["TinhThanh"]) ? $users["TinhThanh"] : null;
        $this->QuanHuyen = isset($users["QuanHuyen"]) ? $users["QuanHuyen"] : null;
        $this->PhuongXa = isset($users["PhuongXa"]) ? $users["PhuongXa"] : null;
        $this->DiaChi = isset($users["DiaChi"]) ? $users["DiaChi"] : null;
    }

    public function Delete($id) {
        $user = $this->SelectById($id);
        if ($user) {
            $user ["isActive"] = 0;
            $this->Update($user);
        }
    }

    public function GetAllPT($name, &$total, $indexPage = 1, $pageNumber = 10) {

    }

    public function GetById($id) {
        return $this->SelectById($id);
    }

    public function Post($model) {
        return $this->Insert($model);
    }

    public function ToArrayModel() {
        return [
            "Id" => $this->Id,
            "Name" => $this->Name,
            "Alias" => $this->Alias,
            "isActive" => $this->isActive,
            "RandomCode" => $this->RandomCode,
            "Username" => $this->Username,
            "Password" => $this->Password,
            "GoogleCode" => $this->GoogleCode,
            "Email" => $this->Email,
            "Phone" => $this->Phone,
            "TinhThanh" => $this->TinhThanh,
            "QuanHuyen" => $this->QuanHuyen,
            "PhuongXa" => $this->PhuongXa,
            "DiaChi" => $this->DiaChi
        ];
    }

    public function ToArray() {
        return [
            "Id" => $this->Id,
            "Name" => $this->Name,
            "Alias" => $this->Alias,
            "isActive" => $this->isActive,
            "RandomCode" => $this->RandomCode,
            "Username" => $this->Username,
            "Password" => $this->Password,
            "GoogleCode" => $this->GoogleCode,
            "Email" => $this->Email,
            "Phone" => $this->Phone,
            "TongTien" => $this->TongTien(),
            "TongTienVND" => \Common\Common::MoneyFomat($this->TongTien()),
            "TinhThanh" => $this->TinhThanh,
            "QuanHuyen" => $this->QuanHuyen,
            "PhuongXa" => $this->PhuongXa,
            "DiaChi" => $this->DiaChi
        ];
    }

    /**
     * Sửa Tài Khoản
     * $model Thông tin tài khoản
     */
    public function Put($model) {
        $this->Update($model);
    }

    public static function ToSelect() {

    }

    public function Username() {
        return new UsersService($this->Username);
    }

    /**
     * Lấy tài khoản theo username
     * @param {type} parameter
     */
    public function GetByUserName($id) {
//        \Model\DB::$Debug = true;
        $where = "`Username` = '{$id}'";
        return $this->SelectRow($where);
    }

    /**
     * kiểm tra mật khẩu
     * @param {type} parameter
     */
    public function CheckPassword($inputPassword) {
        $str = $inputPassword . $this->RandomCode;
        echo $strPassword = hash("sha512", $str);
        echo "<br>";
        echo $this->Password;
        return $strPassword == $this->Password;
    }

    /**
     * Tạo mật khẩu
     * @inputPassword Mật khẩu
     * @RandomCode ramdom code
     */
    public function PasswordGenerator($inputPassword, $RandomCode) {
        $str = $inputPassword . $RandomCode;
        $strPassword = hash("sha512", $str);
        return $strPassword;
    }

    /**
     * Kiểm tra tài khoản
     * @FormLogin thông tin đang nhap [Username,Password]
     */
    public static function CheckLogin($FormLogin) {
        try {
            $FormLogin["Username"] = \Model\CheckInput::Input($FormLogin["Username"]);
            $FormLogin["Password"] = \Model\CheckInput::Input($FormLogin["Password"]);
            $userService = new UsersService($FormLogin["Username"]);
            $userService->Password . "---";

            if ($userService->Id == null) {
                throw new \Exception("Tài khoản/mật khẩu không đúng");
            }
            if ($userService->CheckPassword($FormLogin["Password"]) == false) {
                throw new \Exception("Tài khoản/mật khẩu không đúng.");
            }

            return $userService->ToArray();
        } catch (Exception $exc) {
            return null;
        }
    }

    public static function CurentUsers() {
        return new UsersService($_SESSION[UserLogin]);
    }

    public static function ResetCurentUsers() {
        $u = new UsersService($_SESSION[UserLogin]["Username"]);
        $_SESSION[UserLogin] = $u->ToArray();
    }

    public function GetByPhone($phone) {
        $where = "`Phone` = '$phone'";
        return $this->Select($where);
    }

    public function TongTien() {
        $soCai = new ledgerService();
        return $soCai->TinhTongTien($this->Id);
    }

    public function LichSuGiaoDịch($indexPage, $pageNumber, &$total) {
        $soCai = new ledgerService();
        $total = 0;
        return $soCai->GetByUserId($this->Id, $indexPage, $pageNumber, $total);
    }

}
