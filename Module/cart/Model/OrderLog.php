<?php

namespace Module\cart\Model;

/**
 * Description of Order
 *
 * @author MSI
 */
class OrderLog extends \Model\DB implements \Model\IModel {

    //put your code here

    public $Id;
    public $Name;
    public $OrderId;
    public $Status;
    public $Content;
    public $Saler;
    public $DateCreate;

    function __construct($order = null) {
        parent::$TableName = table_prefix . "order_log";
        parent::__construct();
        if ($order) {
            if (!is_array($order)) {
                $order = $this->orderbyid($order)[0];
            }
            $this->Id = isset($order["Id"]) ? $order["Id"] : null;
            $this->Name = isset($order["Name"]) ? $order["Name"] : null;
            $this->OrderId = isset($order["OrderId"]) ? $order["OrderId"] : null;
            $this->Status = isset($order["Status"]) ? $order["Status"] : null;
            $this->Content = isset($order["Content"]) ? $order["Content"] : null;
            $this->Saler = isset($order["Saler"]) ? $order["Saler"] : null;
            $this->DateCreate = isset($order["DateCreate"]) ? $order["DateCreate"] : null;
        }
    }

    public function Delete($id) {

    }

    public function GetAllPT($name, &$total, $indexPage = 1, $pageNumber = 10) {
        $where = "`Name` = '{$name}'";
        return $this->SelectPT($where, $indexPage, $pageNumber, $total);
    }

    public function GetById($id) {
        $where = "`Id` = '{$id}'";
        return $this->SelectRow($where);
    }

    public function GetByOrderId($id) {
        $where = "`OrderId` = '{$id}'";
        return $this->Select($where);
    }

    static public function CreateLog($status, $name, $content, $orderId, $saler) {
        $model["Id"] = \lib\Common::guidv4();
        $model["Name"] = \Model\CheckInput::Input($name);
        $model["OrderId"] = $orderId;
        $model["Status"] = $status;
        $model["Content"] = \Model\CheckInput::Input($content);
        $model["Saler"] = $saler;
        $model["DateCreate"] = date("Y-m-d H:i:s", time());
        $orderLog = new OrderLog();
        return $orderLog->Post($model);
    }

    public function Post($model) {
        return $this->Insert($model);
    }

    public function Put($model) {
        return $this->Update($model);
    }

    public static function ToSelect() {

    }

}
