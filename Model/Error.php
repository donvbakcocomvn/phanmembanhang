<?php

namespace Model;

class Error
{

    const Danger = "danger";
    const Primary = "primary";
    const Success = "success";

    static public $type;
    static public $Content;

    function __construct($aContent = null)
    {
        if ($aContent) {
            $type = $aContent["type"];
            $content = $aContent["content"];
            self::$type = $type;
            self::$Content = $content;
            $_SESSION["Error"]["type"] = $type;
            $_SESSION["Error"]["content"] = $content;
        }
    }

    static function getAllToJson()
    {
        $Error = self::getAllError();
        if ($Error == null)
            return null;
        echo \lib\APIs::Json_Encode_ToString($Error);
    }

    function setError($content, $type)
    {
        self::$type = $type;
        self::$Content = $content;
        $_SESSION["Error"]["type"] = $type;
        $_SESSION["Error"]["content"] = $content;
    }

    static public function set($content, $type)
    {
        self::$type = $type;
        self::$Content = $content;
        $_SESSION["Error"]["type"] = $type;
        $_SESSION["Error"]["content"] = $content;
    }

    static function getAllError()
    {
        $content = self::$Content;
        $type = self::$type;
        $type = isset($_SESSION["Error"]["type"]) ? $_SESSION["Error"]["type"] : "";
        $content = isset($_SESSION["Error"]["content"]) ? $_SESSION["Error"]["content"] : "";
        unset($_SESSION["Error"]);
        self::$Content = NULL;
        self::$type = NULL;
        if (!$type) {
            return null;
        }

        return [
            "Content" => $content, "Type" => $type
        ];
    }

    static function getAllToObj()
    {
        $Error = self::getAllError();
        if ($Error == null)
            return null;
        $ErrorObj = new \stdClass();
        $ErrorObj->Content = $Error["Content"];
        $ErrorObj->Type = $Error["Type"];
        return $ErrorObj;
    }

    function getError()
    {
        $content = self::$Content;
        $type = self::$type;
        $type = isset($_SESSION["Error"]["type"]) ? $_SESSION["Error"]["type"] : "";
        $content = isset($_SESSION["Error"]["content"]) ? $_SESSION["Error"]["content"] : '';
        unset($_SESSION["Error"]);
        if ($content == null) {
            return null;
        }
        self::$Content = NULL;
        self::$type = NULL;
        return [
            "Content" => $content, "Type" => $type
        ];
    }

    //put your code here
}
