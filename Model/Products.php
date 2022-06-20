<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Model;

class Products extends \Model\Database
{

    const hinhsanphamTam = "public/hinhsanpham/";

    public $ID;
    public $Code;
    public $Username;
    public $catID;
    public $brand;
    public $nameProduct;
    public $unitPrice;
    public $Alias;
    public $Price;
    public $oldPrice;
    public $GiaNhap;
    public $Summary;
    public $Content;
    public $UrlHinh;
    public $DateCreate;
    public $Number;
    public $Note;
    public $BuyTimes;
    public $Views;
    public $isShow;
    public $lang;

    function __construct($product = null)
    {
        parent::__construct();
        if ($product) {
            if (!is_array($product)) {
                $id = $product;
                $product = $this->ProductsByID($id, FALSE);
                if ($product == null) {
                    $product = $this->ProductsByIDEncode($id);
                }
            }
            $this->ID = $product["ID"];
            $this->Code = $product["Code"];
            $this->Username = $product["Username"];
            $this->catID = $product["catID"];
            $this->unitPrice = $product["unitPrice"] ?? "";
            $this->brand = !empty($product["brand"]) ? $product["brand"] : null;
            $this->nameProduct = $product["nameProduct"];
            $this->Alias = $product["Alias"];
            $this->Price = $product["Price"];
            $this->oldPrice = $product["oldPrice"];
            $this->GiaNhap = $product["GiaNhap"];
            $this->Summary = isset($product["Summary"]) ? $product["Summary"] : "";
            $this->Content = isset($product["Content"]) ? $product["Content"] : "";
            $this->UrlHinh = $product["UrlHinh"];
            $this->DateCreate = $product["DateCreate"];
            $this->Number = isset($product["Number"]) ? intval($product["Number"]) : 0;
            $this->Note = $product["Note"];
            $this->BuyTimes = $product["BuyTimes"];
            $this->Views = $product["Views"];
            $this->isShow = $product["isShow"];
            $this->lang = $product["lang"];
        }
    }

    function Products()
    {
        return parent::ProductsAll();
    }

    function ProductsAll()
    {
        return parent::ProductsAll();
    }

    function ProductsAllPT($Page = 1, $Number = 20, &$Tong = 0)
    {
        return parent::ProductsAllPT($Page, $Number, $Tong);
    }

    function showPrice($a)
    {
        if ($a > 0)
            return \Common\Common::MoneyFomat($a);
        return "Liên Hệ";
    }

    function UrlHinh()
    {
        $fileName = "public/img/images/sanpham/" . $this->UrlHinh;
        if (file_exists($fileName)) {
            return BASE_URL . "public/img/images/sanpham/" . $this->UrlHinh;
        }
        $str = explode("/", $this->UrlHinh);
        $fd = "public/img/images/sanpham/dm-{$this->catID}/" . end($str);
        if (file_exists($fd)) {
            return BASE_URL . "$fd";
        }
        return $this->UrlHinh;
    }

    function UrlHinh250x280()
    {
        $avata = $this->UrlHinh();
        $avata = str_replace(BASE_URL, "/", $avata);
        $thums = $this->UrlHinhName($avata, 250, 280);
        if ($thums) {
            return $thums;
        }
        \lib\imageComp::SetImagesDefault("/pubic/no-image.jpg");
        $imgComp = new \lib\imageComp();
        return $imgComp->layHinh($avata, 250, 280);
    }

    function UrlHinhName($avata, $w, $h)
    {
        $url = substr($avata, 1);
        $a = explode(basename($url), $url);
        $ThuMuc = reset($a);
        $TenHinh = basename($url);
        $filename = $ThuMuc . $TenHinh;
        $_TenHinh = explode(".", $TenHinh);
        $__TenHinh = reset($_TenHinh);
        $__MoRong = end($_TenHinh);
        $ThuMucThumbs = $ThuMuc . "_thumbs/";
        $KiemTraHinh = $ThuMucThumbs . $__TenHinh . "_{$h}x{$w}.{$__MoRong}";
        if (file_exists($KiemTraHinh)) {
            return "/" . $KiemTraHinh;
        }
        return null;
    }

    function Price()
    {
        $a = $this->Price;
        if ($a > 0)
            return \Common\Common::MoneyFomat($this->Price);
        return "Liên Hệ";
    }

