<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Model;

/**
 * Description of modelResApi
 *
 * @author MSI
 */
class modelResApi {

    const Success = 200;
    const ErrorUnauthorized = 401;
    const ErrorForbidden = 403;
    const ErrorBadRequest = 400;

    public $pagesNumber = 1;
    public $pagesIndex = 1;
    public $data = 1;
    public $status = 200;
    public $total = 1;
    public $params = 1;

    public function __construct() {

    }

    function ToArray() {
        $model["pagesTotal"] = ceil($this->total / $this->pagesNumber);
        $model["pagesNumber"] = $this->pagesNumber;
        $model["pagesIndex"] = $this->pagesIndex;
        $model["data"] = $this->data;
        $model["total"] = $this->total;
        $model["status"] = $this->status;
        $model["params"] = $this->params;
        return $model;
    }

}
