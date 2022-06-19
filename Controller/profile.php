<?php

class Controller_profile extends Application {

    public function __construct() {
        $_SESSION[UserLogin] = isset($_SESSION[UserLogin]) ? $_SESSION[UserLogin] : null;
        if ($_SESSION[UserLogin] == null) {
            \Common\Common::toUrl("/dang-nhap.html");
            exit();
        }
        Model_ViewTheme::set_viewthene("thanhminhduc");
    }

    function index() {
        Model_Seo::$Title = "Profile";
        Model_Seo::$des = "Profile";
        Model_Seo::$key = "Profile";
        return $this->ViewTheme([], null, "user");
    }

    function user() {
        $user = \Model\Profile::GetCurentUser();
        $user["NgaySinh"] = date("Y-m-d", strtotime($user["NgaySinh"]));
        $user["Thang"] = intval(date("m", strtotime($user["NgaySinh"])));
        $user["Ngay"] = intval(date("d", strtotime($user["NgaySinh"])));
        $user["Nam"] = intval(date("Y", strtotime($user["NgaySinh"])));
        \lib\APIs::Json_Encode_ToString($user);
    }

    function logout() {
        $_SESSION[UserLogin] = null;
        Common\Common::toUrl("/profile/index");
        exit();
    }

    function save() {
        try {
            $admin = new Model\AdminService();
            $userService = \Model\Profile::GetCurentUser();
            $arrayModel["Name"] = $_POST["Name"];
            $arrayModel["Username"] = $userService['Username'];
            $arrayModel["Phone"] = $_POST["Phone"];
            $arrayModel["GioiTinh"] = intval($_POST["GioiTinh"]);
            $arrayModel["NgaySinh"] = date("Y-m-d", strtotime($_POST["NgaySinh"]));
            var_dump($arrayModel["NgaySinh"]);
            $email = isset($_POST["Email"]) ? Model\CheckInput::Email($_POST["Email"]) : null;
            if ($email) {
                $arrayModel["Email"] = $email;
            }
            if ($arrayModel["Email"] == null) {
                throw new Exception("Email Không Hợp Lệ");
            }
            $admin = new Model\AdminService();
            $admin->PutWidthArray($arrayModel);
            $_SESSION[UserLogin] = $admin->GetByUsername($userService['Username']);
        } catch (Exception $exc) {
            echo $exc->getMessage();
        }
    }

}
