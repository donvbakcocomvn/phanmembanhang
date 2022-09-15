<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

use Model\DB;

/**
 * Description of OptionsService
 *
 * @author MSI
 */
class Model_OptionsService extends DB
{

    public $Id;
    public $Name;
    public $Val;
    public $Des;
    public $GroupsId;

    public function __construct($op = null)
    {
        $tableName  = table_prefix . "options";
        parent::__construct($tableName);
        if ($op) {
            // var_dump($op);
            if (!is_array($op)) {
                $Id = $op;
                $op = $this->GetById($Id);
            }
            if ($op) {
                $this->Id = isset($op["Id"]) ? $op["Id"] : "";
                $this->Name = isset($op["Name"]) ? $op["Name"] : "";
                $this->Val = isset($op["Val"]) ? $op["Val"] : "";
                $this->Des = isset($op["Des"]) ? $op["Des"] : "";
                $this->GroupsId = isset($op["GroupsId"]) ? $op["GroupsId"] : "";
            }
        }
    }

    public function DeleteById($id)
    {
        return $this->DeleteRowById($id);
    }

    public function GetById($Id)
    {
        return $this->SelectById($Id);
    }
    public function GroupId()
    {
        return new Model_OptionsService($this->GroupsId);
    }

    public function GetItems($params, $indexPage, $pageNumber, &$total)
    {
        $where = "`GroupsId` = '{$params["GroupsId"]}' and `Name` like '%{$params["keyword"]}%'";
        return $this->SelectPT($where, $indexPage, $pageNumber, $total);
    }

    public function Post($model)
    {
        return $this->Insert($model);
    }

    public function Put($model)
    {
        return $this->Update($model, "`Id`= '{$model["Id"]}'");
    }

    public static function GetGroupsToSelect($idGroups)
    {
        $op = new Model_OptionsService();
        return $op->SelectToOptions("`GroupsId`= '{$idGroups}' ", ["Val", "Name"]);
    }

    public static function ToSelect()
    {
        $op = new Model_OptionsService();
        return $op->SelectToOptions("1=1", ["Val", "Name"]);
    }

    public function GroupsId()
    {
        return new Model_OptionsService($this->GroupsId);
    }

    public function GetByKeyValue($val, $idGroups)
    {
        $where = "`GroupsId` = '{$idGroups}' and `Val` = '{$val}'";
        return $this->SelectRow($where);
    }
    public static function GetByValueGroups($val, $idGroups)
    {
        $op = new Model_OptionsService();
        $where = "`GroupsId` = '{$idGroups}' and `Val` = '{$val}'";
        return $op->SelectRow($where);
    }
}
