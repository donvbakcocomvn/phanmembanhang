<?php

namespace Model;

class news extends \Model\Database {

    public
            $ID,
            $PageID,
            $Name,
            $Alias,
            $Summary,
            $Content,
            $title,
            $keyword,
            $description,
            $AnHien,
            $NgayDang,
            $UrlHinh,
            $TinNoiBat,
            $SoLanXem,
            $Stt;
    private $TableName;

    function __construct($menu = null) {
        if ($menu) {
            $this->ID = $menu['ID'];
            $this->PageID = $menu['PageID'];
            $this->Name = $menu['Name'];
            $this->Alias = $menu['Alias'];
            $this->Summary = $menu['Summary'];
            $this->Content = $menu['Content'];
            $this->title = $menu['title'];
            $this->keyword = $menu['keyword'];
            $this->description = $menu['description'];
            $this->AnHien = $menu['AnHien'];
            $this->NgayDang = $menu['NgayDang'];
            $this->UrlHinh = $menu['UrlHinh'];
            $this->TinNoiBat = $menu['TinNoiBat'];
            $this->SoLanXem = $menu['SoLanXem'];
            $this->Stt = $menu['Stt'];
        }
        parent::__construct();
        $this->TableName = table_prefix . "news";
    }

    function createNewsID() {
        return time() . $this->RandomString(8);
    }

    function linkNewsCurent() {
        $p = new pages();
        $_p = $p->PagesById($this->PageID, FALSE);
        $p1 = new pages($_p);
        return $p1->linkPagesCurent() . $this->Alias . ".html";
    }

    function NewsHot() {
        return $this->select($this->TableName, [], " `TinNoiBat` = '1' and `AnHien` = 1 ");
    }

    function NewsPT() {

        return $this->select($this->TableName, [], " 1 ");
    }

    public function GetAllPT($name, $indexpage, $pageNumber, &$total) {
        $where = "`PageID` = '{$name}' or `Name` like '%{$name}%'";
        return $this->SelectPT($where, $indexpage, $pageNumber, $total);
    }

    function Thumnail() {
        $lib = new \lib\imageComp();
        return "/" . $lib->layHinh($this->UrlHinh, 250, 250, true);
    }

}
