<?php

namespace Module\cart\Model;

class OrderDetail extends \Model\Database
{
    //orderdetail

    public $Id;
    public $Name;
    public $IdProduct;
    public $CodeOrder;
    public $Price;
    public $Number;

    function __construct($order = null)
    {
        parent::__construct();
    }

    public function GetOrderDetailByProductCodeOrder($oderId, $CodeSanPham)
    {
        $sql = "SELECT * FROM `" . table_prefix . "orderdetail` where `CodeOrder` = '{$oderId}' and `IdProduct` = '{$CodeSanPham}'";
        $this->Query($sql);
        return $this->fetchRow();
    }
    public function deleteOrderDetail($id)
    {
        $oddt = $this->GetByOrderDetailById($id);
        // var_dump($oddt);
        // $oddt["CodeOrder"]; 
        $this->delete(table_prefix . "orderdetail", "`Id` ='{$id}'");
        $oder  = new Order();
        return $oder->UpdateTongTien($oddt["CodeOrder"]);
    }
    public function GetByOrderDetailById($id)
    {
        $sql = "SELECT * FROM `" . table_prefix . "orderdetail` where `Id` = '{$id}'";
        $this->Query($sql);
        return $this->fetchRow();
    }
    public function UpdateOrderDetail($orderDetail)
    {
        $id = $orderDetail["Id"];
        $this->update(table_prefix . "orderdetail", $orderDetail, " `Id` = '{$id}'");
    }
    public function AddOrderDetail($orderDetail)
    {
        $id = $orderDetail["Id"];
        $this->insert(table_prefix . "orderdetail", $orderDetail);
    }
}
