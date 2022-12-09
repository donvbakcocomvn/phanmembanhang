<?php

use Common\Common;
use Model\ExcelConfig;
use Model\Products;
use Model\ThongKe;
use Module\cart\Model\BenhNhan;
use Module\cart\Model\Order;
use Module\cart\Model\OrderDetail;

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

        // $thongKe = new ThongKe();
        // $thongKe->ClearOrderDetail();
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
        $this->Bread[] = [
            "title" => "Thống Kê",
            "link" => "/backend/thongke/"
        ];
        $Bread = new \Model\Breadcrumb();
        $Bread->setBreadcrumb($this->Bread);

        $resultData = [];
        if (isset($_GET["btnLoc"])) {
            if (isset($_GET["fromDate"]) && isset($_GET["toDate"])) {
                $fromDate = $_REQUEST["fromDate"] ?? "";
                $toDate = $_REQUEST["toDate"] ?? "";
                $KhoaBenh = $_REQUEST["KhoaBenh"] ?? null;
                $DanhMuc = $_REQUEST["DanhMuc"] ?? null;
                $DanhMuc = $DanhMuc == "" ? null : $DanhMuc;
                $thongKe = new ThongKe();
                $result = $thongKe->ThongKeBanHangCangTin($fromDate, $toDate, $KhoaBenh, $DanhMuc);
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
                $KhoaBenh = $_REQUEST["KhoaBenh"] ?? null;
                $DanhMuc = $_REQUEST["DanhMuc"] ?? null;
                $thongKe = new ThongKe();

                // $TuNgay = date("Y-m-d 00:00:00", strtotime($fromDate));
                // $DenNgay = date("Y-m-d 23:59:59", strtotime($toDate));
                // var_dump($TuNgay);
                // var_dump($DenNgay);
                $result = $thongKe->ThongKeBanHangCangTin($fromDate, $toDate, $KhoaBenh, $DanhMuc);

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
                    $dong["GiaBan"] = $row["Price"];
                    $dong["SoLuong"] = $row["SoLuong"];
                    $thanhTien = $row["Price"] * $row["SoLuong"];
                    $dong["ThanhTien"] = $thanhTien;
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
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    ""
                ];
                $fileName = "public/excel/baocao.xlsx";
                if (is_dir("public/excel")) {
                    mkdir("public/excel", 0777);
                }
                ExcelConfig::BangThongKeHangCangTin($resultData, $fileName, $indexBoder);
            }
        }

        if (isset($_GET["btnExport1"])) {
            if (isset($_GET["fromDate"]) && isset($_GET["toDate"])) {
                $fromDate = $_GET["fromDate"] ?? "";
                $toDate = $_GET["toDate"] ?? "";
                $KhoaBenh = $_REQUEST["KhoaBenh"] ?? null;
                $DanhMuc = $_REQUEST["DanhMuc"] ?? null;
                $thongKe = new ThongKe();

                $result = $thongKe->ThongKeBanHangCangTin($fromDate, $toDate, $KhoaBenh, $DanhMuc);

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
                    "PHIẾU ĐỀ XUẤT HÀNG HÓA CĂN TIN",
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
                    $dong["GiaBan"] = $row["Price"];
                    $dong["SoLuong"] = $row["SoLuong"];
                    $thanhTien = $row["Price"] * $row["SoLuong"];
                    $dong["ThanhTien"] = $thanhTien;
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
                    "Giám đốc",
                    "",
                    "PT Bộ Phận",
                    "",
                    "",
                    "Người đề nghị",
                    ""
                ];
                $resultData[] = [];
                $resultData[] = [];
                $resultData[] = [];
                $resultData[] = [
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
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
    public function thongke1()
    {
        $this->Bread[] = [
            "title" => "Danh sách thống kê",
            "link" => "/backend/thongke/"
        ];
        $this->Bread[] = [
            "title" => "BẢNG KÊ BÁN HÀNG",
            "link" => "/backend/thongke1/"
        ];
        $Bread = new \Model\Breadcrumb();
        $Bread->setBreadcrumb($this->Bread);


        $resultData = [];
        if (isset($_GET["btnLoc"])) {
            if (isset($_GET["fromDate"]) && isset($_GET["toDate"])) {
                $fromDate = $_REQUEST["fromDate"] ?? "";
                $toDate = $_REQUEST["toDate"] ?? "";
                $KhoaBenh = $_REQUEST["KhoaBenh"] ?? null;
                $DanhMuc = $_REQUEST["DanhMuc"] ?? null;
                $DanhMuc = $DanhMuc == "" ? null : $DanhMuc;
                $thongKe = new ThongKe();
                $result = $thongKe->ThongKeBanHangCangTin($fromDate, $toDate, $KhoaBenh, $DanhMuc);
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
                $KhoaBenh = $_REQUEST["KhoaBenh"] ?? null;
                $DanhMuc = $_REQUEST["DanhMuc"] ?? null;
                $thongKe = new ThongKe();

                // $TuNgay = date("Y-m-d 00:00:00", strtotime($fromDate));
                // $DenNgay = date("Y-m-d 23:59:59", strtotime($toDate));
                // var_dump($TuNgay);
                // var_dump($DenNgay);
                $result = $thongKe->ThongKeBanHangCangTin($fromDate, $toDate, $KhoaBenh, $DanhMuc);

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
                    $dong["GiaBan"] = $row["Price"];
                    $dong["SoLuong"] = $row["SoLuong"];
                    $thanhTien = $row["Price"] * $row["SoLuong"];
                    $dong["ThanhTien"] = $thanhTien;
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
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
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
    public function thongke2()
    {
        $this->Bread[] = [
            "title" => "Danh sách thống kê",
            "link" => "/backend/thongke/"
        ];
        $this->Bread[] = [
            "title" => "BẢNG KÊ BÁN HÀNG",
            "link" => "/backend/thongke1/"
        ];
        $Bread = new \Model\Breadcrumb();
        $Bread->setBreadcrumb($this->Bread);


        $resultData = [];
        if (isset($_GET["btnLoc"])) {
            if (isset($_GET["fromDate"]) && isset($_GET["toDate"])) {
                $fromDate = $_REQUEST["fromDate"] ?? "";
                $toDate = $_REQUEST["toDate"] ?? "";
                $KhoaBenh = $_REQUEST["KhoaBenh"] ?? null;
                $DanhMuc = $_REQUEST["DanhMuc"] ?? null;
                $DanhMuc = $DanhMuc == "" ? null : $DanhMuc;
                $thongKe = new ThongKe();
                $result = $thongKe->ThongKeBanHangCangTin($fromDate, $toDate, $KhoaBenh, $DanhMuc);
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
        if (isset($_GET["btnExport1"])) {
            if (isset($_GET["fromDate"]) && isset($_GET["toDate"])) {
                $fromDate = $_GET["fromDate"] ?? "";
                $toDate = $_GET["toDate"] ?? "";
                $KhoaBenh = $_REQUEST["KhoaBenh"] ?? null;
                $DanhMuc = $_REQUEST["DanhMuc"] ?? null;
                $thongKe = new ThongKe();

                $result = $thongKe->ThongKeBanHangCangTin($fromDate, $toDate, $KhoaBenh, $DanhMuc);

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
                    "PHIẾU ĐỀ XUẤT HÀNG HÓA CĂN TIN",
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
                    $dong["ThanhTien"] = $thanhTien;
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
                    "PT Bộ Phận",
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

    public function exportthongkekhoabenhnhan($reult, $tuNgay, $denNgay)
    {
        $tuNgay = date("d-m-Y", strtotime($tuNgay));
        $denNgay = date("d-m-Y", strtotime($denNgay));
        $resultData[] = [
            "SỞ Y TẾ THÀNH PHỐ HỒ CHÍ MINH",
        ];
        $resultData[] = [
            "BỆNH VIỆN NHÂN ÁI",
        ];
        $resultData[] = [
            "Thống Kê Bán Hàng Theo Bệnh Nhân",
        ];
        $resultData[] = [
            "Từ ngày: {$tuNgay} đến ngày: {$denNgay}",
        ];
        $data = [
            "STT",
            "Tên Bệnh Nhân",
            "Hàng Hóa",
            "Mã Danh Mục",
            "ĐVT",
            "Giá Bán",
            "Khoa",
            "Số Lượng",
            "Thành Tiền",
            "Ghi Chú",
        ];
        $indexBoder = 5;
        $resultData[] = $data;
        if ($reult) {
            $stt = 1;
            foreach ($reult as $key => $orderdetail) {
                $_orderdetail = new OrderDetail($orderdetail);
                $dong = [];
                $dong[] = $stt++;
                $dong[] = $_orderdetail->Order()->BenhNhan()->HotenBN ?? "n/a";
                $dong[] = $_orderdetail->Product()->nameProduct;
                $dong[] = $_orderdetail->Product()->Category()->Code;
                $dong[] = $_orderdetail->Product()->unitPrice;
                $dong[] = $_orderdetail->Product()->Price;
                $dong[] = $_orderdetail->Order()->BenhNhan()->Tiensubenh;
                $dong[] = $_orderdetail->Number;
                $dong[] = $_orderdetail->ThanhTienNoFomat();
                $dong[] = $_orderdetail->Order()->Note ?? "";
                $resultData[] =  $dong;
                $indexBoder++;
            }
        }

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
            "",
            ""
        ];
        $resultData[] = [
            "",
            "Người lập",
            "",
            "PT Bộ Phận",
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
            "",
            "",
            "",
            "",
            "",
            "",
            ""
        ];
        $fileName = "public/excel/baocao1.xlsx";
        if (is_dir("public/excel")) {
            mkdir("public/excel", 0777);
        }
        ExcelConfig::BangThongKeHangCangTin($resultData, $fileName, $indexBoder);
    }

    public function thongkekhoabenhnhan()
    {
        $this->Bread[] = [
            "title" => "Danh sách thống kê",
            "link" => "/backend/thongke/"
        ];
        $this->Bread[] = [
            "title" => "Thông kê bán hàng theo bệnh nhân",
            "link" => ""
        ];
        $Bread = new \Model\Breadcrumb();
        $Bread->setBreadcrumb($this->Bread);
        $resultData = [];
        $total = 0;
        $param = [];
        if (isset($_GET["btnExport"])) {
            $thongKe = new ThongKe();
            $fromDate = $_GET["fromDate"] ?? "";
            $toDate = $_GET["toDate"] ?? "";
            $param["fromDate"] = $fromDate;
            $param["toDate"] = $toDate;
            $param["Status"] = Order::DaThuTien;
            $result = $thongKe->ThongKeBanHangTheoBenhNhanPT($param, 1, 1, $total);
            $this->exportthongkekhoabenhnhan($result, $fromDate, $toDate);
        }

        if (isset($_GET["btnLoc"])) {

            $thongKe = new ThongKe();
            $fromDate = $_GET["fromDate"] ?? null;
            $toDate = $_GET["toDate"] ?? null;
            $param["fromDate"] = $fromDate;
            $param["toDate"] = $toDate;
            $param["Status"] = Order::DaThuTien;

            $pageIndex = $_GET["page"] ?? 1;
            $pageNumber = $_GET["number"] ?? 10;
            $param["page"] = $pageIndex;
            $param["number"] = $pageNumber;
            $result = $thongKe->ThongKeBanHangTheoBenhNhanPT($param, $pageIndex, $pageNumber, $total);
            $param["total"] = $total;
            $data = [
                "STT",
                "Tên Bệnh Nhân",
                "Mã HH",
                "Hàng Hóa",
                "Mã Danh Mục",
                "ĐVT",
                "Giá Bán",
                "Khoa",
                "Số Lượng",
                "Thành Tiền",
                "Ghi Chú",
            ];
            $resultData[] = $data;
            if ($result) {
                $orderDetail = $result; 
                if ($orderDetail) {
                    $dong = [];
                    $stt = 1;
                    foreach ($orderDetail as $key => $orderdetail) {
                        $_orderdetail = new OrderDetail($orderdetail);
                        $dong = [];
                        $dong[] = $stt++;
                        $dong[] = $_orderdetail->Order()->BenhNhan()->HotenBN;
                        $dong[] = $_orderdetail->Product()->Code;
                        $dong[] = $_orderdetail->Product()->nameProduct;
                        $dong[] = $_orderdetail->Product()->Category()->Code;
                        $dong[] = $_orderdetail->Product()->unitPrice;
                        $dong[] = $_orderdetail->Product()->Price();
                        $dong[] = $_orderdetail->Order()->BenhNhan()->Tiensubenh;
                        $dong[] = $_orderdetail->Number;
                        $dong[] = $_orderdetail->ThanhTien();
                        $dong[] = $_orderdetail->Order()->Note ?? "";
                        $resultData[] =  $dong;
                    }
                }
            }
        }
        $this->ViewTheme(["data" => $resultData, "param" => $param, "total" => $total], Model_ViewTheme::get_viewthene(), "");
    }
    public function thongkekhoa()
    {

        $this->Bread[] = [
            "title" => "Danh sách thống kê",
            "link" => "/backend/thongke/"
        ];
        $this->Bread[] = [
            "title" => "BẢNG KÊ BÁN HÀNG THEO KHOA",
            "link" => "/backend/thongke1/"
        ];
        $Bread = new \Model\Breadcrumb();
        $Bread->setBreadcrumb($this->Bread);
        $resultData = [];
        if (isset($_GET["btnLoc"])) {
            if (isset($_GET["fromDate"]) && isset($_GET["toDate"])) {
                $fromDate = $_REQUEST["fromDate"] ?? "";
                $toDate = $_REQUEST["toDate"] ?? "";
                $KhoaBenh = $_REQUEST["KhoaBenh"] ?? null;

                $thongKe = new ThongKe();
                $result = $thongKe->ThongKeBanHangCangTin($fromDate, $toDate, $KhoaBenh);
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
                        $dong["KhoaBenh"] = $row["KhoaBenh"];
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
                $KhoaBenh = $_REQUEST["KhoaBenh"] ?? null;
                $thongKe = new ThongKe();

                $result = $thongKe->ThongKeBanHangCangTin($fromDate, $toDate, $KhoaBenh);

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
                    "Khoa",
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
                    $dong["KhoaBenh"] = $row["KhoaBenh"];
                    $dong["DVT"] = $row["unitPrice"];
                    $dong["MaHang"] = $row["Code"];
                    $dong["GiaBan"] = Common::NumberFomat($row["Price"]);
                    $dong["SoLuong"] = $row["SoLuong"];
                    $thanhTien = $row["Price"] * $row["SoLuong"];
                    $dong["ThanhTien"] = $thanhTien;
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
                    "Ngày {$ngayLap} tháng {$thangLap} năm {$namLap}",
                    ""
                ];
                $resultData[] = [
                    "",
                    "Người lập",
                    "",
                    "PT Bộ Phận",
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
        if (isset($_GET["btnExport1"])) {
            var_dump($_GET["btnExport1"] . "___");

            if (isset($_GET["fromDate"]) && isset($_GET["toDate"])) {
                $fromDate = $_GET["fromDate"] ?? "";
                $toDate = $_GET["toDate"] ?? "";
                $KhoaBenh = $_REQUEST["KhoaBenh"] ?? null;
                $DanhMuc = $_REQUEST["DanhMuc"] ?? null;
                $thongKe = new ThongKe();

                // $TuNgay = date("Y-m-d 00:00:00", strtotime($fromDate));
                // $DenNgay = date("Y-m-d 23:59:59", strtotime($toDate));
                // var_dump($TuNgay);
                // var_dump($DenNgay);
                $result = $thongKe->ThongKeBanHangCangTin($fromDate, $toDate, $KhoaBenh, $DanhMuc);

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
                    "PHIẾU ĐỀ XUẤT HÀNG HÓA CĂN TIN",
                ];
                $resultData[] = [
                    "Từ ngày: {$tuNgay} đến ngày: {$denNgay}",
                ];
                $resultData[] = [
                    "STT",
                    "Hàng hóa",
                    "Danh mục",
                    "Khoa",
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
                    $dong["KhoaBenh"] = $row["KhoaBenh"];
                    $dong["DVT"] = $row["unitPrice"];
                    $dong["MaHang"] = $row["Code"];
                    $dong["GiaBan"] = Common::NumberFomat($row["Price"]);
                    $dong["SoLuong"] = $row["SoLuong"];
                    $thanhTien = $row["Price"] * $row["SoLuong"];
                    $dong["ThanhTien"] = $thanhTien;
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
                    "PT Bộ Phận",
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
