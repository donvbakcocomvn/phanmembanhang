<?php

namespace Model;

class CheckInput extends \Model\Database {

    //put your code here
    function __construct() {
        parent::__construct();
    }

    function CheckTextInput($text) {
        return parent::Bokytusql($text);
    }

    public static function Input($str) {
        $str = trim($str);
        $str = addslashes($str);
        $str = htmlspecialchars($str);
        return $str;
    }

    public static function Email($str) {
        $str = trim($str);
        $str = addslashes($str);
        $str = htmlspecialchars($str);
        if (!filter_var($str, FILTER_VALIDATE_EMAIL)) {
            return null;
        }
        return $str;
    }

    public static function Phone($str) {
        if (empty($str)) {
            return null;
        }
        $str = trim($str);
        $str = addslashes($str);
        $str = htmlspecialchars($str);
        if (strlen($str) < 10) {
            return null;
        }
        if (strlen($str) > 20) {
            return null;
        }
        return $str;
    }

}
