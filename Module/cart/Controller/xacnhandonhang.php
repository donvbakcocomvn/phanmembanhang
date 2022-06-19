<?php

namespace Module\cart\Controller;

class xacnhandonhang extends \Application {

    public $Bread;
    public $Breadcrumb;

    //put your code here
    public function __construct() {
        new \Controller_backend();
        $this->Breadcrumb = new \Model\Breadcrumb();
    }

    function index() {
        $this->Bread[] = [
            "title" => "Danh sách đơn hàng",
            "link" => ""
        ];
        $this->Breadcrumb->setBreadcrumb($this->Bread);
        $this->ViewThemeModule("", "", "");
    }

    function danhsachdonhang() {
        $this->AViewModule();
    }

}
