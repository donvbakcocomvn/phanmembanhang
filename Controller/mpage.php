<?php

class Controller_mpage extends Controller_backend {

    public $page;

    function __construct() {
        $this->page = new \Model\pages();
        $a = new lib\form();
        $a->createFormByClassToFile("\Model\pages", "page");
        parent::__construct();
        ob_start();
        $this->Bread[] = [
            "title" => "Quản lý bài viết",
            "link" => "/mpage/"
        ];
        Model\menuactive::set("mnews");
    }

    function index() {
        $this->param[0] = isset($this->param[0]) ? $this->param[0] : null;
        $_Pages = $this->page->PagesById($this->param[0]);
        $Bread = new \Model\Breadcrumb();
        $Bread->setBreadcrumb($this->Bread);
        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "page");
    }

    function deletepage() {
        $this->page->DeletePages($this->param[0]);
        $this->page->_header("/mpage/");
    }

    function editpage() {
        if (isset($_POST["SuaPage"])) {
            $edit = $this->page->PagesById($_POST["idPa"], FALSE);
            $img = $edit["Urlimages"];
            foreach ($edit as $k => $value) {
                $edit[$k] = isset($_POST[$k]) ? $this->page->BoHieuUngSQL($_POST[$k]) : null;
            }
            $edit["Urlimages"] = \Model\CheckInput::Input($_POST["Urlimages"]);
            $edit["Alias"] = $this->page->bodautv($edit["Name"]);
            $edit["Note"] = $_POST["Note"] == "" ? "{}" : $_POST["Note"];
            $this->page->editPages($edit);
            $this->page->_header('/mpage/editpage/' . $edit["idPa"]);
        }

        $data["p"] = $this->page->PagesById($this->param[0], FALSE);
        $M_Pages = new \Model\pages($data["p"]);
        $Bread = new \Model\Breadcrumb();
        $this->Bread[] = [
            "title" => $M_Pages->Name,
            "link" => "/mpage/"
        ];
        $Bread->setBreadcrumb($this->Bread);
        $this->ViewTheme($data, Model_ViewTheme::get_viewthene(), "page");
    }

    function addpage() {
        if (isset($_POST["AddPage"])) {
            $edit = $this->page->Pages(FALSE);
            $edit = $edit[0];
            $img = "";
            $urlimg = "public/img/images/pages/" . date("Y") . "/" . date("m") . "/";
            if (isset($_FILES["Fileimages"])) {
                if ($_FILES["Fileimages"]["error"] == 0) {
                    $img = $this->page->upload_image1($_FILES["Fileimages"], $urlimg, "pages-" . $_POST["idPa"], true);
                    $img = explode("public/img/", BASE_URL . $img);
                    $img = "/public/img/" . $img[1];
                }
            }
            foreach ($edit as $k => $value) {
                $edit[$k] = isset($_POST[$k]) ? $this->page->BoHieuUngSQL($_POST[$k]) : null;
            }

            $edit["Urlimages"] = $img;
            $edit["Alias"] = $this->page->bodautv($edit["Name"]);
            $edit["Note"] = $_POST["Note"] == "" ? "{}" : $_POST["Note"];
            $this->page->addPages($edit);

            $this->page->_header('/mpage/editpage/' . $edit["idPa"]);
        }

        $data["p"] = $this->page->PagesById($this->param[0], FALSE);
        $Bread = new \Model\Breadcrumb();
        $this->Bread[] = [
            "title" => "Thêm Trang Mới",
            "link" => "/"
        ];
        $Bread->setBreadcrumb($this->Bread);
        $this->ViewTheme($data, Model_ViewTheme::get_viewthene(), "page");
    }

    function getPages() {
        $a = $this->page->Pages(FALSE);
        echo $this->page->_encode($a);
    }

    function ListDanhMuc() {
        $cat = new \Model\Category();
        $a = $cat->Categorys();
        echo $this->page->_encode($a);
    }

    function __destruct() {
        $str = ob_get_clean();
        $params = parse_ini_file(__DIR__ . '/../public/language/editpages.ini', true);
        $DSOption = $params;
        if ($DSOption)
            foreach ($DSOption as $k => $value) {
                $str = str_replace($k, $value, $str);
            }
        echo $str;
    }

}

?>
