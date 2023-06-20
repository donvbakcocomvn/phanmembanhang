<?php

namespace Module\cart\Model;

use Common\Common;
use Model\Products;

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
        if (!is_array($order)) {
            $order = $this->GetByOrderDetailById($order);
        }
        $this->Id = $order["Id"] ?? null;
        $this->Name = $order["Name"] ?? null;
        $this->IdProduct = $order["IdProduct"] ?? null;
        $this->CodeOrder = $order["CodeOrder"] ?? null;
        $this->Price = $order["Price"] ?? null;
        $this->Number = $order["Number"] ?? null;
    }

    public function ThanhTienNoFomat()
    {
        return $this->Price * $this->Number;
    }
    public function ThanhTien()
    {
        return Common::MoneyFomat($this->Price * $this->Number);
    }
     
    public function Order()
    {
        return new Order($this->CodeOrder);
    }
    public function Product()
    {
        return new Products($this->IdProduct);
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
