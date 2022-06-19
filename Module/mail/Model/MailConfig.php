<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Module\mail\Model;

/**
 * Description of MailConfig
 *
 * @author MSI
 */
class MailConfig {

    //put your code here
    public static $UserName;
    public static $Title;
    public static $Password;
    public static $Host;
    public static $Port;
    public static $MailNhan = "";

    const filePath = __DIR__ . "/../Data/Mailconfig.config";

    public function __construct($config = null) {
        if ($config) {
            self::$Title = !empty($config["Title"]) ? $config["Title"] : "";
            self::$UserName = !empty($config["Username"]) ? $config["Username"] : "";
            self::$Password = !empty($config["Password"]) ? $config["Password"] : "";
            self::$Host = !empty($config["Host"]) ? $config["Host"] : "smtp.google.com";
            self::$Port = !empty($config["Port"]) ? intval($config["Port"]) : 465;
            self::$MailNhan = !empty($config["MailNhan"]) ? $config["MailNhan"] : "";
        }
    }

    public static function getConfig() {
        $filePath = self::filePath;
        $con = file_get_contents($filePath);
        $con = json_decode($con, JSON_OBJECT_AS_ARRAY);
        new MailConfig($con);
        return $con;
    }

    public static function saveConfig($data) {
        $filePath = self::filePath;
        return file_put_contents($filePath, json_encode($data, JSON_UNESCAPED_UNICODE));
    }

}
