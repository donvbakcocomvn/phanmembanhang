<?php

namespace Module\cart\Model;

use Model\DB;
use Model_OptionsService;

class BenhNhan extends \Model\Database
{
    public $MaBN;
    public $Sothe;
    public $HotenBN;
    public $Ngaysinh;
    public $Gioitinh;
    public $Diachi;
    public $Sodienthoai;
    public $SoCMT;
    public $Ngaycap;
    public $Noicap;
    public $Email;
    public $Nhommau;
    public $Tiensubenh;
    public $Soduthe;
    public function __construct($bn = null)
    {

        parent::$Tablename  = table_prefix . "benhnhan";
        parent::__construct();

        if (!is_array($bn)) {
            $id = $bn;
            $bn = $this->GetByMaBN($id);
            if ($bn == null) {
                $bn = $this->GetBySothe($id);
            }
        }

        $this->MaBN = $bn["MaBN"] ?? null;
        $this->Sothe = $bn["Sothe"] ?? null;
        $this->HotenBN = $bn["HotenBN"] ?? null;
        $this->Ngaysinh = $bn["Ngaysinh"] ?? null;
        $this->Gioitinh = $bn["Gioitinh"] ?? null;
        $this->Diachi = $bn["Diachi"] ?? null;
        $this->Sodienthoai = $bn["Sodienthoai"] ?? null;
        $this->SoCMT = $bn["SoCMT"] ?? null;
        $this->Ngaycap = $bn["Ngaycap"] ?? null;
        $this->Noicap = $bn["Noicap"] ?? null;
        $this->Email = $bn["Email"] ?? null;
        $this->Nhommau = $bn["Nhommau"] ?? null;
        $this->Tiensubenh = $bn["Tiensubenh"] ?? null;
        $this->Soduthe = $bn["Soduthe"] ?? null;
    }

    public function TitleData()
    {
        $a["MaBN"] = "Mã Bệnh Nhân";
        $a["Sothe"] = "Số Thẻ";
        $a["HotenBN"] = "Họ Tên BN";
        $a["Ngaysinh"] = "Ngày Sinh";
        $a["Gioitinh"] = "Giới Tính";
        $a["Diachi"] = "Địa Chỉ";
        $a["Sodienthoai"] = "SDT";
        $a["SoCMT"] = "SoCMT";
        $a["Ngaycap"] = "Ngày Cấp";
        $a["Noicap"] = "Nơi Cấp";
        $a["Email"] = "Email";
        $a["Nhommau"] = "Nhóm Máu";
        $a["Tiensubenh"] = "Khoa";
        $a["Soduthe"] = "Số Dư Thẻ";
        return $a;
    }
    public function GetByMaBN($id)
    {
        $where  = " `MaBN` = '{$id}' ";
        if ($this->select(self::$Tablename, [], $where)) {
            return $this->select(self::$Tablename, [], $where)[0];
        }
        return null;
    }

    public function KhoaBenh()
    {
        $m =  new Model_OptionsService();
        $a = $m->GetByKeyValue($this->Tiensubenh, "khoa");
        return new Model_OptionsService($a);
    }

    public function GetItems($params, $indexPage, $pageNumber, &$total)
    {
        $name = $params["name"] ?? "";
        $khoabenh = $params["khoabenh"] ?? "";
        $khoabenhsql = "";
        if ($khoabenh != "") {
            $khoabenhsql = " and `Tiensubenh` = '{$khoabenh}'";
        }
        $where  = " `Sothe` like '%{$name}%' {$khoabenhsql}";

        return $this->SelectPT($where, $indexPage, $pageNumber, $total);
    }
    public function GetDSMaThe()
    {
        // self::$Debug = true;
        $where  = " 1 = 1 ";
        self::SetTableName(self::$Tablename);
        return $this->select(self::$Tablename, ["Sothe"], $where);
    }

    public function ThanhToan()
    {
    }
    public function Post($item)
    {
        return $this->insert(self::$Tablename, $item);
    }
    public function Put($item)
    {
        $maBN = $item["MaBN"];
        return $this->update(self::$Tablename, $item, "`MaBN` ='{$maBN}' ");
    }
    public function GetBySothe($id)
    {
        $where  = " `Sothe` = '{$id}' ";
        if ($this->select(self::$Tablename, [], $where)) {
            return $this->select(self::$Tablename, [], $where)[0];
        }
        return null;
    }
    public function GetBySotheThanhToan($maThe)
    {
    }

    public function ToArray()
    {
        $a["MaBN"] = $this->MaBN ?? null;
        $a["Sothe"] = $this->Sothe ?? null;
        $a["HotenBN"] = $this->HotenBN ?? null;
        $a["Ngaysinh"] = $this->Ngaysinh ?? null;
        $a["Gioitinh"] = $this->Gioitinh ?? null;
        $a["Diachi"] = $this->Diachi ?? null;
        $a["Sodienthoai"] = $this->Sodienthoai ?? null;
        $a["SoCMT"] = $this->SoCMT ?? null;
        $a["Ngaycap"] = $this->Ngaycap ?? null;
        $a["Noicap"] = $this->Noicap ?? null;
        $a["Email"] = $this->Email ?? null;
        $a["Nhommau"] = $this->Nhommau ?? null;
        $a["Tiensubenh"] = $this->Tiensubenh ?? null;
        $a["Soduthe"] = $this->Soduthe ?? null;
        return $a;
    }

    public function CreateViewKhoaBenh()
    {
        $sql = <<<SQL
        DROP TABLE IF EXISTS `bakcodt_view_khoabenh`;
        DROP VIEW IF EXISTS `bakcodt_view_khoabenh`;
        CREATE VIEW `bakcodt_view_khoabenh`  AS SELECT DISTINCT  `Tiensubenh` AS `Name` FROM `bakcodt_benhnhan` ORDER BY `Tiensubenh` ASC ;
        COMMIT;
        DROP VIEW IF EXISTS `bakcodt_view_benhnhantheokhoa`;
        CREATE VIEW `bakcodt_view_benhnhantheokhoa`  AS SELECT  `Tiensubenh` AS `Name`, count(0) AS `BenhNhan` FROM `bakcodt_benhnhan` GROUP BY  `Tiensubenh` ;
        COMMIT;
SQL;
        $db = new DB();
        $db->runsqlConTent($sql);
    }

    public function BenhNhanTheoKhoaBenh()
    {
        $sql = "SELECT * FROM `bakcodt_view_benhnhantheokhoa`";
        $this->Query($sql);
        return $this->fetchAssoc();
    }
}
