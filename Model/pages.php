<?php

namespace Model;

class pages extends \Model\Database {

    public
            $idPa,
            $idGroup,
            $Name,
            $Alias,
            $Title,
            $Des,
            $Keyword,
            $Summary,
            $Content,
            $Urlimages,
            $isShow,
            $Type,
            $Note,
            $OrderBy;

    function __construct($menu = null) {
        if ($menu) {
            $this->idPa = $menu['idPa'];
            $this->idGroup = $menu['idGroup'];
            $this->Name = $menu['Name'];
            $this->Alias = $menu['Alias'];
            $this->Title = $menu['Title'];
            $this->Des = $menu['Des'];
            $this->Keyword = $menu['Keyword'];
            $this->Summary = $menu['Summary'];
            $this->Content = $menu['Content'];
            $this->Urlimages = $menu['Urlimages'];
            $this->isShow = $menu['isShow'];
            $this->Type = $menu['Type'];
            $this->Note = $menu['Note'];
            $this->OrderBy = $menu['OrderBy'];
        }

        parent::__construct();
//        $this->capnhatAllPages();
    }

    function editPages($Page) {
        $Page["Alias"] = $this->bodautv($Page["Name"]);
        return parent::editPages($Page);
    }

    function linkPagesCurent() {
        if ($this->Type == 1) {
            return "/page-" . $this->Alias . "/";
        }
        return "/page-" . $this->Alias . ".html";
    }

    function AddPages($data) {
        $data["Alias"] = $this->bodautv($data["Name"]);
        return parent::AddPages($data);
    }

    function DeletePages($Id) {
        return parent::DeletePages($Id);
    }

    function Pages($isobj = true) {
        return parent::Pages($isobj);
    }

    function PagesMin($isobj = true) {
        return parent::PagesMin();
    }

    function PagesByGroup($group, $isobj = true) {
        return parent::PagesByGroup($group, $isobj);
    }

    function PagesByAlias($alias, $isobj = true) {
        return parent::PagesByAlias($alias, $isobj);
    }

    function Breadcrumb($id) {
        $listCat = [];
        $a = [];
        $pages = $this->PagesById($id, FALSE);
        $pa = new \Model\pages($pages);
        $a[0]["link"] = $pa->linkPagesCurent();
        $a[0]["title"] = $pa->Name;
        return $a;
    }

    function PagesById($id, $isobj = true) {
        return parent::PagesById($id, $isobj);
    }

    function PagesInHome($PK, $isobj = true) {
//        return  array
        return parent::PagesByPK(" `Note` like '%ShowInHome___1%' ");
    }

    function capnhatAllPages() {
        $a = $this->Pages(FALSE);
        foreach ($a as $v) {
            $mp = new \Model\pages($v);
            $v["Alias"] = $mp->bodautv($v["Name"]);
            $this->editPages($v);
        }
    }

}
