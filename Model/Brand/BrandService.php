<?php

namespace Model\Brand;

class BrandService extends \Model\DB implements \Model\IModel {

    public $Id;
    public $Name;
    public $Images;
    public $Note;
    public $Desc;
    public $Title;
    public $Keyword;
    public $isDelete;

    public function __construct($brand = null) {
//        $this->Install();
        if ($brand) {
            $this->Id = !empty($brand["Id"]) ? $brand["Id"] : null;
            $this->Name = !empty($brand["Name"]) ? $brand["Name"] : null;
            $this->Images = !empty($brand["Images"]) ? $brand["Images"] : null;
            $this->Note = !empty($brand["Note"]) ? $brand["Note"] : null;
            $this->Desc = !empty($brand["Desc"]) ? $brand["Desc"] : null;
            $this->Title = !empty($brand["Title"]) ? $brand["Title"] : null;
            $this->Keyword = !empty($brand["Keyword"]) ? $brand["Keyword"] : null;
            $this->isDelete = !empty($brand["isDelete"]) ? $brand["isDelete"] : 0;
        }
        \Model\DB::$TableName = "bakcodt_brand";
        parent::__construct();
    }

    static function NoBrand() {
        return "12ec016f-e6d0-11eb-998b-005056b633ed";
    }

    function Install() {
        $fileName = __DIR__ . "/brand.sql";
        self::runsqlFile($fileName);
    }

    public function Delete($id) {
        $where = "`Id` = '{$id}'";
        return $this->UpdateDB($where);
    }

    public function GetAllPT($name, &$total, $indexPage = 1, $pageNumber = 10) {
        $where = "`Name` like '%$name%' ";
        return $this->SelectPT($where, $indexPage, $pageNumber, $total);
    }

    public function GetById($id) {
        $where = "`Id` = '{$id}'";
        return $this->SelectRow($where);
    }

    public function Post($model) {
        return $this->Insert($model);
    }

    public function Put($model) {
        $where = "`Id` = '{$model["Id"]}'";
        return $this->Update($model, $where);
    }

    public static function ToSelect() {
        $brand = new BrandService();
        $where = " `isDelete` >= 0 ";
        return $brand->GetToSelect($where, ["Id", "Name"]);
    }

    function linkPut() {
        return "/brand/put/" . $this->Id;
    }

    function linkDelete() {
        return "/brand/delete/" . $this->Id;
    }

    public function linkThuongHieu() {

        return "/thuonghieu/index/?brand=" . $this->Id;
    }

}
