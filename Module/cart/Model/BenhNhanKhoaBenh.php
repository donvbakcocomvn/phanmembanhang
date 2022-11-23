<?php

namespace Module\cart\Model;

use Model\DB;

class BenhNhanKhoaBenh extends DB
{
    public $Name;

    public function __construct($bn = null)
    {
        $tableName  = table_prefix . "view_khoabenh";
        parent::__construct($tableName);

        $this->Name = $bn["MaBN"] ?? null;
    }

    public function GetItems($params, $indexPage, $pageNumber, &$total)
    {
        $where = "1 =1";
        return $this->SelectPT($where, $indexPage, $pageNumber, $total);
    }

    static  public function ToSelect()
    {
        $db = new BenhNhanKhoaBenh();
        return $db->GetToSelect("1=1", ["Name", "Name"]);
    }
}
