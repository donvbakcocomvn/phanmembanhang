<?php

namespace Module\cart\Model;

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

    public function GetByMaBN($id)
    {
        $where  = " `MaBN` = '{$id}' ";
        if ($this->select(self::$Tablename, [], $where)) {
            return $this->select(self::$Tablename, [], $where)[0];
        }
        return null;
    }

    public function GetItems($params, $indexPage, $pageNumber, &$total)
    {
        $name = $params["name"] ?? "";
        $where  = " 1 = 1 ";
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
}
