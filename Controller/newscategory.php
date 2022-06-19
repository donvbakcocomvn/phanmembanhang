<?php

class Controller_newscategory extends \Controller_backend {

    public function __construct() {
        parent::__construct();
        Model\menuactive::set("mnews");
    }

    public function index() {

        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "news");
    }

    public function delete() {

        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "news");
    }

    public function post() {
        if (isset($_POST[\Model\news\newsCategoryForm::FormName])) {
            $model = $_POST[\Model\news\newsCategoryForm::FormName];
            $newsCate = new Model\news\newsCategory();
            $model["Code"] = lib\Common::guidv4();
            $model["Alias"] = lib\Common::bodautv($model["Name"]);
            $newsCate->Post($model);
            lib\Common::ToUrl("/newscategory/index/");
        }
        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "news");
    }

    public function put() {
        $newsCate = new Model\news\newsCategory();

        if (isset($_POST[\Model\news\newsCategoryForm::FormName])) {
            $model = $_POST[\Model\news\newsCategoryForm::FormName];
            $model_Detail = $newsCate->GetById($model["Id"]);
            $newsCate = new Model\news\newsCategory();
            $model_Detail["Name"] = $model["Name"];
            $model_Detail["Alias"] = lib\Common::bodautv($model["Name"]);
            $model_Detail["Content"] = $model["Content"];
            $model_Detail["Title"] = $model["Title"];
            $model_Detail["Des"] = $model["Des"];
            $model_Detail["Keyword"] = $model["Keyword"];
            $model_Detail["Parents"] = $model["Parents"];
            $model_Detail["Content"] = $model["Content"];
            $model_Detail["Images"] = $model["Images"];
            $model_Detail["isActive"] = $model["isActive"];

            $newsCate->Put($model_Detail);
            lib\Common::ToUrl("/newscategory/index/");
        }

        $id = $this->getParam()[0];
        $data["modelDetail"] = $newsCate->GetById($id);
        $this->ViewTheme($data, Model_ViewTheme::get_viewthene(), "news");
    }

}
