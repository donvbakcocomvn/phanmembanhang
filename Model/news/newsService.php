<?php

namespace Model\news;

class newsService extends \Model\DB implements \Model\IModel {

    public $ID;
    public $PageID;
    public $Name;
    public $Alias;
    public $Summary;
    public $Content;
    public $title;
    public $keyword;
    public $description;
    public $AnHien;
    public $NgayDang;
    public $UrlHinh;
    public $TinNoiBat;
    public $SoLanXem;
    public $Stt;

    public function __construct($news = null) {
        parent::$TableName = table_prefix . "news";
        parent::__construct();
        if (!is_array($news)) {
            $id = $news;
            $news = $this->GetById($id);
        }
        if ($news) {
            $this->ID = isset($news["ID"]) ? $news["ID"] : null;
            $this->PageID = isset($news["PageID"]) ? $news["PageID"] : null;
            $this->Name = isset($news["Name"]) ? $news["Name"] : null;
            $this->Alias = isset($news["Alias"]) ? $news["Alias"] : null;
            $this->Summary = isset($news["Summary"]) ? $news["Summary"] : null;
            $this->Content = isset($news["Content"]) ? $news["Content"] : null;
            $this->title = isset($news["title"]) ? $news["title"] : null;
            $this->keyword = isset($news["keyword"]) ? $news["keyword"] : null;
            $this->description = isset($news["description"]) ? $news["description"] : null;
            $this->AnHien = isset($news["AnHien"]) ? $news["AnHien"] : null;
            $this->NgayDang = isset($news["NgayDang"]) ? $news["NgayDang"] : null;
            $this->UrlHinh = isset($news["UrlHinh"]) ? $news["UrlHinh"] : null;
            $this->TinNoiBat = isset($news["TinNoiBat"]) ? $news["TinNoiBat"] : null;
            $this->SoLanXem = isset($news["SoLanXem"]) ? $news["SoLanXem"] : null;
            $this->Stt = isset($news["Stt"]) ? $news["Stt"] : null;
        }
    }

    public function Delete($id) {
        return $this->DeleteRowById($id);
    }

    public function GetAllPT($params, &$total, $indexPage = 1, $pageNumber = 10) {
        $name = isset($params["name"]) ? $params["name"] : '';
        $isShow = isset($params["isShow"]) ? $params["isShow"] : '1';
        $isShowSql = "and `AnHien` = '{$isShow}'";
        if (strtolower($isShow) == "all") {
            $isShowSql = "";
        }
        $namesql = "(`Name` like '%{$name}%' or `Summary` like '%{$name}%' or `Alias` like '%{$name}%')";

        $where = "$namesql $isShowSql";
        return $this->SelectPT($where, $indexPage, $pageNumber, $total);
    }

    public function GetById($id) {
        return $this->SelectById($id);
    }

    public function Post($model) {

        return $this->Post($model);
    }

    public function Put($model) {
        $where = "`ID` = '{$model["ID"]}'";
        return $this->Update($model, $where);
    }

    public static function ToSelect() {

    }

    public function ToArray() {
        return [
            "ID" => $this->ID,
            "Name" => $this->Name,
            "PageID" => $this->PageID,
            "Page" => $this->Page(),
            "NgayDang" => $this->NgayDang(),
            "AnHien" => $this->AnHien,
            "AnHienTitle" => $this->AnHien(),
            "SoLanXem" => $this->SoLanXem,
            "Stt" => $this->Stt,
            "Alias" => $this->Alias,
            "TinNoiBat" => $this->TinNoiBat,
        ];
    }

    public static function ToApi($dataNews) {
        foreach ($dataNews as $k => $value) {
            $_news = new newsService($value);
            $dataNews[$k] = $_news->ToArray();
        }
        return $dataNews;
    }

    public function NgayDang() {
        return date("d-m-Y H:i:s", strtotime($this->NgayDang));
    }

    public function AnHien() {
        return $this->AnHien == 0 ? "Ẩn" : "Hiện";
    }

    public function Page() {
        return new newsCategory($this->PageID);
    }

}
