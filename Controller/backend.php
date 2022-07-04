<?php

class Controller_backend extends Application
{

    public $param;
    public $Bread;

    function __construct()
    {
        $this->param = $this->getParam();
        $a = new Model_Adapter();
        if (!isset($_SESSION[QuanTri])) {
            $a->_header("/mlogin/");
        }
        $this->Bread[] = [
            "title" => "Dashboard",
            "link" => "/backend/"
        ];
        Model_ViewTheme::set_viewthene("backend");
    }

    function index()
    {
        $Bread = new \Model\Breadcrumb();
        $Bread->setBreadcrumb($this->Bread);
        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "");
    }

    function logout()
    {
        $a = new Model_Adapter();
        unset($_SESSION[QuanTri]);
        $a->_header('mlogin');
    }

    function cattegorydetail()
    {
        $cat = new \Model\Category();
        $a = $cat->Category4Id($this->param[0]);
        echo $cat->_encode($a);
    }

    function getCategorys()
    {
        $cat = new \Model\Category();
        $a = $cat->AllCategorys(FALSE);
        echo $cat->_encode($a);
    }

    function getCategorysByParentID()
    {
        $cat = new \Model\Category();
        $listCatID = [];
        $cat->AllCategoryByParentID([$this->param[0]], $listCatID);
        $a = [];
        foreach ($listCatID as $k => $v) {
            $a[] = $cat->Category4Id($v);
        }
        echo $cat->_encode($a);
    }

    function getThemes()
    {
        $cat = new Model_Adapter();
        $a = ["home"];
        echo $cat->_encode($a);
    }

    function getThemeAlFileconfig()
    {
        $cat = new Model_Adapter();
        $Lib = new \lib\redDirectory();
        $Lib->redDirectoryByPath(__DIR__ . "\..\\theme\\" . $this->param[0] . "\\config\\", $a);
        echo $cat->_encode($a);
    }

    function getConfig()
    {
        $cat = new Model_Adapter();
        $Lib = new \lib\io();
        $filename = __DIR__ . "/../theme/" . $this->param[0] . "/config/" . $this->param[1];
        $a = $Lib->readFile($filename);
        echo $a;
    }

    function CreateApi($array)
    {
        $a = new \Model_Adapter();
        if ($array) {
            echo $a->_encode($array);
        } else {
            echo "[]";
        }
    }

    function hinhanh()
    {
        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "");
    }

    function toiuuhinhanh()
    {
        ini_set('display_errors', 1);
        ini_set('display_startup_errors', 1);
        error_reporting(E_ALL);
        try {
            Imagesoptimizer\Images::OptimizerFolder("public/img/images/");
        } catch (Exception $exc) {
            echo $exc->getTraceAsString();
        }
    }

    function keyckfinde()
    {

        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "");
    }

    function getBrands()
    {
        $brand = new \Model\Brand\BrandService();
        $where = " 1 ";
        $a = $brand->Select($where, ["Id", "Name"]);
        $api = new \lib\APIs();
        echo $api->ArrayToString($a);
    }
}
