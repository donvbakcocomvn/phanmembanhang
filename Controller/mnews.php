<?php

class Controller_mnews extends Controller_mpage {

    public $news;
    public $page;

    function __construct() {
        $this->news = new \Model\news();
        $this->page = new \Model\pages();
        parent::__construct();
        ob_start();
        Model\menuactive::set("mnews");
    }

    function index() {


        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "news");
    }

    function listnews() {
        $this->AView("", Model_ViewTheme::get_viewthene());
    }

    function index1() {


        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "news");
    }

    function addnews() {
        if (isset($_POST["AddNews"])) {
            $a = new Model\news();
            $Page = get_class_vars(get_class($a));
            $img = "";
            $urlimg = "public/img/images/news/" . date("Y") . "/" . date("m") . "/";
            if (isset($_FILES["Fileimages"])) {
                if ($_FILES["Fileimages"]["error"] == 0) {
                    $img = $this->news->upload_image1($_FILES["Fileimages"], $urlimg, "news-" . $this->news->createID(), true);
                    $img = explode("public/img/", BASE_URL . $img);
                    $img = "/public/img/" . $img[1];
                }
            }
            foreach ($Page as $k => $v) {
                $Page[$k] = $this->news->Bokytusql($_POST[$k]);
            }
            $Page["UrlHinh"] = $img;
            $Page["Alias"] = $this->news->bodautv($_POST["Name"]);
            $Page["ID"] = $this->news->createNewsID();
            $Page["NgayDang"] = date("Y-m-d H:i:s", time());
            $this->news->AddNews($Page);
            $this->news->_header("/mnews/editnews/" . $Page["ID"]);
        }
        $this->param[0] = isset($this->param[0]) ? $this->param[0] : null;
        $_page = $this->page->PagesById($this->param[0]);

        $this->Bread[] = [
            "title" => $_page->Name,
            "link" => "/mnews/newsbypages/" . $_page->idPa
        ];
        $this->Bread[] = [
            "title" => "Thêm Bài Viết",
            "link" => "#"
        ];

        $Bread = new \Model\Breadcrumb();
        $Bread->setBreadcrumb($this->Bread);
        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "news");
    }

    function deletenews() {
        $this->news->DeleteNews($this->param[0]);
        $this->news->_header("/mnews/index");
    }

    function editnews() {
        if (isset($_POST["EditNews"])) {
            $a = new Model\news();
            $Page = $this->news->NewsById($_POST["ID"], FALSE);
            $img = $Page["UrlHinh"];
//             xóa hình tin túc
            if (isset($_FILES["Fileimages"])) {
                if ($_FILES["Fileimages"]["error"] == 0) {
                    $urlimg = "public/img/images/news/" . date("Y") . "/" . date("m") . "/";
                    $imgHinh = substr($img, 1);
                    if (is_file($imgHinh)) {
                        unlink($imgHinh);
                    }
                    $img = $this->news->upload_image1($_FILES["Fileimages"], $urlimg, "news-" . $_POST["ID"], true);
                    $img = explode("public/img/", BASE_URL . $img);
                    $img = "/public/img/" . $img[1];
                }
            }

            foreach ($Page as $k => $v) {
                $Page[$k] = $this->news->Bokytusql($_POST[$k]);
            }
            $Page["Alias"] = $this->news->bodautv($_POST["Name"]);
            $Page["UrlHinh"] = $_POST["UrlHinh"];
            $this->news->editNews($Page);

            $this->news->_header("/mnews/editnews/" . $Page["ID"]);
        }

        $data["news"] = $this->news->NewsById($this->param[0], FALSE);
        $_New = new Model\news($data["news"]);
        $Bread = new \Model\Breadcrumb();
        $_Pages = $this->page->PagesById($_New->PageID);
        $this->Bread[] = [
            "title" => $_Pages->Name,
            "link" => "/mnews/newsbypages/" . $_Pages->idPa
        ];
        $this->Bread[] = [
            "title" => $_New->Name,
            "link" => "/mnews/"
        ];

        $Bread->setBreadcrumb($this->Bread);

        $this->ViewTheme($data, Model_ViewTheme::get_viewthene(), "news");
    }

    function newsbypages() {
        $_Pages = $this->page->PagesById($this->param[0]);
        $Bread = new \Model\Breadcrumb();
        $this->Bread[] = [
            "title" => $_Pages->Name,
            "link" => "/mpage/"
                ]
        ;
        $Bread->setBreadcrumb($this->Bread);
        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "news");
    }

    function getPages() {
        $newCate = new \Model\news\newsCategory();
        $danhSach = [];
        $a = $newCate->GetCattegoryByParent("0", $danhSach);
//        $newCate->Name = "Cấp cha";
//        $newCate->Id = "0";
//        $tatCa = $newCate->ToArrayApi();
//        $danhSach = array_merge([0 => $tatCa], $danhSach);
        \lib\APIs::Json_Encode_ToString($danhSach);
    }

    function getnewById() {
        $a = $this->news->NewsById($this->param[0], FALSE);
        $a["Summary"] = "";
        $a["Content"] = "";
        echo $this->news->_encode($a);
    }

    function getNewsByPages() {
        $a = $this->news->NewsByPagesAD($this->param[0], FALSE);
        if ($a)
            echo $this->news->_encode($a);
        else
            echo "[]";
    }

    function getNewsByParams() {
        $newsService = new Model\news\newsService();
        $total = 0;
        $indexPage = isset($_REQUEST["pageIndex"]) ? $_REQUEST["pageIndex"] : 1;
        $pageNumber = isset($_REQUEST["pageNumber"]) ? $_REQUEST["pageNumber"] : 10;
        $data["Params"]["isShow"] = isset($_REQUEST["isShow"]) ? $_REQUEST["isShow"] : "All";
        $name = isset($_REQUEST["name"]) ? $_REQUEST["name"] : "";
        $data["Params"]["name"] = $name;
        $dataNews = $newsService->GetAllPT($data["Params"], $total, $indexPage, $pageNumber);
        $data["data"] = Model\news\newsService::ToApi($dataNews);
        $data["total"] = intval($total);
        $data["totalPages"] = ceil($total / $pageNumber);
        $data["pageIndex"] = $indexPage;
        $data["pageNumber"] = $pageNumber;
        echo \lib\APIs::Json_Encode_ToString($data);
    }

    function formsuanhanh() {
        $this->AView("", Model_ViewTheme::get_viewthene());
    }

    function getNewsByIdApi() {
        $id = $this->getParam()[0];
        $newsModel = new \Model\news\newsService($id);
        $a = $newsModel->ToArray();
        lib\APIs::Json_Encode_ToString($a);
    }

    function saveNewsApi() {
        $news = $_POST["news"];
        $newsModel = new \Model\news\newsService();
        $modelDetail = $newsModel->GetById($news["ID"]);
        $modelDetail["Name"] = $news["Name"];
        $modelDetail["Stt"] = $news["Stt"];
        $modelDetail["AnHien"] = $news["AnHien"];
        $modelDetail["PageID"] = $news["PageID"];
        $newsModel->Put($modelDetail);
        lib\APIs::Json_Encode_ToString(["data" => ["ID" => $news["ID"]]]);
    }

    function __destruct() {
        $str = ob_get_clean();
        $params = parse_ini_file(__DIR__ . '/../public/language/editnews.ini', true);
        $DSOption = $params;
        if ($DSOption)
            foreach ($DSOption as $k => $value) {
                $str = str_replace($k, $value, $str);
            }
        echo $str;
    }

}

?>