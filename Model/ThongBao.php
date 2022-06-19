<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Model;

class ThongBao {

    //put your code here
    const Danger = "danger";
    const Primary = "primary";
    const Success = "success";
    const Waming = "waming";
    const keyThongBao = "keyThongBao";

    public $type;
    public $content;

    public function __construct($type = null) {
        if ($type) {
            $this->type = $type[0];
            $this->content = $type[1];
        }
        $_SESSION[self::keyThongBao] = isset($_SESSION[self::keyThongBao]) ? $_SESSION[self::keyThongBao] : null;
    }

    public static function SetThongBao($type) {
        $_SESSION[self::keyThongBao] = [$type[0], $type[1]];
    }

    public function GetThongBao() {
        $a = $_SESSION[self::keyThongBao];
        unset($_SESSION[self::keyThongBao]);
        if ($a)
            return new ThongBao($a);
        return null;
    }

    static function Clear() {
        $_SESSION[self::keyThongBao] = null;
    }

}
