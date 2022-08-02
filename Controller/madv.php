<?php

class Controller_madv extends Controller_backend {

    public $Adv;

    function __construct() {
        $this->Adv = new \Model\adv();
        parent::__construct();
        $this->Bread[] = [
            "title" => "Quản lý quảng cáo",
            "link" => "/madv/"
        ];
    }

    function index() { 
        
//        $this->Adv->getGroupsAdv(FALSE);
        $_bre = new Model\Breadcrumb();
        $_bre->setBreadcrumb($this->Bread);
        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "");
    }

    function addadv() {
        if (isset($_POST["AddAdv"])) {
            $_group = $this->Adv->getGroupAdvByID($this->Adv->CheckTextInput($_POST["Group"]), FALSE);
            $Adv["Name"] = $this->Adv->CheckTextInput($_group["Name"]);
            $Adv["Content"] = $this->Adv->CheckTextInput($_POST["Content"]);
            $Adv["Attribute"] = $this->Adv->_encode($_POST["Attribute"]);
            $Adv["DataAttribute"] = $this->Adv->_encode($_POST["DataAttribute"]);
            $Adv["Link"] = $this->Adv->CheckTextInput($_group["Link"]);
            $Adv["Urlimages"] = "";
            $Adv["isShow"] = 1;
            $Adv["Group"] = $_group["Group"];
            $Adv["ID"] = $this->Adv->AddAdv($Adv);
            $img = "";
            if (isset($_FILES["UrlImage"])) {
                if ($_FILES["UrlImage"]["error"] == 0) {

                    $img = $this->Adv->upload_image1($_FILES["UrlImage"], "public/img/images/quangcao/" . $_POST["Group"] . "/", $_POST["Group"] . "-" . $Adv["ID"], true);
                    $img = explode("public/img/", BASE_URL . $img);
                    $img = "/public/img/" . $img[1];
                }
            }
            $Adv["Urlimages"] = $img;
            $this->Adv->EditAdv($Adv);
        }
        $this->Adv->_header("/madv/index");
    }

    function addadvApi() {
        $Adv["Name"] = \Model\CheckInput::Input($_POST["Name"]);
        $Adv["Content"] = \Model\CheckInput::Input($_POST["Content"]);
        $Adv["Attribute"] = \Model\CheckInput::Input($_POST["Attribute"]);
        $Adv["DataAttribute"] = "[]";
        $Adv["Link"] = \Model\CheckInput::Input($_POST["Link"]);
        $Adv["Urlimages"] = \Model\CheckInput::Input($_POST["Urlimages"]);
        $Adv["isShow"] = 1;
        $Adv["Group"] = $_POST["Group"];
        $this->Adv->AddAdv($Adv);
    }

    function toiuuhinhanh() {
        ini_set('display_errors', 1);
        ini_set('display_startup_errors', 1);
        error_reporting(E_ALL);
        try {
            $imageComp = new lib\imageComp();
        } catch (Exception $exc) {
            echo $exc->getTraceAsString();
        }
        $readDir = new \lib\redDirectory();
        $a = [];
        $dir = "public/img/images/quangcao/";
        $readDir->redDirectoryByPath($dir, $a, true);
        foreach ($a as $value) {
            echo $value . "<br>";
            $imageComp->ImageOptimizer($value);
        }
    }

    function editadv() {
        $adv = new \Model\adv();
        if (isset($_POST["EditAdv"])) {

//            $Adv["Attribute"] = $this->Adv->_encode($_POST["Attribute"]);
//            $Adv["DataAttribute"] = $this->Adv->_encode($_POST["DataAttribute"]);

            $ID = $this->Adv->CheckTextInput($_POST["ID"]);
            $Adv = $this->Adv->AdvsById($ID, FALSE);

            $Adv["Name"] = $this->Adv->CheckTextInput($_POST["Name"]);
            $Adv["Content"] = $this->Adv->CheckTextInput($_POST["Content"]);
            $Adv["Attribute"] = isset($_POST["Attribute"]) ? $this->Adv->_encode($_POST["Attribute"]) : '{}';
            $Adv["DataAttribute"] = isset($_POST["DataAttribute"]) ? $this->Adv->_encode($_POST["DataAttribute"]) : '[]';
            $Adv["Link"] = $this->Adv->CheckTextInput($_POST["Link"]);
            $Adv["isShow"] = ($Adv["isShow"] == true) ? 1 : 0;
            $img = $Adv["Urlimages"];
            if (isset($_FILES["UrlImage"])) {
                if ($_FILES["UrlImage"]["error"] == 0) {
                    $urlimg = "public/img/images/adv/" . date("Y") . "/" . date("m") . "/";
                    $imgHinh = substr($img, 1);
                    if (is_file($imgHinh)) {
                        unlink($imgHinh);
                    }
                    $img = $this->Adv->upload_image1($_FILES["UrlImage"], $urlimg, "adv-" . $Adv["ID"], true);
                    $img = explode("public/img/", BASE_URL . $img);
                    $img = "/public/img/" . $img[1];
                    $Adv["Urlimages"] = $img;
                }
            }
            $this->Adv->EditAdv($Adv);
        }
        $adv->_header("/madv/index");
        exit();
    }

    function addgroupadv() {
        if (isset($_POST["AddGroup"])) {
            $Adv["Name"] = $_POST["Name"];
            $Adv["Group"] = $this->Adv->bodautv($_POST["Group"]);
            $Adv["Link"] = "";
            $Adv["Content"] = "";
            $Adv["UrlImages"] = "";
            $Adv["Attribute"] = "{}";
            $Adv["DataAttribute"] = "[]";
            $Adv["isShow"] = 0;
            $this->Adv->AddAdv($Adv);
            $this->Adv->_header("/madv/index/");
        }
    }

    function delete() {
        $a = $this->Adv->DeleteAdv($this->param[0]);
        $this->Adv->_header("/madv/index");
    }

    function getAdvs() {
        $a = $this->Adv->Advs(FALSE);
        echo $this->Adv->_encode($a);
    }

    function getGroupAdvs() {
        $a = $this->Adv->getGroupsAdv(FALSE);
        echo $this->Adv->_encode($a);
    }

    function getAdvsByID() {
        $a = $this->Adv->AdvsById($this->param[0], FALSE);
        $a["isShow"] = $a["isShow"] == 0 ? FALSE : TRUE;
        echo $this->Adv->_encode($a);
    }

    function saveVideo() {
        header('Access-Control-Allow-Origin:*');
        header('Access-Control-Allow-Methods:PUT,POST,GET,DELETE,OPTIONS');
        header('Access-Control-Allow-Headers:x-requested-with,content-type');
        header("Content-type: application/x-www-form-urlencoded");
        print_r($_POST["Link"]);
        $content['Link'] = $_POST["Link"];
        $content['IsShow'] = $_POST["IsShow"];
        $io = new lib\io();
        $io->writeFile("data/video.js", json_encode($content));
    }

    function video() {

        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "");
    }

    function getVideo() {
        $io = new lib\io();
        $NoiDung = $io->readFile("data/video.js");
        echo $NoiDung;
    }

    function getAdvGroups() {
        $advG = new \Model\advGroups();
        $total = 0;
        $advGs = $advG->GetAllPT("", $total, 1, 100);
        $data["total"] = $total;
        $data["pagesIndex"] = 1;
        $data["pagesNumber"] = 100;
        $data["data"] = $advGs;
        \lib\APIs::Json_Encode_ToString($data);
    }

    function postgroups() {
        try {
            $advG = new \Model\advGroups();
            $group = $_POST;
            $model["Name"] = \Model\CheckInput::Input($group["Name"]);
            $model["Code"] = \Model\CheckInput::Input($group["Code"]);
            $advG->Post($model);
            $data["Mes"] = "Đã Thêm Nhóm";
            echo \lib\APIs::Json_Encode($data);
        } catch (Exception $exc) {
            $data["Mes"] = $exc->getMessage();
            echo \lib\APIs::Json_Encode($data);
        }
    }

    function putgroups() {
        $advG = new \Model\advGroups();
        $model["Id"] = $_POST["Id"];
        $model["Name"] = $_POST["Name"];
        $model["Code"] = $_POST["Code"];
        $advG->Put($model);
    }

    function getAdvGroupsById() {
        $advG = new \Model\advGroups();
        $id = $this->getParam()[0];
        $gdetail = $advG->GetById($id);
        \lib\APIs::Json_Encode_ToString($gdetail);
    }

    function deletegroups() {
        try {
            $advG = new \Model\advGroups();
            $Id = $this->getParam()[0];
            $advG->Delete($Id);
            $data["Mes"] = "Đã Xóa Nhóm";
            echo \lib\APIs::Json_Encode($data);
        } catch (Exception $exc) {
            $data["Mes"] = $exc->getMessage();
            echo \lib\APIs::Json_Encode($data);
        }
    }

    function formthemgroups() {
        $this->AView("", Model_ViewTheme::get_viewthene());
    }

    function listgroups() {
        $this->AView("", Model_ViewTheme::get_viewthene());
    }

    function formthemquangcao() {
        $this->AView("", Model_ViewTheme::get_viewthene());
    }

}

?>