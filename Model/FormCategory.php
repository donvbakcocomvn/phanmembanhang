<?php
namespace Model;

use PFBC\Element\Textbox;

class FormCategory
{

    public static $FormData = [];

    function __construct($formData)
    {
        self::$FormData = $formData;
    }

    function GetValue($val, $name)
    {
        if ($val === null) {
            return self::$FormData[$name] ?? null;
        }
        return $val;
    }
    function GetLable($nameLable)
    {
        return $nameLable;
    }
    function GetName($name)
    {
        return $name;
    }
    public function catID($val = null, $prop = [])
    {
        $prop["value"] = $this->GetValue($val, __FUNCTION__);
        return new FormRender(
            new Textbox(
                $this->GetLable(__FUNCTION__),
                $this->GetName(__FUNCTION__),
                $prop
            )
        );
    }
    public function catName($val = null, $prop = [])
    {
        $prop["value"] = $this->GetValue($val, __FUNCTION__);
        return new FormRender(
            new Textbox(
                $this->GetLable(__FUNCTION__),
                $this->GetName(__FUNCTION__),
                $prop
            )
        );
    }
    public function Code($val = null, $prop = [])
    {
        $prop["value"] = $this->GetValue($val, __FUNCTION__);
        return new FormRender(
            new Textbox(
                $this->GetLable(__FUNCTION__),
                $this->GetName(__FUNCTION__),
                $prop
            )
        );
    }
    public function Note($val = null, $prop = [])
    {
        $prop["value"] = $this->GetValue($val, __FUNCTION__);
        return new FormRender(
            new Textbox(
                $this->GetLable(__FUNCTION__),
                $this->GetName(__FUNCTION__),
                $prop
            )
        );
    }
    public function parentCatID($val = null, $prop = [])
    {
        $prop["value"] = $this->GetValue($val, __FUNCTION__);
        return new FormRender(
            new Textbox(
                $this->GetLable(__FUNCTION__),
                $this->GetName(__FUNCTION__),
                $prop
            )
        );
    }
    public function banner($val = null, $prop = [])
    {
        $prop["value"] = $this->GetValue($val, __FUNCTION__);
        return new FormRender(
            new Textbox(
                $this->GetLable(__FUNCTION__),
                $this->GetName(__FUNCTION__),
                $prop
            )
        );
    }
    public function Public ($val = null, $prop = [])
    {
        $prop["value"] = $this->GetValue($val, __FUNCTION__);
        return new FormRender(
            new Textbox(
                $this->GetLable(__FUNCTION__),
                $this->GetName(__FUNCTION__),
                $prop
            )
        );
    }
    public function Path($val = null, $prop = [])
    {
        $prop["value"] = $this->GetValue($val, __FUNCTION__);
        return new FormRender(
            new Textbox(
                $this->GetLable(__FUNCTION__),
                $this->GetName(__FUNCTION__),
                $prop
            )
        );
    }
    public function Link($val = null, $prop = [])
    {
        $prop["value"] = $this->GetValue($val, __FUNCTION__);
        return new FormRender(
            new Textbox(
                $this->GetLable(__FUNCTION__),
                $this->GetName(__FUNCTION__),
                $prop
            )
        );
    }
    public function Serial($val = null, $prop = [])
    {
        $prop["value"] = $this->GetValue($val, __FUNCTION__);
        return new FormRender(
            new Textbox(
                $this->GetLable(__FUNCTION__),
                $this->GetName(__FUNCTION__),
                $prop
            )
        );
    }

}


?>