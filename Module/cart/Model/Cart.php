<?php

namespace Module\cart\Model;

class Cart extends \Model\Database
{

    const MaxNumber = 100;
    const DatHangThanhCong = "DatHangThanhCong";

    function __construct()
    {
    }

    function Products()
    {
        return $_SESSION[GioHang];
    }

    function ThanhTien($sl, $gia)
    {
        return $sl * $gia;
    }

    function ThanhTienVND($sl, $gia)
    {
        return \Common\Common::MoneyFomat($this->ThanhTien($sl, $gia));
    }

    function plusNumberProduct($id)
    {
        $_SESSION[GioHang][$id]["Number"]++;
        if ($_SESSION[GioHang][$id]["Number"] >= self::MaxNumber)
            $_SESSION[GioHang][$id]["Number"] = self::MaxNumber;
    }

    function minuNumberProduct($id)
    {
        if ($_SESSION[GioHang][$id]["Number"] > 1)
            return $_SESSION[GioHang][$id]["Number"]--;
        return $_SESSION[GioHang][$id]["Number"] = 1;
    }

    function addProduct2Cart($Product)
    {
        if (!isset($_SESSION[$Product["ID"]])) {
            $_SESSION[GioHang][$Product["ID"]] = $Product;
        } else {
            $_SESSION[GioHang][$Product["ID"]]["Number"]++;
            if ($_SESSION[GioHang][$Product["ID"]]["Number"] >= self::MaxNumber)
                $_SESSION[GioHang][$Product["ID"]]["Number"] = self::MaxNumber;
        }
    }

    function removeProduct2Cart($id)
    {
        unset($_SESSION[GioHang][$id]);
    }

    function countProduct2Cart()
    {
        return count($_SESSION[GioHang]);
    }

    function clearCart()
    {
        unset($_SESSION[GioHang]);
    }

    static function clearAllCart()
    {
        $_SESSION[GioHang] = null;
    }

    function TotalPrice()
    {
        if (!$this->Products())
            return 0;
        $tong = 0;
        foreach ($this->Products() as $p) {
            $tong += ($p["Number"] * $p["Price"]);
        }
        return $tong;
    }

    function TotalPriceVND()
    {
        return number_format($this->TotalPrice(), 0, '.', ',') . " <sup>đ</sup>";
    }

    function CheckCart($id)
    {
        return isset($_SESSION[GioHang][$id]);
    }

    public static function TongSanPham()
    {
        return count($_SESSION[GioHang]);
    }

    public static function LinkDatHang()
    {
        return "/cart/taodonhang";
    }

    public static function MailContent($str, $donhang)
    {
        $str = str_replace("[Time]", date("y-m-d h:i:s", time()), $str);
        $str = str_replace("[DonHang]", self::GetDonHangMail($donhang), $str);
        return $str;
    }

    static function GetDonHangMail($donhang)
    {
        $order = new Order($donhang);
        $Products = $order->ProductsByDonHang();

        ob_start();
?>
        <h3>Thông Tin Khách Hàng</h3>
        <p>Họ Tên: <?php echo $order->Name; ?></p>
        <p>Email: <?php echo $order->Email; ?></p>
        <p>SĐT: <?php echo $order->Phone; ?></p>
        <p>Địa Chỉ: <?php echo $order->Address; ?></p>
        <h3>Thông Tin Đơn Hàng</h3>
        <table style="width: 100%;">
            <thead>
                <tr>
                    <th class="">Hình</th>
                    <th class="">Mô Tả</th>
                    <th class="" style="width: 100px;">Số Lượng</th>
                    <th class="" style="width: 100px;">Thành Tiền</th>
                </tr>
            <tbody>
                <?php
                if ($Products) {
                    foreach ($Products as $SanPham) {
                        $_P = new \Model\Products($SanPham["IdProduct"]);
                ?>
                        <tr>
                            <td class="" style="width: 80px;">

                                <img style="height: 70px;" src="<?php echo $_P->UrlHinh() ?>" alt="<?php echo $_P->nameProduct ?>">

                            </td>
                            <td class="cart_description">
                                <small class="cart_ref">ID : #<?php echo $_P->ID ?></small><br>
                                <p class="product-name"><a href="<?php echo $_P->linkProduct() ?>"><?php echo $_P->nameProduct ?> </a></p>
                                <p class="product-name"><?php echo strip_tags($_P->Summary); ?> </p>
                                <p class="label label-success">Còn Hàng</p>
                                <p class="label label-danger"><?php echo $_P->Price(); ?></p>
                            </td>
                            <td class="qty" style="width: 100px;">
                                <?php echo $SanPham["Number"]; ?>
                            </td>
                            <td class="price">
                                <span><?php $ThanhTien = $_P->Price * $SanPham["Number"]; ?>
                                    <?php echo $_P->showPrice($ThanhTien); ?>
                                </span>
                            </td>
                        </tr>
                <?php
                    }
                }
                ?>


            </tbody>
            </thead>
        </table>
<?php
        return ob_get_clean();
    }

    static function GetPathContent($code)
    {
        $io = new \lib\io();
        $path = __DIR__ . "/../public/{$code}.html";
        if (!file_exists($path))
            $io->writeFile($path, "content here");

        return $path;
    }
}
