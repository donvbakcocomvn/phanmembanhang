<?php

use App\Product;
use Model\Category;
use Module\duser\Model\Duser;

class Controller_mproduct extends Controller_backend
{

    public $Product;

    function __construct()
    {
        ini_set('display_errors', 1);
        ini_set('display_startup_errors', 1);
        error_reporting(E_ALL);
        $this->Product = new \Model\Products();
        parent::__construct();
    }

    function index()
    {
        if (isset($_POST["XoaHet"])) {
            $DSID = $_POST["Xoa"];
            foreach ($DSID as $id => $value) {
                $this->Product->DeleteProductsByID($id);
            }
        }
        $this->Bread[] = [
            "title" => "Danh Sách Sản Phẩm",
            "link" => "#"
        ];

        $Bread = new \Model\Breadcrumb();
        $Bread->setBreadcrumb($this->Bread);
        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "mproduct");
    }

    function ThemNhanSanPhan()
    {
        if (isset($_POST["ThemSanPham"])) {
            $_POST['ID'] = $this->Product->bodautv($_POST['ID']);
            $io = new \lib\io();
            $io->writeFile("data/product/" . md5($_POST['ID']), json_encode($_POST));
            $editP = $this->Product->ProductsByID(intval($_POST['ID']), FALSE);
            if (!$editP) {
                $editP['ID'] = $_POST["ID"];
                $editP['nameProduct'] = $_POST["nameProduct"];
                $editP['Alias'] = $this->Product->bodautv($_POST["nameProduct"]);
                $editP['Username'] = $_SESSION[QuanTri]["Username"];
                $editP['catID'] = $_POST["catID"];
                $editP['Price'] = $_POST["Price"];
                $editP['oldPrice'] = $_POST["oldPrice"];
                $editP['Summary'] = $_POST["Summary"];
                $editP['Content'] = $_POST["Content"];
                $images = new \lib\images\Images();
                try {
                    $imagesUrl = $images->getImagesFromUrl($_POST["UrlHinh"]);
                } catch (Exception $ex) {
                    echo $ex->getMessage();
                }
                $img = explode("/images/sanpham/", $imagesUrl);
                $editP['UrlHinh'] = end($img);
                $editP['DateCreate'] = date("Y-m-d H:i:s", time());
                $editP['Number'] = 1;
                $editP['Note'] = "";
                $editP['BuyTimes'] = 0;
                $editP['Views'] = 0;
                $editP['Serial'] = time();
                $editP['isShow'] = isset($_POST["isShow"]) ? 1 : 0;
                $editP['lang'] = "vi";

                $this->Product->AddProducts($editP);
            }
        }
        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "mproduct");
    }

    function productnoprice()
    {

        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "mproduct");
    }

    function editproduct()
    {

        if (isset($_POST["LuuSanPham"])) {
            $editP = $this->Product->ProductsByID($_POST['ID'], FALSE);
            $formProduct = $_POST[Model\Product\ProductForm::FormName];
            $editP['nameProduct'] = $_POST["nameProduct"];
            $editP['Alias'] = $this->Product->bodautv($_POST["nameProduct"]);
            $editP['Username'] = $_POST["Username"];
            $editP['catID'] = $_POST["catID"];
            $editP['unitPrice'] = $_POST["unitPrice"];
            $editP['Price'] = $_POST["Price"];
            $editP['brand'] = $formProduct["brand"];
            $editP['oldPrice'] = $_POST["oldPrice"];
            $editP['Summary'] = $_POST["Summary"];
            $editP['Content'] = $_POST["Content"];
            $editP['UrlHinh'] = $_POST["UrlHinh"];
            $editP['Number'] = $_POST["Number"];
            $editP['Note'] = $_POST["Note"];
            $editP['DateCreate'] = date("Y-m-d H:i:s", time());

            $editP['BuyTimes'] = $_POST["BuyTimes"];
            $editP['isShow'] = isset($_POST["isShow"]) ? 1 : 0;
            $editP['lang'] = $_POST["lang"];
            if (isset($_FILES["fileImages"])) {
                if ($_FILES["fileImages"]["error"][0] == 0) {
                    $img = $this->Product->upload_multi_image($_FILES["fileImages"], "public/img/images/sanpham/", $editP["ID"] . "-");
                    $img = explode("/", $img[0]);
                    $editP['UrlHinh'] = end($img);
                }
            }
            $this->Product->EditProducts($editP);
        }

        $data["p"] = $this->Product->ProductsByID($this->param[0], FALSE);
        $this->ViewTheme($data, Model_ViewTheme::get_viewthene(), "mproduct");
    }

    function copyproduct()
    {
        if (isset($_POST["LuuSanPham"])) {
            $_POST['ID'] = $this->Product->bodautv($_POST['nameProduct']);
            $editP = $this->Product->ProductsByID(intval($_POST['ID']), FALSE);
            if (!$editP) {
                $editP['ID'] = $_POST["ID"];
                $editP['nameProduct'] = $_POST["nameProduct"];
                $editP['Alias'] = $this->Product->bodautv($_POST["nameProduct"]);
                $editP['Username'] = $_SESSION[QuanTri]["Username"];
                $editP['catID'] = $_POST["catID"];
                $editP['Price'] = $_POST["Price"];
                $editP['oldPrice'] = $_POST["oldPrice"];
                $editP['Summary'] = $_POST["Summary"];
                $editP['Content'] = $_POST["Content"];
                $img = explode("/images/sanpham/", $_POST["UrlHinh"]);
                $editP['UrlHinh'] = end($img);
                $editP['DateCreate'] = date("Y-m-d H:i:s", time());
                $editP['Number'] = 1;
                $editP['Note'] = $_POST["Note"];
                $editP['BuyTimes'] = 0;
                $editP['isShow'] = isset($_POST["isShow"]) ? 1 : 0;
                $editP['lang'] = "vi";
                if (isset($_FILES["fileImages"])) {
                    if ($_FILES["fileImages"]["error"][0] == 0) {
                        $img = $this->Product->upload_multi_image($_FILES["fileImages"], "public/img/images/sanpham/" . $editP["ID"] . "/", $editP["ID"] . "-");
                        $img = "/" . $img;
                    }
                }
                $this->Product->AddProducts($editP);
            }
            $this->Product->_header("/mproduct/detailproduct/" . $editP["ID"]);
        }
        $data["p"] = $this->Product->ProductsByID($this->param[0], FALSE);
        $this->ViewTheme($data, Model_ViewTheme::get_viewthene(), "mproduct");
    }

    function createformeditproduct()
    {
        $lib = new lib\form();
        if ($lib->createFormByClassToFile("\Model\Products", "theme\\backend\\mproduct\\editproduct_form.phtml")) {
            $this->Product->_header("/mproduct/editproduct");
        } else {
            echo "khong theo tao";
        }
    }

    function detailproduct()
    {
        $data["p"] = $this->Product->ProductsByID($this->param[0], FALSE);
        $this->ViewTheme($data, Model_ViewTheme::get_viewthene(), "mproduct");
    }

    function addproduct()
    {
        if (isset($_POST["ThemSanPham"])) {
            $_POST['ID'] = $this->Product->bodautv($_POST['ID']);
            $editP = $this->Product->ProductsByID($_POST['ID'], FALSE);
            if (!$editP) { 
                $editP['Code'] = $_POST["ID"];
                $editP['nameProduct'] = $_POST["nameProduct"];
                $editP['Alias'] = $this->Product->bodautv($_POST["nameProduct"]);
                $editP['Username'] = $_SESSION[QuanTri]["Username"];
                $editP['catID'] = $_POST["catID"];
                $editP['unitPrice'] = $_POST["unitPrice"];
                $editP['Price'] = intval($_POST["Price"]);
                $editP['oldPrice'] = intval($_POST["oldPrice"]);
                $editP['Serial'] = 0;
                $editP['Summary'] = $_POST["Summary"];
                $editP['Views'] = 0;
                $editP['Content'] = $_POST["Content"];
                // $img = explode("/images/sanpham/", $_POST["UrlHinh"]);
                $editP['UrlHinh'] = $_POST["UrlHinh"];
                $editP['DateCreate'] = date("Y-m-d H:i:s", time());
                $editP['Number'] = 1;
                $editP['Note'] = $_POST["Note"];
                $editP['BuyTimes'] = 0;
                $editP['isShow'] = isset($_POST["isShow"]) ? 1 : 0;
                $editP['lang'] = "vi";
                if (isset($_FILES["fileImages"])) {
                    if ($_FILES["fileImages"]["error"][0] == 0) {
                        $img = $this->Product->upload_multi_image($_FILES["fileImages"], "public/img/images/sanpham/" . $editP["Code"] . "/", $editP["ID"] . "-");
                        $img = "/" . $img;
                    }
                }
                $this->Product->AddProducts($editP);
            }
            $sp =  $this->Product->ProductsByCode($editP["Code"]);
            $this->Product->_header("/mproduct/detailproduct/" . $sp["ID"]);
        }
        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "mproduct");
    }

    function deleteproduct()
    {
        $data["p"] = $this->Product->DeleteProductsByID($this->param[0]);

        $this->Product->_header($_SERVER["HTTP_REFERER"]);
    }

    function getProductsBycatID()
    {
        //        mproduct/getProductsBycatID/CatID/Page/
        $this->param[1] = isset($this->param[1]) ? intval($this->param[1]) : 1;
        $a = new \Model\Category();
        $p = new \Model\Products();
        $listCatID = [];
        $dataResult = [];
        $a->AllCategoryByParentID([$this->param[0]], $listCatID);

        $b = $p->ProductsByCatID($this->param[0], $this->param[1], 20, $sum);
        $dataResult["pagesIndex"] = $this->param[1];
        $dataResult["total"] = $sum;
        $dataResult["totalPages"] = ceil($dataResult["total"] / 20);
        if ($b) {
            foreach ($b as $k => $_products) {
                $_Modelproducts = new Model\Products($_products);
                $b[$k]["Images"] = $_Modelproducts->UrlHinh();
            }
            $dataResult["data"] = $b;
            echo $a->_encode($dataResult);
            return;
        }
        echo "[]";
        return;
    }

    function getProductsPT()
    {
        $PagesIndex = isset($this->param[0]) ? intval($this->param[0]) : 1;
        $PagesNumber = isset($this->param[1]) ? intval($this->param[1]) : 20;
        $options["name"] = isset($this->param[2]) ? $this->param[2] : "";
        $options["catID"] = isset($this->param[3]) ? $this->param[3] : 0;
        $a = new \Model\Category();
        $p = new \Model\Products();
        $dataResult = [];
        $sum = 0;
        $b = $p->ProductsNameAllPTNangCao($options, $PagesIndex, $PagesNumber, $sum);
        $dataResult["pagesIndex"] = $PagesIndex;
        $dataResult["total"] = $sum;
        $dataResult["totalPages"] = ceil($dataResult["total"] / $PagesNumber);
        if ($b) {
            foreach ($b as $k => $_products) {
                $_Modelproducts = new Model\Products($_products);
                $b[$k] = $_Modelproducts->Obj2Api();
            }
            $dataResult["data"] = $b;

            echo $a->_encode($dataResult);
            return;
        }
        echo "[]";
        return;
    }

    function getListCategory()
    {
        $a = new \Model\Category();
        $b = $a->AllCategorys(FALSE);
        echo $a->_encode($b);
    }

    function xoahinhsanpham()
    {
        $a = file_get_contents('php://input');
        $b = $this->Product->_decode($a);
        $c = substr($b->path, 1);
        unlink($c);
    }

    function savePriceProduct()
    {
        $Pr = new Model\Products();
        $P = $Pr->ProductsByID($_POST["ID"], false);
        if ($P) {
            $P["Price"] = $_POST["Price"];
            $Pr->EditProducts($P);
        }
    }

    function seachajax()
    {

        $name = $_POST["Name"];
        $product = new Model\Products();
        $a = $product->ProductsByName($name);
        foreach ($a as $key => $value) {
            $a[$key] = $this->ProducttoJSON($value);
        }
        echo json_encode($a, JSON_UNESCAPED_UNICODE);
    }

    function seach()
    {
        $this->ViewTheme([], Model_ViewTheme::get_viewthene(), "mproduct");
    }

    function productnopriceAjax()
    {
        $product = new Model\Products();
        $a = $product->ProductsNoPrice();
        foreach ($a as $key => $value) {
            $a[$key] = $this->ProducttoJSON($value);
        }
        echo json_encode($a, JSON_UNESCAPED_UNICODE);
    }

    private function ProducttoJSON($p)
    {
        $v = new Model\Products($p);
        unset($p["Content"]);
        unset($p["Summary"]);
        $p["Image"] = $v->UrlHinh();
        $p["Category"] = $v->DanhMuc();
        return $p;
    }

    function phantrang()
    {
        $this->PartialView("");
    }

    function sanphamhtheohinh()
    {
        $sp = new Model\Products();
        if (isset($_POST["TenSanPham"])) {
            $tenSanPham = $_POST["TenSanPham"];
            foreach ($tenSanPham as $k => $value) {
                $TenHinh = $_POST["HinhAnh"][$k];
                $TenSaPham = $_POST["TenSanPham"][$k];
                $brand = $_POST["brand"][$k];

                $Gia = $_POST["Price"][$k];
                $catID = $_POST["catID"][$k];
                $Mota = $_POST["MoTa"][$k];
                $ThuMuc = "public/img/images/sanpham/dm-{$catID}";
                if (!is_dir($ThuMuc)) {
                    mkdir($ThuMuc, 0777, true);
                }
                $filePath = "public/img/images/sanpham/dm-{$catID}/{$TenHinh}";
                $fileGoc = Model\Products::hinhsanphamTam . "{$TenHinh}";
                if (!file_exists($filePath)) {
                    copy($fileGoc, $filePath);
                }
                unlink($fileGoc);
                $ar["ID"] = lib\Common::bodautv($TenSaPham);
                $ar["Username"] = Module\duser\Model\Duser::CurentUsernameAdmin(true)->Username;
                $ar["catID"] = $catID;
                $ar["brand"] = $brand;
                $ar["nameProduct"] = $TenSaPham;
                $ar["Alias"] = lib\Common::bodautv($TenSaPham);
                $ar["Price"] = $Gia;
                $ar["oldPrice"] = 0;
                $ar["Summary"] = $Mota;
                $ar["Content"] = "";
                $ar["UrlHinh"] = "/{$filePath}";
                $ar["DateCreate"] = \lib\Common::DateFomatDB();
                $ar["Number"] = 1;
                $ar["Note"] = "{}";
                $ar["BuyTimes"] = 0;
                $ar["Serial"] = 0;
                $ar["Views"] = 0;
                $ar["isShow"] = 1;
                $ar["lang"] = "vi";
                //                var_dump($ar);
                ini_set('display_errors', 1);
                ini_set('display_startup_errors', 1);
                error_reporting(E_ALL);
                $res = $sp->AddProducts($ar);
            }
        }
        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "mproduct");
    }

    function xoahinhanh()
    {
        $dir = new lib\redDirectory();
        $a = [];
        $dir->redDirectoryByPath(Model\Products::hinhsanphamTam, $a);
        $dir->removerfile(Model\Products::hinhsanphamTam, $a);
        lib\Common::ToUrl($_SERVER["HTTP_REFERER"]);
    }

    function xoahinhanhTen()
    {
        $fileNameXoa = $this->getParam()[0];
        $dir = new lib\redDirectory();
        $a = [];
        $dir->redDirectoryByPath(Model\Products::hinhsanphamTam, $a);
        foreach ($a as $fileName) {
            if (md5($fileName) == $fileNameXoa) {
                unlink(Model\Products::hinhsanphamTam . $fileName);
                break;
            }
        }
        lib\Common::ToUrl($_SERVER["HTTP_REFERER"]);
    }

    function suanhanhform()
    {
        $this->AView([], Model_ViewTheme::get_viewthene());
    }

    public function import()
    {

        try {
            if (isset($_FILES["import_excel"])) {
                $allowed_extension = array('xls', 'csv', 'xlsx');
                $file_array = explode(".", $_FILES["import_excel"]["name"]);
                $file_extension = end($file_array);
                if (in_array($file_extension, $allowed_extension) == false) {
                    throw new Exception("File không đúng định dạng");
                }
                $file_type = \PhpOffice\PhpSpreadsheet\IOFactory::identify($_FILES['import_excel']['tmp_name']);
                $reader = \PhpOffice\PhpSpreadsheet\IOFactory::createReader($file_type);
                $spreadsheet = $reader->load($_FILES['import_excel']['tmp_name']);
                $data = $spreadsheet->getSheet(0)->toArray();
                $danhMuc = new Category();
                foreach ($data as $row) {
                    $id = intval($row[0]);
                    if ($id > 0) {
                        $row[4] = str_replace(",", "", $row[4]);
                        $price = intval($row[4]);
                        $danhmucCol = $row[5];
                        $modelDanhMuc =  $danhMuc->Category4Code($danhmucCol, true);
                        // var_dump($row[5]);
                        // echo "danhmucCol";
                        // var_dump($modelDanhMuc);
                        // echo $modelDanhMuc->catID;
                        // return;
                        $sp["Code"] = $row[3];
                        $sp["nameProduct"] = $row[1];
                        $sp["unitPrice"] = $row[2];
                        $sp["Price"] = $price;
                        $sp["Username"] = Duser::CurentUsernameAdmin(true)->Username;
                        $sp['Alias'] = $this->Product->bodautv($sp["nameProduct"]);
                        $sp['oldPrice'] = 0;
                        $sp['Summary'] = "";
                        $sp['catID'] = $modelDanhMuc->catID;
                        $sp['brand'] = "";
                        $sp['Content'] = "";
                        $sp['UrlHinh'] = "";
                        $sp['DateCreate'] = date("Y-m-d H:i:s", time());
                        $sp['Number'] = 1;
                        $sp['Note'] = "";
                        $sp['BuyTimes'] = 0;
                        $sp['Views'] = 0;
                        $sp['Serial'] = time();
                        $sp['isShow'] = isset($_POST["isShow"]) ? 1 : 0;
                        $sp['lang'] = "vi";
                        // var_dump($sp); 
                        $this->Product->AddProducts($sp);
                        // die();
                    }
                }
            }
            $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "");
        } catch (Exception $ex) {
            echo $ex->getMessage();
        }
    }
}
