<?php

namespace Module\duser\Model;

use Model\FormRender;
use Model_OptionsService;
use PFBC\Element\Select;
use PFBC\Element\Textbox;
use PFBC\Element\Textarea;

class FormUser
{
    const FormName = "user";
    const prop = ["class" => "form-control"];

    public function __construct()
    {
    }

    public static function GetName($nameElement)
    {
        $formName = self::FormName;
        return "{$formName}[{$nameElement}]";
    }
    public static function KhoaBenh($val = null)
    {
        $prop = self::prop;
        $prop["value"] = $val;
        $name = self::GetName(__FUNCTION__);
        $options = Model_OptionsService::GetGroupsToSelect("khoa");
        $options = ["" => "Chọn khoa"] + $options;
        return new FormRender(new Select("Khoa", $name, $options, $prop));
    }
    public static function Address($val = null)
    {
        $prop = self::prop;
        $prop["value"] = $val;
        $name = self::GetName(__FUNCTION__);
        return new FormRender(new Textbox("Địa Chỉ", $name, $prop));
    }
    public static function Note($val = null)
    {
        $prop = self::prop;
        $prop["value"] = $val;
        $name = self::GetName(__FUNCTION__);
        return new FormRender(new Textarea("Ghi Chú", $name, $prop));
    }
    public static function Groups($val = null)
    {
        $prop = self::prop;
        $prop["value"] = $val;
        $name = self::GetName(__FUNCTION__);
        $duser = new Duser();
        $options = $duser->getGroupsUser();
        return new FormRender(new Select("Nhóm", $name, $options, $prop));
    }
}
