<?php

use Common\Common;
use Model\ExcelConfig;
use Model\Products;
use Model\ThongKe;

class Controller_backend extends Application
{

    public $param;
    public $Bread;

    function __construct()
    {
        $this->param = $this->getParam();
        $a = new Model_Adapter();
        if (!isset($_SESSION[QuanTri])) {
            $a->_header("/mlogin/");
        }
        $this->Bread[] = [
            "title" => "Dashboard",
            "link" => "/backend/"
        ];
        Model_ViewTheme::set_viewthene("backend");
    }

    function index()
    {
        $Bread = new \Model\Breadcrumb();
        $Bread->setBreadcrumb($this->Bread);
        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "");
    }

    function logout()
    {
        $a = new Model_Adapter();
        unset($_SESSION[QuanTri]);
        $a->_header('mlogin');
    }

    function cattegorydetail()
    {
        $cat = new \Model\Category();
        $a = $cat->Category4Id($this->param[0]);
        echo $cat->_encode($a);
    }

    function getCategorys()
    {
        $cat = new \Model\Category();
        $a = $cat->AllCategorys(FALSE);
        echo $cat->_encode($a);
    }

    function getCategorysByParentID()
    {
        $cat = new \Model\Category();
        $listCatID = [];
        $cat->AllCategoryByParentID([$this->param[0]], $listCatID);
        $a = [];
        foreach ($listCatID as $k => $v) {
            $a[] = $cat->Category4Id($v);
        }
        echo $cat->_encode($a);
    }

    function getThemes()
    {
        $cat = new Model_Adapter();
        $a = ["home"];
        echo $cat->_encode($a);
    }

    function getThemeAlFileconfig()
    {
        $cat = new Model_Adapter();
        $Lib = new \lib\redDirectory();
        $Lib->redDirectoryByPath(__DIR__ . "\..\\theme\\" . $this->param[0] . "\\config\\", $a);
        echo $cat->_encode($a);
    }

    function getConfig()
    {
        $cat = new Model_Adapter();
        $Lib = new \lib\io();
        $filename = __DIR__ . "/../theme/" . $this->param[0] . "/config/" . $this->param[1];
        $a = $Lib->readFile($filename);
        echo $a;
    }

    function CreateApi($array)
    {
        $a = new \Model_Adapter();
        if ($array) {
            echo $a->_encode($array);
        } else {
            echo "[]";
        }
    }

    function hinhanh()
    {
        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "");
    }

    function toiuuhinhanh()
    {
        ini_set('display_errors', 1);
        ini_set('display_startup_errors', 1);
        error_reporting(E_ALL);
        try {
            Imagesoptimizer\Images::OptimizerFolder("public/img/images/");
        } catch (Exception $exc) {
            echo $exc->getTraceAsString();
        }
    }

    function keyckfinde()
    {

        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "");
    }

    function getBrands()
    {
        $brand = new \Model\Brand\BrandService();
        $where = " 1 ";
        $a = $brand->Select($where, ["Id", "Name"]);
        $api = new \lib\APIs();
        echo $api->ArrayToString($a);
    }

    public function thongke()
    {
        $resultData = [];
        if (isset($_GET["btnLoc"])) {
            if (isset($_GET["fromDate"]) && isset($_GET["toDate"])) {
                $fromDate = $_REQUEST["fromDate"] ?? "";
                $toDate = $_REQUEST["toDate"] ?? "";
 
                $thongKe = new ThongKe();
                $result = $thongKe->ThongKeBanHangCangTin($fromDate, $toDate);
                $resultData = [];
                if ($result) {
                    foreach ($result as $index => $row) {
                        $p = new Products($row["Code"]);

                        $dong["index"] = $index + 1;
                        $dong["TenHangHoa"] = $row["nameProduct"];
                        $dong["DanhMuc"] = $p->Category()->Code;
                        $dong["DVT"] = $row["unitPrice"];
                        $dong["MaHang"] = $row["Code"];
                        $dong["GiaBan"] = Common::MoneyFomat($row["Price"]);
                        $dong["SoLuong"] = $row["SoLuong"];
                        $dong["ThanhTien"] = Common::MoneyFomat($row["Price"] * $row["SoLuong"]);
                        $dong["GhiChu"] = "";
                        $resultData[] = $dong;
                    }
                }
            }
        }
        if (isset($_GET["btnExport"])) {
            if (isset($_GET["fromDate"]) && isset($_GET["toDate"])) {
                $fromDate = $_GET["fromDate"] ?? "";
                $toDate = $_GET["toDate"] ?? "";
                $thongKe = new ThongKe();

                // $TuNgay = date("Y-m-d 00:00:00", strtotime($fromDate));
                // $DenNgay = date("Y-m-d 23:59:59", strtotime($toDate));
                // var_dump($TuNgay);
                // var_dump($DenNgay);
                $result = $thongKe->ThongKeBanHangCangTin($fromDate, $toDate);

                $tuNgay = date("d-m-Y", strtotime($fromDate));
                $denNgay = date("d-m-Y", strtotime($toDate));
                $resultData = [];
                $resultData[] = [
                    "SỞ Y TẾ THÀNH PHỐ HỒ CHÍ MINH",
                ];
                $resultData[] = [
                    "BỆNH VIỆN NHÂN ÁI",
                ];
                $resultData[] = [
                    "BẢNG KÊ BÁN HÀNG CĂN TIN",
                ];
                $resultData[] = [
                    "Từ ngày: {$tuNgay} đến ngày: {$denNgay}",
                ];
                $resultData[] = [
                    "STT",
                    "Hàng hóa",
                    "Danh mục",
                    "ĐVT",
                    "Mã hàng hóa",
                    "Giá Bán",
                    "Số lượng",
                    "Thành tiền",
                    "Ghi Chú"
                ];
                $tongTien = 0;
                $indexBoder = 5;
                foreach ($result as $index => $row) {
                    $p = new Products($row["Code"]);
                    $dong["index"] = $index + 1;
                    $dong["TenHangHoa"] = $row["nameProduct"];
                    $dong["DanhMuc"] = $p->Category()->Code;
                    $dong["DVT"] = $row["unitPrice"];
                    $dong["MaHang"] = $row["Code"];
                    $dong["GiaBan"] = Common::NumberFomat($row["Price"]);
                    $dong["SoLuong"] = $row["SoLuong"];
                    $thanhTien = $row["Price"] * $row["SoLuong"];
                    $dong["ThanhTien"] = Common::NumberFomat($thanhTien);
                    $tongTien += $thanhTien;
                    $dong["GhiChu"] = "";
                    $resultData[] = $dong;
                    $indexBoder++;
                }

                $resultData[] = [
                    "Tổng tiền",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    Common::NumberFomat($tongTien),
                    ""
                ];
                $resultData[] = [
                    "Số tiền viết bằng chữ:",
                    Common::Number2words($tongTien) . " đồng",
                    "",
                    "",
                    "",
                    "",
                    "",
                    ""
                ];
                $ngayLap = date("d", time());
                $thangLap = date("m", time());
                $namLap = date("Y", time());
                $resultData[] = [
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "ngày {$ngayLap} tháng {$thangLap} năm {$namLap}",
                    ""
                ];
                $resultData[] = [
                    "",
                    "Người lập",
                    "",
                    "",
                    "",
                    "",
                    "kế toán",
                    ""
                ];
                $resultData[] = [];
                $resultData[] = [];
                $resultData[] = [];
                $resultData[] = [
                    "",
                    "Lê Thị Hồng",
                    "",
                    "",
                    "",
                    "",
                    "Hoàng Thị Huệ",
                    ""
                ];
                $fileName = "public/excel/baocao.xlsx";
                if (is_dir("public/excel")) {
                    mkdir("public/excel", 0777);
                }
                ExcelConfig::BangThongKeHangCangTin($resultData, $fileName, $indexBoder);
            }
        }
        $this->ViewTheme(["data" => $resultData], Model_ViewTheme::get_viewthene(), "");
    }
    public function thongtinthe()
    {
        if (isset($_POST["mathe"])) {
            $maThe = $_POST["mathe"];
        }
        $this->ViewTheme([], Model_ViewTheme::get_viewthene(), "");
    }
}
