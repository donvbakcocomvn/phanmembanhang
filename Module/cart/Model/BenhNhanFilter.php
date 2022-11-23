<?php

namespace Module\cart\Model;

use Model\DB;
use PFBC\Element\Select;
use PFBC\Element\Textbox;

class BenhNhanFilter extends \Model\Database
{
    const FormName = "BenhNhanFilter";

    public static $FormClass = ["class" => "form-control"];

    public static function khoabenh($val = null)
    {
        $properties = self::$FormClass;
        $properties["value"] = $val;
        $name =  __FUNCTION__;
        $options = BenhNhanKhoaBenh::ToSelect();
        return new \Model\FormRender(new Select("Mô Tả", $name, $options, $properties));
    }
}
