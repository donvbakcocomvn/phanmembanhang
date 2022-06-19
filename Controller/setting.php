<?php

class Controller_setting extends Controller_mpage {

    function __construct() {
        parent::__construct();
        Model\menuactive::set("setting");
    }

    function index() {
        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "news");
    }

}

?>