<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Module\mail\Controller;

use Module\mail\Model\MailConfig;

/**
 * Description of index
 *
 * @author MSI
 */
class index extends \Controller_backend {

    //put your code here

    public function __construct() {
        parent::__construct();
    }

    function index() {
        if (isset($_POST["Mail"])) {
            $mail = $_POST["Mail"];
            MailConfig::saveConfig($mail);
        }
        if (isset($_POST["MailContent"])) {
            $mail = $_POST["MailContent"];
            \Module\mail\Model\MailContent::saveConfig($mail);
        }
        $mailconfig = MailConfig::getConfig();
        $this->ViewThemeModule(["config" => $mailconfig], null, "page");
    }

}