    function GiaNhap()
    {
        $a = $this->GiaNhap;
        if ($a > 0)
            return \Common\Common::MoneyFomat($this->Price);
        return "";
    }

    function CatName($id)
    {
        $a = $this->Category4Id($id);
        return $a->catName;
    }

    function DeleteProductsByID($ID)
    {
        $p = $this->ProductsByID($ID);
        $this->delete(table_prefix . "product", "`ID` = '{$ID}'");
        $this->XoaHinh($p->UrlHinh);
    }

    function EditProducts($Product)
    {
        return parent::EditProducts($Product);
    }

    function AddProducts($Product)
    {
        return parent::AddProducts($Product);
    }

    function linkProduct()
    {
        $id = $this->ID;
        return "/" . $this->Alias . "-sp-{$id}.html";
    }

    function ProductsByID($Id, $isobj = True)
    {
        return parent::ProductsByID($Id, $isobj);
    }

    function ProductsByIDEncode($Id)
    {
        $sql = "SELECT * FROM `" . table_prefix . "product` where sha1(`ID`) = '{$Id}'";
        $this->Query($sql);
        return $this->fetchRow();
    }

    function ProductsByAlias($Alias, $isobj = True)
    {
        return parent::ProductsByAlias($Alias, $isobj);
    }

    function ProductsByCatID($CatId, $page, $number, &$sum)
    {
        return parent::ProductsByCatID($CatId, $page, $number, $sum);
    }

    function getProductsByName($CatId, $page, $number, &$sum)
    {
        return $this->ProductsByName($CatId, $page, $number, $sum);
    }

    function AllProductsByCatID($CatId)
    {
        parent::AllProductsByCatID($CatId);
    }

    function imagesDirectory()
    {
        return "/public/img/images/sanpham/" . $this->ID . "/";
    }

    function imagesDirectory4Product($id)
    {
        return "/public/img/images/sanpham/" . $id . "/";
    }

    function getAllImges($id)
    {
        $dir = new \lib\redDirectory();
        $a = [];
        $dir->redDirectoryByPath("public/img/images/sanpham/" . $id . "/", $a);
        foreach ($a as $k => $value) {
            $a[$k] = $this->imagesDirectory4Product($id) . $value;
        }
        return $a;
    }

    public function GiamGia()
    {
        return (100 - floor(($this->Price / $this->oldPrice) * 100));
    }

    public function oldPrice()
    {
        $a = $this->oldPrice;
        if ($a > 0)
            return number_format($a, 0, '.', ',') . " <sup>đ</sup>";
        return "";
    }

    public function linkGioHang()
    {
        if ($this->Number == 0) {
            return "#";
        }
        return "/cart/index/addproduct/" . $this->ID;
    }

    public function linkMuaNgay()
    {
        return "/cart/index/muaNhanh/" . $this->ID;
    }

    public function ReSetSoLuong($Id, $sl)
    {
        $p = $this->ProductsByID($Id, FALSE);
        $p["Number"] = $p["Number"] + $sl;
        $p["Number"] = max($p["Number"], 0);
        return $this->EditProducts($p);
    }

    public function TinhTrang()
    {
        if ($this->Number == 0) {
            return "Hết Hàng";
        }
        return "Còn Hàng";
    }

    public function btnGioHang($class = "")
    {
        if ($this->Number == 0) {
            return;
        }
?>
        <a ng-click="addProductCart('<?php echo $this->ID; ?>')" class="<?php echo $class; ?>">Thêm Giỏ Hàng</a>
    <?php
    }

    public function btnMuaNgay($class = "")
    {
        if ($this->Number == 0) {
            return;
        }
    ?>
        <a class="<?php echo $class; ?>" href="<?php echo $this->linkMuaNgay(); ?>">Mua Ngay</a>
<?php
    }

