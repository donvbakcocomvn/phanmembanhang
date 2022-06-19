<?php

namespace Model\TinhThanh;

class TinhThanh extends \Model\DB implements \Model\IModel {

    public $Id;
    public $Name;
    public $Parents;
    public $isActive;
    public $Note;

    public function __construct($tinhThanh = null) {
        self::$TableName = table_prefix . "tinhthanh";
        parent::__construct();
        if ($tinhThanh) {
            if (!is_array($tinhThanh)) {
                $id = $tinhThanh;
                $tinhThanh = $this->GetById($id);
            }
            if ($tinhThanh) {
                $this->Id = isset($tinhThanh["Id"]) ? $tinhThanh["Id"] : null;
                $this->Name = isset($tinhThanh["Name"]) ? $tinhThanh["Name"] : null;
                $this->Parents = isset($tinhThanh["Parents"]) ? $tinhThanh["Parents"] : null;
                $this->isActive = isset($tinhThanh["isActive"]) ? $tinhThanh["isActive"] : null;
                $this->Note = isset($tinhThanh["Note"]) ? $tinhThanh["Note"] : null;
            }
        }
    }

    public function Delete($id) {

    }

    public function GetAllPT($name, &$total, $indexPage = 1, $pageNumber = 10) {
        $where = "`Name` like '%{$name}%'";
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
        return $this->Update($model);
    }

    public static function ToSelect() {
        $tt = new TinhThanh();
        $where = "1=1";
        $tt->Select($where, ["Id", "Name"]);
    }

    public function GetByParentActive($id) {
        $where = "`Parents` = '{$id}' and `isActive` = '1'";
        return $this->Select($where);
    }

    public function Parents() {
        if ($this->Parents == 0) {
            return new TinhThanh();
        }
        return new TinhThanh($this->Parents);
    }

    public function isActive() {
        return $this->isActive == 0 ? "Ẩn" : "Hiện";
    }

}
