<?php

namespace Model\news;

use PFBC\Element;

class newsCategoryForm implements \Model\news\newsCategoryIForm {

    const FormName = "newsCategory";

    public static $FormClass = ["class" => "form-control"];

    public function __construct() {

    }

    public static function Code($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;
        $name = self::FormName . "[" . __FUNCTION__ . "]";
        return new \Model\FormRender(new Element\Textbox("Mã Danh Mục", $name, $properties));
    }

    public static function Content($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;
        $name = self::FormName . "[" . __FUNCTION__ . "]";
        return new \Model\FormRender(new Element\Textarea("Nội Dung", $name, $properties));
    }

    public static function Des($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;
        $properties["rows"] = 3;
        $name = self::FormName . "[" . __FUNCTION__ . "]";
        return new \Model\FormRender(new Element\Textarea("Mô Tả", $name, $properties));
    }

    public static function Id($val = null) {
        $name = self::FormName . "[" . __FUNCTION__ . "]";
        return new \Model\FormRender(new Element\Hidden($name, $val));
    }

    public static function Images($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;
        $properties[\Model\FormRender::readonly] = $val;
        $properties["id"] = __FUNCTION__;
        $name = self::FormName . "[" . __FUNCTION__ . "]";
        return new \Model\FormRender(new Element\Textbox("Hình Ảnh", $name, $properties));
    }

    public static function SelectImages($idInput = "HinhImages", $folder = "/baiviet/", $idImages = "idImages") {
        $properties["class"] = "btn btn-success";
        $properties["onclick"] = "BrowseServerShowImages('Images:{$folder}', '{$idInput}','{$idImages}')";
        $name = self::FormName . "[" . __FUNCTION__ . "]";
        return new \Model\FormRender(new Element\Button("Chọn Hình", "Button", $properties));
    }

    public static function Keyword($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;
        $properties["rows"] = 3;
        $name = self::FormName . "[" . __FUNCTION__ . "]";
        return new \Model\FormRender(new Element\Textarea("Từ Khóa", $name, $properties));
    }

    public static function Name($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;
        $properties[\Model\FormRender::required] = $val;
        $name = self::FormName . "[" . __FUNCTION__ . "]";
        return new \Model\FormRender(new Element\Textbox("Tên Danh Mục", $name, $properties));
    }

    public static function Parents($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;
        $name = self::FormName . "[" . __FUNCTION__ . "]";
        $options = newsCategory::GetAllCategoryToSelect();
        $options = ["0" => "Cấp Cha"] + $options;
        return new \Model\FormRender(new Element\Select("Cấp Cha", $name, $options, $properties));
    }

    public static function isActive($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;
        $name = self::FormName . "[" . __FUNCTION__ . "]";
        $options = [1 => "Hiện", 0 => "Ẩn"];
        return new \Model\FormRender(new Element\Select("Active", $name, $options, $properties));
    }

    public static function Title($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;
        $properties["rows"] = 3;
        $name = self::FormName . "[" . __FUNCTION__ . "]";
        return new \Model\FormRender(new Element\Textarea("Title", $name, $properties));
    }

}
