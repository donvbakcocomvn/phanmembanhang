<?php

use Common\Common;

class Controller_options extends Controller_backend
{

    public function __construct()
    {
        parent::__construct();
        $this->Bread[] = [
            "title" => "Danh sách khoa",
            "link" => "/options/khoa/"
        ];
    }

    public function delete()
    {
        try {
            $Id = $this->getParam()[0];
            if ($Id) {
                $option = new Model_OptionsService();
                $option->DeleteById($Id);
                // new \Model\Error(\Model\Error::success, "Đã Xóa Danh Mục");
            }
        } catch (\Exception $ex) {
            // new \Model\Error(\Model\Error::danger, $ex->getMessage());
        }
        Common::toUrl("/options/khoa");
    }
    public function post()
    {
        $this->Bread[] = [
            "title" => "Tạo mới",
            "link" => "/options/khoa/put"
        ];
        $_bre = new Model\Breadcrumb();
        $_bre->setBreadcrumb($this->Bread);
        if (\Model\Request::Post('op', [])) {
            $opPost = \Model\Request::Post('op', []);
            $opPost["Id"] = Common::uuid();
            $options = new Model_OptionsService();
            $options->Post($opPost);
        }
        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "");
    }
    public function put()
    {
 
        $this->Bread[] = [
            "title" => "Sửa",
            "link" => "/options/khoa/put"
        ];
        $_bre = new Model\Breadcrumb();
        $_bre->setBreadcrumb($this->Bread);
        if (\Model\Request::Post('op', [])) {
            $opPost = \Model\Request::Post('op', []);
            $options = new Model_OptionsService();
            $opPost["Name"] = Common::CheckInput($opPost["Name"]);
            $options->Put($opPost);
        }

        // /options/khoa/
        $this->ViewTheme(["item" => $this->getParam()[0]], Model_ViewTheme::get_viewthene(), "");
    }
    public function khoa()
    {
        $_bre = new Model\Breadcrumb();
        $_bre->setBreadcrumb($this->Bread);

        $options = new Model_OptionsService();
        $params["keyword"] = isset($_GET["keyword"]) ? $_GET["keyword"] : "";
        $params["GroupsId"] = "khoa";
        $indexPage = isset($_GET["indexPage"]) ? intval($_GET["indexPage"]) : 1;
        $indexPage = max(1, $indexPage);
        $pageNumber = isset($_GET["pageNumber"]) ? intval($_GET["pageNumber"]) : 10;
        $pageNumber = max(1, $pageNumber);
        $total = 0;
        $items = $options->GetItems($params, $indexPage, $pageNumber, $total);
        $data["Items"] = $items;
        $data["indexPage"] = $indexPage;
        $data["pageNumber"] = $pageNumber;
        $data["params"] = $params;
        $data["total"] = $total;
        // $this->ViewThemeModule($data);
        // $this->ViewTheme($data, Model_ViewTheme::get_viewthene(), "");
        // $this->ViewThemeModule($data, "", "");
        $this->ViewTheme($data, Model_ViewTheme::get_viewthene(), "");
    }
    public function index()
    {
        $options = new \Model_OptionsService();
        $params["keyword"] = isset($_GET["keyword"]) ?  $_GET["keyword"]  : "";
        $params["GroupsId"] = $this->getParam()[0];
        $indexPage = isset($_GET["indexPage"]) ? intval($_GET["indexPage"]) : 1;
        $indexPage = max(1, $indexPage);
        $pageNumber = isset($_GET["pageNumber"]) ? intval($_GET["pageNumber"]) : 10;
        $pageNumber = max(1, $pageNumber);
        $total = 0;
        $items = $options->GetItems($params, $indexPage, $pageNumber, $total);
        $data["Items"] = $items;
        $data["indexPage"] = $indexPage;
        $data["pageNumber"] = $pageNumber;
        $data["params"] = $params;
        $data["total"] = $total;
        $this->View($data);
    }
}
