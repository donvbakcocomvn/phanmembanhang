<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Categoryservice
 *
 * @author MSI
 */

namespace Model\Category;

class Categoryservice extends \Model\DB implements \Model\IModel {

    public function __construct() {
        \Model\DB::$TableName = table_prefix . "categories";
        parent::__construct();
    }

    //put your code here
    public function Delete($id) {

    }

    public function GetAllPT($name, &$total, $indexPage = 1, $pageNumber = 10) {

    }

    public function GetById($id) {

    }

    public function Post($model) {

    }

    public function Put($model) {

    }

    public static function ToSelect() {
        $a = new Categoryservice();
        $where = " `Public`  > 0 ";
        return $a->GetToSelect($where, ["catID", "catName"]);
    }

    public static function GetAllCategory2Select() {
        $a = new \Model\Category();
        $danhMuc = [];
        $a->GetAllCategory(0, $danhMuc, "--| ", [1, 0]);
        $b = [];
        foreach ($danhMuc as $value) {
            $b[$value["catID"]] = $value["catName"];
        }
        return $b;
    }

}
