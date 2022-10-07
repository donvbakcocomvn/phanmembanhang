<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Model\ThanhToan;

use PFBC\Element;
use Model\FormRender;
use Model_OptionsService;

/**
 * Description of ThongTinBenhNhanForm
 *
 * @author MSI
 */
class FormThongTinBenhNhan
{

    static public $properties = ["class" => "form-control"];

    static function HoTen($val = "")
    {
        $properties = self::$properties;
        $properties["value"] = $val;
        $properties["class"] = "form-control text-uppercase";
        $properties["oninvalid"] = "this.setCustomValidity('Bạn chưa nhập họ và tên')";
        $properties["oninput"] = "this.setCustomValidity('')";
        $properties[FormRender::required] = "";

        return new FormRender(new Element\Textbox("Họ & Tên", "HoTen", $properties));
    }

    static function NgaySinh($val = "")
    {
        $properties = self::$properties;
        $properties["value"] = $val;
        $properties["type"] = "date";
        $properties[FormRender::required] = "";
        $properties["oninvalid"] = "this.setCustomValidity('Bạn chưa nhập ngày sinh')";
        $properties["oninput"] = "this.setCustomValidity('')";
        $properties["max"] = date("Y-m-d", time() - (18 * 24 * 365 * 3600));

        return new FormRender(new Element\Textbox("Ngày Sinh", "NgaySinh", $properties));
    }

    static function KhoaBenh($val = "")
    {
        $properties = self::$properties;
        $properties["value"] = $val;
        $properties[FormRender::required] = "";
        $properties["oninvalid"] = "this.setCustomValidity('Bạn chọn nhập khoa')";
        $properties["oninput"] = "this.setCustomValidity('')";
        $options = Model_OptionsService::GetGroupsToSelect("khoa");
        $options = ["" => "___Chọn khoa___"] + $options;

        return new FormRender(new Element\Select("Khoa", "Khoa", $options, $properties));
    }
}
