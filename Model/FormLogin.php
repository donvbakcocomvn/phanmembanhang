<?php

namespace Model;

use PFBC\Element;

class FormLogin {

    public static $FormName;
    public static $FormClass = ["class" => "form-control"];

    public function __construct() {

    }

    public static function setFormName($nameForm) {
        self::$FormName = $nameForm;
    }

    public static function getFormName() {
        if (self::$FormName) {
            return self::$FormName;
        }
        return "LoginForm";
    }

    public static function Username($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;
        $properties[FormRender::required] = true;
        $name = self::getFormName() . "[" . __FUNCTION__ . "]";
        return new \Model\FormRender(new Element\Textbox("<b>Tài Khoản</b>", $name, $properties));
    }

    public static function Password($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;
        $properties[FormRender::required] = true;
        $name = self::getFormName() . "[" . __FUNCTION__ . "]";
        return new \Model\FormRender(new Element\Password("<b>Mật Khẩu</b>", $name, $properties));
    }

    public static function CodeAuth($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;
        $name = self::getFormName() . "[" . __FUNCTION__ . "]";
        return new \Model\FormRender(new Element\Textbox("Bí Danh", $name, $properties));
    }

}
