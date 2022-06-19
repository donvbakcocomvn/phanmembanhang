<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Brand
 *
 * @author MSI
 */
class Controller_brand extends Controller_backend implements Controller\IController {

    //put your code here

    function __construct() {
        parent::__construct();
        $this->Bread[] = [
            "title" => "Quản Lý Thương Hiệu",
            "link" => "/brand/"
        ];
    }

    public function index() {
        $_bre = new Model\Breadcrumb();
        $_bre->setBreadcrumb($this->Bread);
        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "");
    }

    public function delete() {
        $id = $this->getParam()[0];
        $brandModel = new Model\Brand\BrandService();
        $item = $brandModel->GetById($id);
        $item["isDelete"] = -1;
        var_dump($item);
        $brandModel->Put($item);
        \lib\Common::ToUrl($_SERVER["HTTP_REFERER"]);
    }

    public function post() {
        if (isset($_POST[Model\Brand\BrandForm::FormName])) {
            $formPost = $_POST[Model\Brand\BrandForm::FormName];
            $BrandService = new Model\Brand\BrandService();
            $formPost["Id"] = \lib\Common::guidv4();
            $formPost["Alias"] = \lib\Common::bodautv($formPost["Name"]);
            $BrandService->Post($formPost);
            \lib\Common::ToUrl("/brand/put/" . $formPost["Id"]);
        }

        $_bre = new Model\Breadcrumb();
        $this->Bread[] = [
            "title" => "Thêm Thương Hiệu",
            "link" => "/brand/post/"
        ];

        $_bre->setBreadcrumb($this->Bread);
        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "");
    }

    public function put() {
        if (isset($_POST[Model\Brand\BrandForm::FormName])) {
            $formPost = $_POST[Model\Brand\BrandForm::FormName];
            $BrandService = new Model\Brand\BrandService();
            $BrandService->Put($formPost);
            \lib\Common::ToUrl("/brand/put/" . $formPost["Id"]);
        }

        $_bre = new Model\Breadcrumb();
        $this->Bread[] = [
            "title" => "Sửa Thương Hiệu",
            "link" => "/brand/put/"
        ];
        $_bre->setBreadcrumb($this->Bread);
        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "");
    }

}
