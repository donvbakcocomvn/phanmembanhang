<?php

class Controller_component extends Controller_index {

    public function __construct() {
        parent::__construct();
        Model_ViewTheme::set_viewthene("gocvoi");
    }

    function index() {
        return $this->AView([], Model_ViewTheme::get_viewthene());
    }

    function mobieHeader() {
        return $this->AView([], Model_ViewTheme::get_viewthene());
    }

    function desktopheader() {
        return $this->AView([], Model_ViewTheme::get_viewthene());
    }

    function sanphamdanhmuc() {
        return $this->AView([], Model_ViewTheme::get_viewthene());
    }

}