    public function Obj2Api()
    {

        $ar["ID"] = $this->ID;
        $ar["Code"] = $this->Code;
        $ar["Username"] = $this->Username;
        $ar["catID"] = $this->catID;
        $ar["Category"] = $this->Category()->obj2Api();
        $ar["nameProduct"] = $this->nameProduct;
        $ar["Alias"] = $this->Alias;
        $ar["Price"] = intval($this->Price);
        $ar["PriceVND"] = $this->Price();
        $ar["GiaNhap"] = intval($this->GiaNhap);
        $ar["GiaNhapVND"] = $this->GiaNhap();
        $ar["oldPrice"] = $this->oldPrice;
        $ar["oldPriceVND"] = $this->OldPrice();
        $ar["Summary"] = "";
        $ar["Content"] = "";
        $ar["UrlHinh"] = $this->UrlHinh;
        $ar["Images"] = $this->UrlHinh();
        $ar["DateCreate"] = \lib\Common::DateFomat($this->DateCreate);
        $ar["Number"] = intval($this->Number);
        $ar["Note"] = $this->Note;
        $ar["BuyTimes"] = $this->BuyTimes;
        $ar["Views"] = $this->Views;
        $ar["isShow"] = $this->isShow;
        $ar["isShowStatus"] = $this->isShow == 1 ? "Hiện" : "Ẩn";
        $ar["lang"] = $this->lang;
        return $ar;
    }

    public function ProductsNameAllPT($name = "", $Page = 1, $Number = 20, &$Tong = 0)
    {
        $Page = intval($Page);
        $Page = max($Page, 1);
        $start = ($Page - 1) * $Number;
        $sql = "SELECT count(ID) as `Tong` FROM `" . table_prefix . "product` where `nameProduct` like '%{$name}%' or `Code` like '%{$name}%' ";
        $this->Query($sql);
        $a = $this->fetchRow();
        $Tong = $a["Tong"];
        $sql = "SELECT * FROM `" . table_prefix . "product` where `nameProduct` like '%{$name}%' or `Code` like '%{$name}%' order by `DateCreate` DESC limit {$start},{$Number} ";
        $this->Query($sql);
        $a = $this->fetchAll();
        return $a;
    }

    public function ProductsNameAllPTNangCao($options = ["name" => "", "catID" => 0], $Page = 1, $Number = 20, &$Tong = 0)
    {
        $name = !empty($options["name"]) ? $options["name"] : '';
        $catID = !empty($options["catID"]) ? $options["catID"] : 0;
        $Page = intval($Page);
        $Page = max($Page, 1);
        $start = ($Page - 1) * $Number;
        $catSQL = " and `catID` = '{$catID}' ";
        if ($catID == 0) {
            $catSQL = " ";
        }
        $sql = "SELECT count(ID) as `Tong` FROM `" . table_prefix . "product` where `nameProduct` like '%{$name}%' {$catSQL} ";
        $sql = trim($sql);
        $this->Query($sql);
        $a = $this->fetchRow();
        $Tong = $a["Tong"];
        $sql = "SELECT * FROM `" . table_prefix . "product` where `nameProduct` like '%{$name}%' {$catSQL} order by `DateCreate` DESC limit {$start},{$Number} ";
        $this->Query($sql);
        $a = $this->fetchAll();
        return $a;
    }

    function Category($id = null)
    {
        if ($id == null)
            $id = $this->catID;
        $a = $this->Category4Id($id, false);
        return new Category($a);
    }

    public function ProductsGiamGia($indexPges, $numberPges, $sum)
    {
        $sql = "SELECT * FROM `" . table_prefix . "product` where `oldPrice` > 0";
        $this->Query($sql);
        $a = $this->fetchAll();
        return $a;
    }

    public function DateCreate()
    {
        return date("d-m-Y h:i:s", strtotime($this->DateCreate));
    }

    public function brand()
    {
        $brand = new Brand\BrandService();
        if ($this->brand)
            return new Brand\BrandService($brand->GetById($this->brand));
        return new Brand\BrandService($brand->GetById(Brand\BrandService::NoBrand()));
    }

    public function XoaHinh($urlHinh)
    {
        if (file_exists($urlHinh)) {
            unlink($urlHinh);
            return;
        }
        $urlHinh = substr($urlHinh, 1);
        if (file_exists($urlHinh)) {
            unlink($urlHinh);
        }
    }

    public function isShow()
    {
        return $this->isShow == 1 ? "Hiện" : "Ẩn";
    }

    static function status()
    {
        $status = [1 => "Còn Hàng", 0 => "Hết Hàng"];
        return $status;
    }

    //put your code here
}
