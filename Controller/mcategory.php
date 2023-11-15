<?php

use Model\Breadcrumb;

class Controller_mcategory extends Controller_backend
{
    public $Category;

    function __construct()
    {
        $this->Category = new Model\Category();
        parent::__construct();
        $this->Bread[] = [
            "title" => "Danh mục sản phẩm",
            "link" => "/mcategory/index"
        ];
    }

    function index()
    {

        //        $this->Category->DeleteCategory(1);
        $this->Bread[] = [
            "title" => "Danh sách danh mục",
            "link" => ""
        ];
        (new Breadcrumb())->setBreadcrumb($this->Bread);
        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "");
    }

    function detail()
    { 
   
        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "");
    }

    function edit()
    {

        if (isset($_POST["SuaDanhMuc"])) {
            $Cat = $this->Category->Category4Id($_POST["catID"], FALSE);
            $_cat = new \Model\Category($Cat);
            $Cat["catName"] = $this->Category->Bokytusql($_POST["catName"]);
            $Cat["Note"] = $this->Category->Bokytusql($_POST["Note"]);
            $Cat["Lang"] = "vi";
            $Cat["parentCatID"] = intval($_POST["parentCatID"]);
            $Cat["Serial"] = intval($_POST["Serial"]);
            $Cat["Code"] = Model\CheckInput::Input($_POST["Code"]);
            $Cat["Public"] = isset($_POST["Public"]) ? 1 : 0;
            $kt = $this->Category->EditCategory($Cat);
            if ($kt > 0) {
                $Cat["Link"] = $_cat->linkCurentCategory();
                $this->Category->EditCategory($Cat);
                $this->Category->_header("/mcategory/index/");
            } else {
                $M_error = new \Model\Error();
                $M_error->setError($this->Category->getError($kt), 'danger');
            }
        }

        $this->Bread[] = [
            "title" => "Sửa danh mục hàng hóa",
            "link" => ""
        ];
        (new Breadcrumb())->setBreadcrumb($this->Bread);

        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "");
    }

    function add()
    {

        if (isset($_POST["ThemDanhMuc"])) {
            $Cat["catName"] = $this->Category->Bokytusql($_POST["catName"]);
            $Cat["Note"] = $this->Category->Bokytusql($_POST["Note"]);
            $Cat["Code"] = Model\CheckInput::Input($_POST["Code"]);
            $Cat["parentCatID"] = intval($_POST["parentCatID"]);
            $Cat["Path"] = $this->Category->bodautv($Cat["catName"]);
            $Cat["Link"] = "";
            $Cat["Lang"] = "vi";
            $Cat["banner"] = "";
            $Cat["Serial"] = intval($_POST["Serial"]);
            $Cat["Public"] = isset($_POST["Public"]) ? 1 : 0;
            $Cat = $this->Category->AddCategory($Cat);
            if ($Cat) {
                $_cat = new \Model\Category($Cat);
                $Cat["Link"] = $_cat->linkCurentCategory();
                $this->Category->EditCategory($Cat);
                $this->Category->_header("/mcategory/detail/" . $Cat["catID"]);
            } else {
                $M_error = new \Model\Error();
                $M_error->setError("Lỗi", 'danger');
            }
        }
        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "");
    }

    function delete()
    {
        if (isset($_POST["xoadanhmuc"])) {
            $this->Category->DeleteCategory($_POST["catID"]);
            $this->Category->_header("/mcategory/index");
        }
    }

    function categorys()
    {

        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "");
    }

    function getCategoryByID()
    {
        $a = $this->Category->Category4Id($this->param[0], FALSE);
        echo $this->Category->_encode($a);
    }

}

?>