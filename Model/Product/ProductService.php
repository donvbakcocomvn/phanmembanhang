<?php

namespace Model\Product;

class ProductService extends \Model\DB implements \Model\IModel {

    public function __construct() {
        \Model\DB::$TableName = table_prefix . "product";
        parent::__construct();
    }

    public function Delete($id) {
        $where = "`ID` = '{$id}'";
        return $this->UpdateDB($where);
    }

    public function GetAllByBrandPT($name, &$total, $indexPage = 1, $pageNumber = 10) {
        $indexPage = intval($indexPage);
        $pageNumber = intval($pageNumber);
        $sqlDanhMuc = "";
        $sqlTinhTrang = "";
        $sqlBrand = "";
        $Brand = FALSE;
        $DanhMuc = 0;
        if (!is_array($name)) {
            $name = $name;
        } else {
            $TinhTrang = isset($name['TinhTrang']) ? intval($name['TinhTrang']) : 0;
            $DanhMuc = isset($name['DanhMuc']) ? addslashes($name['DanhMuc']) : FALSE;
            $Brand = isset($name['Brand']) ? addslashes($name['Brand']) : FALSE;
            $name = isset($name['Name']) ? addslashes($name['Name']) : '';
        }
        if ($DanhMuc) {
            $sqlDanhMuc = "and `catID` = '{$DanhMuc}'";
        }
        if ($TinhTrang >= 0) {
            $sqlTinhTrang = "and `Number` > 0 ";
        }
        if ($Brand != FALSE) {
            $sqlBrand = "and `brand` = '{$Brand}'";
            if ($Brand == \Model\Brand\BrandService::NoBrand()) {
                $sqlBrand = "and (`brand` = '{$Brand}' or `brand` = '' or `brand` is null)";
            }
        }
        $where = "`nameProduct` like '%{$name}%' $sqlDanhMuc $sqlTinhTrang $sqlBrand";
        return $this->SelectPT($where, $indexPage, $pageNumber, $total);
    }

    public function GetAllPT($name, &$total, $indexPage = 1, $pageNumber = 10) {
        $sqlDanhMuc = "";
        $sqlTinhTrang = "";
        $sqlBrand = "";
        $Brand = FALSE;
        $DanhMuc = 0;
        if (!is_array($name)) {
            $name = $name;
        } else {
            $TinhTrang = isset($name['TinhTrang']) ? $name['TinhTrang'] : 0;
            $DanhMuc = isset($name['DanhMuc']) ? $name['DanhMuc'] : FALSE;
            $Brand = isset($name['Brand']) ? $name['Brand'] : FALSE;
            $name = isset($name['Name']) ? $name['Name'] : '';
        }

        if ($DanhMuc) {
            $sqlDanhMuc = "and `catID` = '{$DanhMuc}'";
        }
        if ($TinhTrang >= 0) {
            $sqlTinhTrang = "and `Number` = '{$TinhTrang}'";
        }
        if ($Brand != FALSE) {
            $sqlBrand = "and `brand` = '{$Brand}'";
        }
        $where = "`nameProduct` like '%{$name}%' $sqlDanhMuc $sqlTinhTrang $sqlBrand";
        return $this->SelectPT($where, $indexPage, $pageNumber, $total);
    }

    public function GetById($id) {
        $where = "`ID` = '{$id}'";
        return $this->Select($where);
    }

    public function Post($model) {
        return $this->Insert($model);
    }

    public function Put($model) {
        $where = "`ID` = '{$model["ID"]}'";
        return $this->Update($model, $where);
    }

    public static function ToSelect() {
        $a = new ProductService();
        $where = "1";
        return $a->GetToSelect($where, ["ID", "nameProduct"]);
    }

    public static function GetProductById($item) {
        $ps = new ProductService();
        return $ps->GetById($item);
    }

}
