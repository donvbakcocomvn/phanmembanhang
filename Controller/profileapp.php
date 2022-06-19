<?php

class Controller_profileapp extends Controller_profile {

    public function __construct() {
        parent::__construct();
    }

    function index() {
        Model_Seo::$Title = "Profile";
        Model_Seo::$des = "Profile";
        Model_Seo::$key = "Profile";
        return $this->ViewTheme([], null, "user");
    }

    function dashboard() {
        return $this->AView();
    }

    function lichsugd() {

        return $this->AView();
    }

    function backtohome() {
        return $this->AView();
    }

    function leftmenu() {

        return $this->AView();
    }

    function donhangchitiet() {

        return $this->AView();
    }

    function backtolink() {

        return $this->AView();
    }

    function user() {
        $user = \Model\Profile::GetCurentUser();
        \lib\APIs::Json_Encode_ToString($user);
    }

    function logout() {
        $_SESSION[UserLogin] = null;
        Common\Common::toUrl("/profile/index");
        exit();
    }

    function thongtin() {
        return $this->AView();
    }

    function userInfor() {
        return $this->AView();
    }

    function footerMobie() {
        return $this->AView();
    }

    function donhangs() {
        return $this->AView();
    }

    function thongbao() {
        return $this->AView();
    }

    function qrcode() {
        return $this->AView();
    }

    function donhangqrcode() {
        return $this->AView();
    }

    function quetmaqr() {
        return $this->AView();
    }

    function save() {
        try {
            $admin = new Model\AdminService();
            $userService = \Model\Profile::GetCurentUser();
            $arrayModel["Name"] = $_POST["Name"];
            $arrayModel["Username"] = $userService['Username'];
            $arrayModel["Phone"] = $_POST["Phone"];
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

    function dashboardDesktop() {
        return $this->AView();
    }

}
