<?php

namespace Model;

class menuactive {

    static public $MenuActive = "";

    public function __construct() {

    }

    static function set($nameMenu) {
        self::$MenuActive = $nameMenu;
    }

    static function get() {
        return self::$MenuActive;
    }

    public static function SetActive($param0) {
        return self::get() == $param0 ? 'active' : "";
    }

}
