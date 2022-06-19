<?php

class Controller_timkiem extends Controller_index {

    function __construct() {
        parent::__construct();
    }

    function index() {
        $bre = new Model\Breadcrumb();
        $abre[] = [
            "link" => "#"
            , "title" => "Tìm kiếm"
        ];
        $bre->setBreadcrumb($abre);
        Model_Seo::$Title = "__Title___";
        Model_Seo::$des = "__Des___";
        Model_Seo::$key = "__SEO_Keyword___";
        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "danhmuc");
    }

}
?>

