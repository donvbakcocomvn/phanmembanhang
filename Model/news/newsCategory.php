<?php

namespace Model\news;

class newsCategory extends \Model\DB implements \Model\IModel {

    public $Id;
    public $Code;
    public $Name;
    public $Parents;
    public $isActive;
    public $Title;
    public $Des;
    public $Keyword;
    public $Content;
    public $Images;

    public function __construct($news = null) {
        parent::$TableName = table_prefix . "news_category";
        parent::__construct();
        if (!is_array($news)) {
            $id = $news;
            $news = $this->GetById($id);
        }
        if ($news) {
            $this->Id = isset($news["Id"]) ? $news["Id"] : null;
            $this->Code = isset($news["Code"]) ? $news["Code"] : null;
            $this->Name = isset($news["Name"]) ? $news["Name"] : null;
            $this->Parents = isset($news["Parents"]) ? $news["Parents"] : null;
            $this->Title = isset($news["Title"]) ? $news["Title"] : null;
            $this->isActive = isset($news["isActive"]) ? $news["isActive"] : null;
            $this->Des = isset($news["Des"]) ? $news["Des"] : null;
            $this->Keyword = isset($news["Keyword"]) ? $news["Keyword"] : null;
            $this->Content = isset($news["Content"]) ? $news["Content"] : null;
            $this->Images = isset($news["Images"]) ? $news["Images"] : null;
        }
    }

    public function Delete($id) {
        return $this->DeleteRowById($id);
    }

    public function GetAllPT($name, &$total, $indexPage = 1, $pageNumber = 10) {
        $where = "`Name` like '%{$name}%'";
        return $this->SelectPT($where, $indexPage, $pageNumber, $total);
    }

    public function GetById($id) {
        return $this->SelectById($id);
    }

    function IsActive() {
        return [1 => "Hiện", 0 => "Ẩn"];
    }

    public function Post($model) {
        return $this->Insert($model);
    }

    public function Put($model) {
        return $this->Update($model);
    }

    function GetCattegoryByParent($parent, &$danhSach, $PreString = "--| ") {
        $Cats = $this->GetByParent($parent);
        if ($Cats == null)
            return;
        foreach ($Cats as $item) {
            $item["Name"] = $PreString . $item["Name"];
            $danhSach[] = $item;
            $this->GetCattegoryByParent($item["Id"], $danhSach, $PreString . $PreString);
        }
    }

    public static function ToSelect() {

    }

    public function ToArrayApi() {
        return [
            "Id" => $this->Id,
            "Name" => $this->Name,
            "Code" => $this->Code,
            "Des" => $this->Des,
            "Keyword" => $this->Keyword,
            "Title" => $this->Title,
            "isActive" => $this->isActive,
        ];
    }

    public static function GetAllCategoryToSelect() {
        $Model = new newsCategory();
        $danhSach = [];
        $Model->GetCattegoryByParent(0, $danhSach);
        $danhSach1 = [];
        foreach ($danhSach as $key => $value) {
            $danhSach1[$value["Id"]] = $value["Name"];
        }
        return $danhSach1;
    }

    public function GetByParent($parent) {
        $where = " `Parents` = '{$parent}'";
        return $this->Select($where);
    }

    public function linkPut() {
        return "/newscategory/put/" . $this->Id;
    }

    public function linkDelete() {
        return "/newscategory/delete/" . $this->Id;
    }

}
