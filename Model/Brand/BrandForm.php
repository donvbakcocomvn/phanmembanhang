<?php

namespace Model\Brand;

use PFBC\Element;

class BrandForm implements BrandIForm {

    const FormName = "Brand";

    public static $FormClass = ["class" => "form-control"];

    public static function Desc($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;
        $name = self::FormName . "[" . __FUNCTION__ . "]";
        return new \Model\FormRender(new Element\Textarea("Mô Tả", $name, $properties));
    }

    public static function Id($val = null) {
        $name = self::FormName . "[" . __FUNCTION__ . "]";
        return new \Model\FormRender(new Element\Hidden($name, $val));
    }

    public static function Images($val = null, $id = "") {
        $properties = self::$FormClass;
        $properties["value"] = $val;
        $properties["id"] = $id;

        $name = self::FormName . "[" . __FUNCTION__ . "]";
        return new \Model\FormRender(new Element\Textbox("Hình Ảnh", $name, $properties));
    }

    public static function Keyword($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;
        $name = self::FormName . "[" . __FUNCTION__ . "]";
        return new \Model\FormRender(new Element\Textarea("Từ Khóa", $name, $properties));
    }

    public static function Name($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;
        $properties[\Model\FormRender::required] = "true";
        $name = self::FormName . "[" . __FUNCTION__ . "]";
        return new \Model\FormRender(new Element\Textbox("Tên Thương Hiệu", $name, $properties));
    }

    public static function Note($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;
        $name = self::FormName . "[" . __FUNCTION__ . "]";
        return new \Model\FormRender(new Element\Textarea("Ghi Chú", $name, $properties));
    }

    public static function Title($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;
        $name = self::FormName . "[" . __FUNCTION__ . "]";
        return new \Model\FormRender(new Element\Textarea("Tiêu Đề", $name, $properties));
    }

    public static function isDelete($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;
        $name = self::FormName . "[" . __FUNCTION__ . "]";
        return new \Model\FormRender(new Element\Select("Tình Trạng", $name, [-1 => "Đã Xóa", 1 => "Hiện", 0 => "Ẩn"], $properties));
    }

}
