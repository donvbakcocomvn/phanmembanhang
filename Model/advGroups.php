<?php

namespace Model;

class advGroups extends DB implements IModel
{

    public $Id;
    public $Name;
    public $Code;

    function __construct($adv = null)
    {
        parent::$TableName = table_prefix . "adv_groups";
        parent::__construct();
        if (!is_array($adv)) {
            $id = $adv;
            $adv = $this->GetById($id);
        }
        if ($adv) {
            $this->Id = $adv["Id"];
            $this->Name = $adv["Name"];
            $this->Code = $adv["Code"];
        }
    }

    public function Delete($id)
    {
        $where = "`Id` = '{$id}'";
        return $this->DeleteDB($where);
    }

    public function GetAll()
    {
        $where = " 1=1 ";
        return $this->Select($where);
    }

    public function GetAllPT($name, &$total, $indexPage = 1, $pageNumber = 10)
    {
        $where = "`Name` like '%{$name}%'";
        return $this->SelectPT($where, $indexPage, $pageNumber, $total);
    }

    public function GetById($id)
    {
        $where = "`Id` = '{$id}'";
        return $this->SelectRow($where);
    }

    public function Post($model)
    {
        return $this->Insert($model);
    }

    public function Put($model)
    {
        return $this->Update($model);
    }

    public static function ToSelect()
    {
        $where = " 1=1  ";
        $adv = new advGroups();
        return $adv->GetToSelect($where, ["Id", "Name"]);
    }
}
