<?php

class Controller_mlogin extends Application {

    function __construct() {
        $a = new Model_Adapter();
        if (isset($_SESSION[QuanTri])) {
            $a->_header("/backend");
        }
        Model_ViewTheme::set_viewthene("backend");
    }

    function index() {

        if (isset($_POST["dangnhap"])) {
            $Admin = new \Model\Admin();
            $_POST["Username"] = lib\Common::CheckInput($_POST["Username"]);
            $_POST["Password"] = lib\Common::CheckInput($_POST["Password"]);
            $_SESSION[QuanTri] = $Admin->CheckLogin($_POST["Username"], $_POST["Password"], FALSE);
//            var_dump($_SESSION[QuanTri]);
            if ($_SESSION[QuanTri]["Groups"] != \Module\duser\Model\Duser::CongTacVien) {
                $Admin->_header("/backend/");
            } else {
                Model\Error::set("Bạn Không Có Quyền", Model\Error::Danger);
            }
        }
        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "login");
    }

}

?>