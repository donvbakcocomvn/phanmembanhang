<?php

namespace Model\Product;

use PFBC\Element;

class ProductForm implements ProductiForm {

    const FormName = "Product";

    public static $FormClass = ["class" => "form-control"];

    public function __construct() {

    }

    public static function Alias($val = null) {

    }

    public static function BuyTimes($val = null) {

    }

    public static function Content($val = null) {

    }

    public static function DateCreate($val = null) {

    }

    public static function ID($val = null) {

    }

    public static function Note($val = null) {

    }

    public static function Number($val = null) {

    }

    public static function Price($val = null) {

    }

    public static function Summary($val = null) {

    }

    public static function UrlHinh($val = null) {

    }

    public static function Username($val = null) {

    }

    public static function Views($val = null) {

    }

    public static function catID($val = null) {

    }

    public static function isShow($val = null) {

    }

    public static function lang($val = null) {

    }

    public static function nameProduct($val = null) {

    }

    public static function oldPrice($val = null) {

    }

    public static function brand($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;
        $brand = new \Model\Brand\BrandService();
        $brandOp = $brand->ToSelect();
        $name = self::FormName . "[" . __FUNCTION__ . "]";
        return new \Model\FormRender(new Element\Select("Thương Hiệu", $name, $brandOp, $properties));
    }

}
