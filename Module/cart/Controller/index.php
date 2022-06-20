<?php

namespace Module\cart\Controller;

class index extends \Controller_index
{

    public $Product;
    public $Cart;
    public $Breadcrumb;

    function __construct()
    {
        parent::__construct();
        $this->Breadcrumb = new \Model\Breadcrumb();
        $this->Bread[] = [
            "title" => "Giỏ hàng",
            "link" => "/cart/"
        ];
        $this->Product = new \Model\Products();
        $this->Cart = new \Module\cart\Model\Cart();
    }

    function index()
    {
        $this->Breadcrumb->setBreadcrumb($this->Bread);
        $this->ViewThemeModule("", "", "");
    }

    function addproduct()
    {
        try {

            $id = $this->param[0];
            $p = $this->Product->ProductsByID($id, FALSE);
            if ($p["Number"] == 0) {
                throw new \Exception("Đã Hết Hàng");
            }
            $p["Summary"] = "";
            $p["Content"] = "";
            $p["Number"] = 1;
            if (!$this->Cart->CheckCart($id)) {
                $this->Cart->addProduct2Cart($p);
            } else {
                $this->Cart->plusNumberProduct($id);
            }
            \Model\ThongBao::SetThongBao([\Model\ThongBao::Success, "Đã Thêm Giỏ Hàng"]);
        } catch (\Exception $exc) {
            \Model\ThongBao::SetThongBao([\Model\ThongBao::Danger, $exc->getMessage()]);
        }
        $this->Cart->_header($_SERVER["HTTP_REFERER"]);
    }

    function muaNhanh()
    {
        $id = $this->param[0];
        $p = $this->Product->ProductsByID($id, FALSE);
        $p["Summary"] = "";
        $p["Content"] = "";
        $p["Number"] = 1;
        if (!$this->Cart->CheckCart($id)) {
            $this->Cart->addProduct2Cart($p);
        } else {
            $this->Cart->plusNumberProduct($id);
        }
        $this->Cart->_header(\Module\cart\Model\Cart::LinkDatHang());
    }

    function removeproduct()
    {
        $id = $this->param[0];
        $this->Cart->removeProduct2Cart($id);
        $this->Cart->_header($_SERVER["HTTP_REFERER"]);
    }

    function plusNumberProduct()
    {
        $id = $this->param[0];
        $this->Cart->plusNumberProduct($id);
        $this->Cart->_header($_SERVER["HTTP_REFERER"]);
    }

    function minuNumberProduct()
    {
        $id = $this->param[0];
        $this->Cart->minuNumberProduct($id);
        $this->Cart->_header($_SERVER["HTTP_REFERER"]);
    }

    function clearCart()
    {
        $this->Cart->clearCart();
    }
}
