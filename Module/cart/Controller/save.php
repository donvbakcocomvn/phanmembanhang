<?php

namespace Module\cart\Controller;

class save extends \Controller_index {

    public $Product;
    public $Cart;
    public $Order;
    public $Breadcrumb;

    function __construct() {
        parent::__construct();
        $this->Breadcrumb = new \Model\Breadcrumb();
        $this->Order = new \Module\cart\Model\Order();
        $this->Bread[] = [
            "title" => "Giỏ hàng",
            "link" => "cart"
        ];
        $this->Product = new \Model\Products();
        $this->Cart = new \Module\cart\Model\Cart();
    }

    function index() {
        if (isset($_POST['Email'])) {
            $Order["Name"] = $_POST["Name"];
            $Order["TotalPrice"] = $this->Cart->TotalPrice();
            $Order["CodeOrder"] = "DH-" . date("YmdHis") . rand(100, 999);
            $Order["Email"] = $_POST["Email"];
            $Order["Status"] = 4;
            $Order["Note"] = "";
            $Order["Saler"] = \Model\UsersService::CurentUsers()->Username;
            $Order["Phone"] = $_POST["SDT"];
            $Order["Address"] = $_POST["Address"];
            $Order["NgayTao"] = \Common\Common::DateTimeToDB();

            $this->Order->createOrder($Order);
            foreach ($this->Cart->Products() as $P) {
                $OD["Name"] = "Chi Tiết Đơn Hàng " . $Order["CodeOrder"];
                $OD["Price"] = $P["Price"];
                $OD["CodeOrder"] = $Order["CodeOrder"];
                $OD["IdProduct"] = $P["ID"];
                $OD["Number"] = $P["Number"];
                $this->Order->createOrderDetail($OD);
                $this->Product->ReSetSoLuong($P["ID"], ($OD["Number"] * -1));
            }
            \Module\mail\Model\MailConfig::getConfig();
            $mail = new \Module\mail\Model\Mail();
            $code = \Module\mail\Model\MailContent::MailThongBaoDonHang;
            $sub = \Module\cart\Model\Cart::MailContent(\Module\mail\Model\MailContent::getMailContent($code)->sub, $Order["CodeOrder"]);
            $body = \Module\cart\Model\Cart::MailContent(\Module\mail\Model\MailContent::getMailContent($code)->body, $Order["CodeOrder"]);
            $sender = \Module\mail\Model\MailConfig::$MailNhan;
            $mail->SendMail($sub, $body, $sender);
            $this->Cart->clearCart();
            $this->Cart->_header("/cart/thanhcong/index/" . $Order["CodeOrder"]);
        }
    }

}

?>