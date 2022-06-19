<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Module\mail\Model;

/**
 * Description of MailContent
 *
 * @author MSI
 */
class MailContent {

    const filePath = __DIR__ . "/../Data/";
    const MailThongBaoDonHang = "MaiThongBaoDonHang";

    public $sub, $body;

    //put your code here

    function __construct($mc = null) {
        if ($mc) {
            $this->sub = !empty($mc["sub"]) ? $mc["sub"] : "";
            $this->body = !empty($mc["body"]) ? $mc["body"] : "";
        }
    }

    public static function saveConfig($data) {
        $filePath = self::getFilePath($data["code"]);
        file_put_contents($filePath["sub"], $data["sub"]);
        file_put_contents($filePath["body"], $data["body"]);
    }

    public static function getMailContent($code) {
        $filePath = self::getFilePath($code);
        $mail["sub"] = file_get_contents($filePath["sub"]);
        $mail["body"] = file_get_contents($filePath["body"]);
        return new MailContent($mail);
    }

    static function getFilePath($code) {

        $filename["sub"] = self::filePath . $code . "_sub.config";
        fopen($filename["sub"], "a+");
        $filename["body"] = self::filePath . $code . "_body.config";
        fopen($filename["body"], "a+");
        return $filename;
    }

}
