<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Module\cart\Model;

/**
 * Description of CartController
 *
 * @author MSI
 */
class CartLinkAction extends \Model\Products {

    public function __construct($p) {
        parent::__construct($p);
    }

    function linkPlusNumberProduct() {
        return "/cart/index/addproduct/" . $this->ID;
    }

    function linkRemoveProduct() {
        return "/cart/index/removeproduct/" . $this->ID;
    }

}
