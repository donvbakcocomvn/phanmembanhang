<?php

namespace Module\cart\Model;

class OrderService extends \Model\DB implements \Model\IModelStatic
{

    public function __construct()
    {
        parent::$TableName = table_prefix . "order";
        parent::__construct();
    }

    public function Init()
    {
        parent::$TableName = table_prefix . "order";
        parent::__construct();
    }

    public function GetOrderBySaler($params, &$total, $indexPage = 1, $pageNumber = 10)
    {
        $saler = isset($params["Saler"]) ? $params["Saler"] : null;
        $Status = isset($params["Status"]) ? $params["Status"] : null;
        $Keyword = isset($params["Keyword"]) ? $params["Keyword"] : null;
        $sqlKeyword = "";
        $sqlStatus = "";
        if ($Status != "all") {
            $Status = intval($Status);
            $sqlStatus = " and `Status` = '{$Status}'";
        }
        if ($Keyword) {
            $sqlKeyword = " and (`Id` like '%{$Keyword}%' or `Email` like '%{$Keyword}%' or `Phone` like '%{$Keyword}%')";
        }
        $salerSql = " 1 = 1";
        if ($saler) {
            $salerSql = "`Saler` = '{$saler}'";
        }
         $where = " $salerSql $sqlStatus $sqlKeyword order by `NgayTao` desc";
        return $this->SelectPT($where, $indexPage, $pageNumber, $total);
    }

    static public function GetByCodeOrder($id)
    {
        $orderCode = new OrderService();
        $where = "`CodeOrder` = '{$id}'";
        return $orderCode->SelectRow($where);
    }

    public function ToSelect()
    {
    }

    public static function Delete($id)
    {
        $orderCode = new OrderService();
        return $orderCode->DeleteRowById($id);
    }

    public static function GetAllPT($name, &$total, $indexPage = 1, $pageNumber = 10)
    {
        $orderCode = new OrderService();
        $where = "1=1";
        return $orderCode->SelectPT($where, $indexPage, $pageNumber, $total);
    }

    public static function GetById($id)
    {
        $orderCode = new OrderService();
        return $orderCode->SelectById($id);
    }

    public static function Post($model)
    {
        $orderCode = new OrderService();
        return $orderCode->Insert($model);
    }

    public static function Put($model)
    {
        $orderCode = new OrderService();
        return $orderCode->Update($model);
    }
}
