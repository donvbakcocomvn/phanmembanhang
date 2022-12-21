<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Model;

/**
 * Description of Response
 *
 * @author MSI
 */
class Response
{

    const OK = "OK";
    public $rows;
    public $items;
    public $params;
    public $mess;
    public $status;
    public $index;
    public $number;
    public $totalrows;
    public $totalPage;

    public function __construct($items = null)
    {
        $this->rows = $items["rows"] ?? null;
        $this->items = $items["items"] ?? null;
        $this->mess = $items["mess"] ?? null;
        $this->status = $items["status"] ?? null;
        $this->params = $items["params"] ?? null;
        $this->index = $items["index"] ?? null;
        $this->number = $items["number"] ?? null;
        $this->totalrows = $items["totalrows"] ?? null;
        $this->totalPage = $items["totalPage"] ?? null;
    }

    public function SendResponse()
    {
    }

    public static function ToJson($items)
    {
        return json_encode($items, JSON_UNESCAPED_UNICODE);
    }
    public function ToAray()
    {
        return (array) $this;
    }
}
