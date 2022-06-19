<?php

class Controller_thuonghieu extends Controller_index {

    function __construct() {
        parent::__construct();
    }

    function index() {
        Model_Seo::$Title = "__Title___";
        Model_Seo::$des = "__Des___";
        Model_Seo::$key = "__Keyword___";
        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "");
    }

}
?>

