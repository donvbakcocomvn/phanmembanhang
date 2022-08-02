<?php

namespace Model\ThanhToan;
 
class BenhNhan
{
    public $MaBN; //String
    public $Tiensubenh; //String
    public $Khoa; //String
    public $Nhommau; //String
    public $Soduthe; //int
    public $Sothe; //String
    public $HotenBN; //String
    public $Ngaysinh; //Date
    public $Gioitinh; //boolean 
    public $Diachi; //String
    public $Sodienthoai; //String
    public $SoCMT; //String
    // public $Ngaycap; //String
    // public $Noicap; //String
    public $Email; //String
    

    /**
     * params:$ttbn
     */
    function __construct($ttbn = null)
    {
        if (is_array($ttbn)) {
            $this->MaBN = $ttbn["MaBN"] ?? null;
            $this->Sothe = $ttbn["Sothe"] ?? null;
            $this->HotenBN = $ttbn["HotenBN"] ?? null;
            $this->Ngaysinh = $ttbn["Ngaysinh"] ?? null;
            $this->Gioitinh = $ttbn["Gioitinh"] ?? null;
            $this->Diachi = $ttbn["Diachi"] ?? null;
            $this->Sodienthoai = $ttbn["Sodienthoai"] ?? null;
            $this->SoCMT = $ttbn["SoCMT"] ?? null;
            // $this->Ngaycap = $ttbn["Ngaycap"] ?? null;
            // $this->Noicap = $ttbn["Noicap"] ?? null;
            $this->Email = $ttbn["Email"] ?? null;
            $this->Nhommau = $ttbn["Nhommau"] ?? null;
            $this->Tiensubenh = $ttbn["Tiensubenh"] ?? null;
            $this->Khoa = $ttbn["Tiensubenh"] ?? null;
            $this->Soduthe = $ttbn["Soduthe"] ?? null;
        }
    }
  static public function Title()
    {
        $a["MaBN"] ="ID";
        $a["Sothe"] ="Số Thẻ";
        $a["HotenBN"] ="Họ Tên Bệnh Nhân";
        $a["Ngaysinh"] ="Ngày Sinh";
        $a["Gioitinh"] ="Giới Tính";
        $a["Diachi"] ="Địa Chỉ";
        $a["Sodienthoai"] ="Số Điện Thoại";
        $a["SoCMT"] ="Số CMT";
        $a["Ngaycap"] ="Ngày cấp";
        $a["Noicap"] ="Nơi cấp";
        $a["Email"] ="Email";
        $a["Nhommau"] ="Mã bệnh nhân";
        $a["Tiensubenh"] ="Khoa";
        $a["Khoa"] ="Khoa";
        $a["Soduthe"] ="Số dư thẻ";
        return $a;
    }

    public static function methodToLable($str)
    { 
        $a = self::Title();
        foreach ($a as $key => $value) {
            $str = str_replace($key,$value,$str);
        }
        return $str;
    }

}
