-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th8 26, 2022 lúc 09:53 AM
-- Phiên bản máy phục vụ: 10.3.35-MariaDB-log-cll-lve
-- Phiên bản PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `etttnoaqhosting_pmbh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bakcodt_admin`
--

CREATE TABLE `bakcodt_admin` (
  `Username` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `Random` varchar(100) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `GioiTinh` int(1) DEFAULT NULL,
  `NgaySinh` datetime DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `Note` text DEFAULT NULL,
  `Groups` int(11) NOT NULL,
  `Urlimages` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bakcodt_admin`
--

INSERT INTO `bakcodt_admin` (`Username`, `Password`, `Random`, `Name`, `Email`, `Phone`, `GioiTinh`, `NgaySinh`, `Address`, `Note`, `Groups`, `Urlimages`) VALUES
('admin', 'f3f0dd14c594fb0f1a6a3ce1c817a51229f15a79', '123eds', 'Nguyễn Văn Độ', 'namdong92@gmail.com', '0372779917', 0, '1992-01-19 00:00:00', '', '', 0, ''),
('hien', '0160fcab20be60a68c3d240a45511d7c884feb00', 'c7cb06c4373c083865a7259ce2965', 'Hiền', '', '', NULL, NULL, '', 'Chị Hiền Kế Toán', 0, NULL),
('minh', '1ac176b14b1693cd73dd28ec80427d676896c196', 'b502d991cbb5a81d791b219ee47e9', 'Le Minh', '', '', NULL, NULL, '', '', 3, ''),
('quanly1', 'ce7a6297c24d096a6be5d9e4057b467e489b2e14', '6c58aa3de0fcae59b998f7ba470cc', 'Quản lý 1', '', '', NULL, NULL, '', 'Tổ IT', 0, NULL),
('QuanLyDonHang', '671957094b55329d6aa7a0f8bb045d54968c6b39', '4b1e8c4bb5943f17f4a5016c3c6ce', 'Quản Lý Đơn Hàng', 'QuanLyDonHang@gmail.com', '', 0, '0000-00-00 00:00:00', '', '', 3, ''),
('QuanLySanPham', '029bcb40cdb5b415f16eed2fc9e3c7ea0b221ea3', 'e5daa0686c2939ee61ddfc125cfb2', 'Quản Lý Sản Phẩm', 'QuanLySanPham@gmail.com', '0123456789', 0, '0000-00-00 00:00:00', '', '', 3, ''),
('QuanLyThanhToan', '1dc11dc25255298f293ccc74386c87e1288091fa', '6993a3823a59b29970d657a4c4aa7', 'Quản lý thanh toán', 'thanhtoan@gmail.com', '1200000000000', 0, '0000-00-00 00:00:00', '', '', 3, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bakcodt_adv`
--

CREATE TABLE `bakcodt_adv` (
  `ID` int(11) NOT NULL,
  `Name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Content` text COLLATE utf8_unicode_ci NOT NULL,
  `Attribute` text COLLATE utf8_unicode_ci NOT NULL,
  `DataAttribute` text COLLATE utf8_unicode_ci NOT NULL,
  `Group` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Urlimages` text COLLATE utf8_unicode_ci NOT NULL,
  `Link` text COLLATE utf8_unicode_ci NOT NULL,
  `isShow` int(11) NOT NULL,
  `createDate` date NOT NULL,
  `updateDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bakcodt_adv`
--

INSERT INTO `bakcodt_adv` (`ID`, `Name`, `Content`, `Attribute`, `DataAttribute`, `Group`, `Urlimages`, `Link`, `isShow`, `createDate`, `updateDate`) VALUES
(101, 'Quảng Cáo Slide Trang Chủ 1', 'noi dung', '{}', '[]', 'homeslide', '/public/img/images/quangcao/homeslide/homeslide-101.jpeg', '#', 1, '2021-09-19', '2021-09-19'),
(103, 'Quảng Cáo Slide Trang Chủ', '', '{}', '[]', 'homeslide', '/public/img/images/quangcao/homeslide/homeslide-103.jpeg', '#', 1, '2021-09-19', '2021-09-19'),
(106, 'Quảng Cáo Slide Trang Chủ 3', '', '{}', '[]', 'homeslide', '/public/img/images/quangcao/homeslide/nena222_dsa.jpg', 'https://bachhoagiadinh.web102.xyz/public/img/images/quangcao/homeslide/nena222_dsa.jpg', 1, '2021-09-22', '2021-09-22'),
(107, 'Hỗ Trợ Giao Hàng', 'Giao Hàng Nội Thành Phố', '', '[]', 'DichVu', '/public/img/images/quangcao/s1.png', '#', 1, '2021-09-28', '2021-09-28'),
(108, 'Chất Lượng', 'Phân phối sản phẩm chất lượng', '', '[]', 'DichVu', '/public/img/images/quangcao/s2.png', '#', 1, '2021-09-28', '2021-09-28'),
(109, 'HỖ TRỢ MUA HỘ', 'Mua Hộ Sản phẩm', '{}', '[]', 'DichVu', '/public/img/images/quangcao/s3.png', '#', 1, '2021-09-28', '2021-09-28'),
(110, 'Sản Phẩm', 'Ngồn Sản Phẩm Chất Lượng', '{}', '[]', 'DichVu', '/public/img/images/quangcao/s3.png', '#', 1, '2021-09-28', '2021-09-28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bakcodt_adv_groups`
--

CREATE TABLE `bakcodt_adv_groups` (
  `Id` int(11) NOT NULL,
  `Code` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Name` text CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bakcodt_adv_groups`
--

INSERT INTO `bakcodt_adv_groups` (`Id`, `Code`, `Name`) VALUES
(1, 'homeslide', 'Quảng Cáo Slide Trang Chủ'),
(6, 'DichVu', 'Dịch Vụ Trang');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bakcodt_brand`
--

CREATE TABLE `bakcodt_brand` (
  `Id` varchar(50) NOT NULL,
  `Name` varchar(500) NOT NULL,
  `Alias` varchar(500) NOT NULL,
  `Images` text NOT NULL,
  `Note` text NOT NULL,
  `Desc` text NOT NULL,
  `Title` varchar(500) NOT NULL,
  `Keyword` varchar(500) NOT NULL,
  `isDelete` int(11) NOT NULL,
  `Arrange` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bakcodt_brand`
--

INSERT INTO `bakcodt_brand` (`Id`, `Name`, `Alias`, `Images`, `Note`, `Desc`, `Title`, `Keyword`, `isDelete`, `Arrange`) VALUES
('0d402400-583c-4847-a7dc-15c782479262', 'Local Brand', '', '/public/img/images/information/img-16557098621402-8.png', '', 'Local Brand', 'Local Brand', 'Local Brand', 1, 0),
('12ec016f-e6d0-11eb-998b-005056b633ed', 'No Brand', 'KhÃ´ng CÃ³ ThÆ°Æ¡ng Hiá»‡u', '/public/img/images/information/img-1631357199257-37.png', ' ', 'No Brand', 'No Brand', 'No Brand', 0, 0),
('1e2d0dd3-604f-4b5a-8a4e-ce4c3a2fdc1f', 'MARC', '', '/public/img/images/information/img-1631357199257-37.png', '', 'MARC', 'MARC', 'MARC', -1, 0),
('23c99ee1-ff7d-414e-aac8-c2bcad6ac5ec', 'Zara', 'zara', '/public/img/images/information/img-1631357199257-37.png', '', 'Zara', 'Zara', 'Zara', -1, 0),
('4d3e8978-aef0-4a42-ad01-30db3252a669', 'Lef', '', '/public/img/images/information/img-1631357199257-37.png', '', 'Lef', 'Lef', 'Lef', -1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bakcodt_categories`
--

CREATE TABLE `bakcodt_categories` (
  `catID` int(11) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `catName` varchar(200) NOT NULL,
  `Path` varchar(250) NOT NULL,
  `Link` varchar(500) NOT NULL,
  `Note` varchar(200) DEFAULT NULL,
  `parentCatID` int(11) DEFAULT NULL,
  `banner` varchar(200) DEFAULT NULL,
  `Public` int(11) NOT NULL,
  `Serial` int(11) NOT NULL,
  `Lang` varchar(4) NOT NULL DEFAULT 'vi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bakcodt_categories`
--

INSERT INTO `bakcodt_categories` (`catID`, `Code`, `catName`, `Path`, `Link`, `Note`, `parentCatID`, `banner`, `Public`, `Serial`, `Lang`) VALUES
(1, 'TPCB', 'Thực phẩm chế biến', 'thuc-pham-che-bien', '/thuc-pham-che-bien', '', 0, '', 1, 0, 'vi'),
(2, 'BKCL', 'Bánh kẹo các loại', 'banh-keo-cac-loai', '/banh-keo-cac-loai', '', 0, '', -1, 0, 'vi'),
(3, 'SCL', 'Sữa các loại', 'sua-cac-loai', '/sua-cac-loai', '', 0, '', -1, 0, 'vi'),
(4, 'NGKCL', 'Nước giải khát các loại', 'nuoc-giai-khat-cac-loai', '/nuoc-giai-khat-cac-loai', '', 0, '', -1, 0, 'vi'),
(5, 'MMPG', 'Mì Miến Phở Gói', 'mi-mien-pho-goi', '/mi-mien-pho-goi', '', 0, '', -1, 0, 'vi'),
(6, 'DANCGV', 'Dầu ăn, nước chấm, gia vị', 'dau-an-nuoc-cham-gia-vi', '/dau-an-nuoc-cham-gia-vi', '', 0, '', -1, 0, 'vi'),
(7, 'CSCN', 'Chăm sóc cá nhân', 'cham-soc-ca-nhan', '/cham-soc-ca-nhan', '', 0, '', -1, 0, 'vi'),
(8, 'DK', 'Đồ khô', 'do-kho', '/do-kho', '', 0, '', 1, 0, 'vi'),
(9, 'TSDTK', 'Tiền sử dụng tại khoa', 'tien-su-dung-tai-khoa', '/tien-su-dung-tai-khoa', '', 0, '', 1, 0, 'vi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bakcodt_categoriesbak`
--

CREATE TABLE `bakcodt_categoriesbak` (
  `catID` int(11) NOT NULL,
  `catName` varchar(200) NOT NULL,
  `Path` varchar(250) NOT NULL,
  `Link` varchar(500) NOT NULL,
  `Note` varchar(200) DEFAULT NULL,
  `parentCatID` int(11) DEFAULT NULL,
  `banner` varchar(200) DEFAULT NULL,
  `Public` int(11) NOT NULL,
  `Serial` int(11) NOT NULL,
  `Lang` varchar(4) NOT NULL DEFAULT 'vi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bakcodt_categoriesbak`
--

INSERT INTO `bakcodt_categoriesbak` (`catID`, `catName`, `Path`, `Link`, `Note`, `parentCatID`, `banner`, `Public`, `Serial`, `Lang`) VALUES
(1, 'Nông nghiệp', 'nong-nghiep', '/nong-nghiep', '', 0, 'thuysan2.jpg', 1, 3, 'vi'),
(2, 'Thủy sản', 'thuy-san', '/thuy-san', '', 0, 'thuysan2.jpg', 1, 0, 'vi'),
(3, 'Giao thông vận tải', 'giao-thong-van-tai', '/giao-thong-van-tai', '', 0, 'gtvt1.jpg', 1, 0, 'vi'),
(4, 'Nhà đất', 'nha-dat', '/nha-dat', '', 0, 'nhadat1.jpg', 1, 0, 'vi'),
(5, 'Việc làm', 'viec-lam', '/viec-lam', '', 0, 'vieclam1.jpg', 1, 0, 'vi'),
(6, 'Thời trang', 'thoi-trang', '/thoi-trang', '', 0, 'thoitrang1.jpg', 1, 0, 'vi'),
(7, 'Điện tử', 'dien-tu', '/dien-tu', '', 0, 'dientu1.jpg', 1, 0, 'vi'),
(8, 'Xe cộ', 'xe-co', '/xe-co', '', 0, 'xe1.jpg', 1, 0, 'vi'),
(9, 'Kim khí -  Điện máy', 'kim-khi-dien-may', '/kim-khi-dien-may', '', 0, 'kimkhidienmay1.jpg', 1, 0, 'vi'),
(10, 'Cơ khí', 'co-khi', '/co-khi', '', 0, 'cokhi1.jpg', 1, 0, 'vi'),
(11, 'Công nghệ', 'cong-nghe', '/cong-nghe', '', 0, 'congnghe1.jpg', 1, 0, 'vi'),
(12, 'Công nghiệp', 'cong-nghiep', '/cong-nghiep', '', 0, 'congnghiep2.jpg', 1, 0, 'vi'),
(13, 'Xây dựng', 'xay-dung', '/xay-dung', '', 0, 'xaydung3.jpg', 1, 0, 'vi'),
(14, 'Dịch vụ - Giải trí - Du lịch', 'dich-vu-giai-tri-du-lich', '/dich-vu-giai-tri-du-lich', '', 0, 'dichvu3.jpg', 1, 0, 'vi'),
(15, 'Thực phẩm -  Ăn uống', 'thuc-pham-an-uong', '/thuc-pham-an-uong', '', 0, 'thucpham2.jpg', 1, 0, 'vi'),
(16, 'Sắc đẹp -  Sức khỏe - Y tế', 'sac-dep-suc-khoe-y-te', '/sac-dep-suc-khoe-y-te', '', 0, 'yte2.jpg', 1, 0, 'vi'),
(17, 'Nội ngoại thất', 'noi-ngoai-that', '/noi-ngoai-that', '', 0, 'noingoaithat3.jpg', 1, 0, 'vi'),
(18, 'Sách - Văn phong phẩm', 'sach-van-phong-pham', '/sach-van-phong-pham', '', 0, 'sach2.jpg', 1, 0, 'vi'),
(19, 'Thể thao', 'the-thao', '/the-thao', '', 0, 'thethao3.jpg', 1, 0, 'vi'),
(20, 'Sản phẩm nông nghiệp', 'san-pham-nong-nghiep', '/nong-nghiep/san-pham-nong-nghiep', 'asdas', 1, '0', 1, 9, 'vi'),
(21, 'Thiết bị nông nghiệp', 'thiet-bi-nong-nghiep', '/nong-nghiep/thiet-bi-nong-nghiep', '', 1, '0', 1, 0, 'vi'),
(22, 'Phụ kiện nông nghiệp', 'phu-kien-nong-nghiep', '/nong-nghiep/phu-kien-nong-nghiep', '', 1, '0', 1, 0, 'vi'),
(23, 'Sản phẩm thủy sản', 'san-pham-thuy-san', '/thuy-san/san-pham-thuy-san', '', 2, '0', -1, 0, 'vi'),
(24, 'Thiết bị thủy sản', 'thiet-bi-thuy-san', '/thuy-san/thiet-bi-thuy-san', '', 2, '0', 1, 0, 'vi'),
(25, 'Phụ kiện thủy sản', 'phu-kien-thuy-san', '/thuy-san/phu-kien-thuy-san', '', 2, '0', 1, 0, 'vi'),
(26, 'Dịch vụ vận chuyển', 'dich-vu-van-chuyen', '/giao-thong-van-tai/dich-vu-van-chuyen', '', 3, '0', 1, 0, 'vi'),
(27, 'Dịch vụ cho thuê', 'dich-vu-cho-thue', '/giao-thong-van-tai/dich-vu-cho-thue', '', 3, '0', 1, 0, 'vi'),
(28, 'Mua bán nhà', 'mua-ban-nha', '/nha-dat/mua-ban-nha', '', 4, '0', 1, 0, 'vi'),
(29, 'Mua bán đất', 'mua-ban-dat', '/nha-dat/mua-ban-dat', '', 4, '0', 1, 0, 'vi'),
(30, 'Cho thuê', 'cho-thue', '/nha-dat/cho-thue', '', 4, '0', 1, 0, 'vi'),
(31, 'Cần thuê', 'can-thue', '/nha-dat/can-thue', '', 4, '0', 1, 0, 'vi'),
(32, 'Dịch vụ nhà đất', 'dich-vu-nha-dat', '/nha-dat/dich-vu-nha-dat', '', 4, '0', 1, 0, 'vi'),
(33, 'Người tìm việc', 'nguoi-tim-viec', '/viec-lam/nguoi-tim-viec', '', 5, '0', 1, 0, 'vi'),
(34, 'Việc tìm người', 'viec-tim-nguoi', '/viec-lam/viec-tim-nguoi', '', 5, '0', 1, 0, 'vi'),
(35, 'Thời trang nam', 'thoi-trang-nam', '/thoi-trang/thoi-trang-nam', '', 6, '0', 1, 0, 'vi'),
(36, 'Thời  trang nữ', 'thoi-trang-nu', '/thoi-trang/thoi-trang-nu', '', 6, '0', 1, 0, 'vi'),
(37, 'Thời trang teen', 'thoi-trang-teen', '/thoi-trang/thoi-trang-teen', '', 6, '0', 1, 0, 'vi'),
(38, 'Thời trang trẻ em', 'thoi-trang-tre-em', '/thoi-trang/thoi-trang-tre-em', '', 6, '0', 1, 0, 'vi'),
(39, 'Đồng phục - Đồ đôi', 'dong-phuc-do-doi', '/thoi-trang/dong-phuc-do-doi', '', 6, '0', 1, 0, 'vi'),
(40, 'Đồng hồ', 'dong-ho', '/thoi-trang/dong-ho', '', 6, '0', 1, 0, 'vi'),
(41, 'Trang sức', 'trang-suc', '/thoi-trang/trang-suc', '', 6, '0', 1, 0, 'vi'),
(42, 'Giày dép', 'giay-dep', '/thoi-trang/giay-dep', '', 6, '0', 1, 0, 'vi'),
(43, 'Phụ kiện', 'phu-kien', '/thoi-trang/phu-kien', '', 6, '0', 1, 0, 'vi'),
(44, 'Điện thoại di động', 'dien-thoai-di-dong', '/dien-tu/dien-thoai-di-dong', '', 7, '0', 1, 0, 'vi'),
(45, 'Máy tính bảng', 'may-tinh-bang', '/dien-tu/may-tinh-bang', '', 7, '0', 1, 0, 'vi'),
(46, 'Máy tính - Laptop', 'may-tinh-laptop', '/dien-tu/may-tinh-laptop', '', 7, '0', 1, 0, 'vi'),
(47, 'Máy ảnh - Máy quay', 'may-anh-may-quay', '/dien-tu/may-anh-may-quay', '', 7, '0', 1, 0, 'vi'),
(48, 'Tivi - Loa - Amply - Máy nghe nhạc', 'tivi-loa-amply-may-nghe-nhac', '/dien-tu/tivi-loa-amply-may-nghe-nhac', '', 7, '0', 1, 0, 'vi'),
(49, 'Phụ kiện - Linh kiện', 'phu-kien-linh-kien', '/dien-tu/phu-kien-linh-kien', '', 7, '0', 1, 0, 'vi'),
(50, 'Ô Tô', 'o-to', '/xe-co/o-to', '', 8, '0', 1, 0, 'vi'),
(51, 'Xe máy', 'xe-may', '/xe-co/xe-may', '', 8, '0', 1, 0, 'vi'),
(52, 'Xe đạp', 'xe-dap', '/xe-co/xe-dap', '', 8, '0', 1, 0, 'vi'),
(53, 'Đồ chơi', 'do-choi', '/xe-co/do-choi', '', 8, '0', 1, 0, 'vi'),
(54, 'Cơ khí ô tô', 'co-khi-o-to', '/xe-co/co-khi-o-to', '', 8, '0', 1, 0, 'vi'),
(55, 'Cơ khí xe máy', 'co-khi-xe-may', '/xe-co/co-khi-xe-may', '', 8, '0', 1, 0, 'vi'),
(56, 'Phụ tùng', 'phu-tung', '/xe-co/phu-tung', '', 8, '0', 1, 0, 'vi'),
(57, 'Sản phẩm', 'san-pham', '/kim-khi-dien-may/san-pham', '', 9, '0', 1, 0, 'vi'),
(58, 'Thiết bị', 'thiet-bi', '/kim-khi-dien-may/thiet-bi', '', 9, '0', 1, 0, 'vi'),
(59, 'Phụ tùng - Linh kiện', 'phu-tung-linh-kien', '/kim-khi-dien-may/phu-tung-linh-kien', '', 9, '0', 1, 0, 'vi'),
(60, 'Sản phẩm cơ khí', 'san-pham-co-khi', '/co-khi/san-pham-co-khi', '', 10, '0', 1, 0, 'vi'),
(61, 'Thiết bị cơ khí', 'thiet-bi-co-khi', '/co-khi/thiet-bi-co-khi', '', 10, '0', 1, 0, 'vi'),
(62, 'Phụ kiện cơ khí', 'phu-kien-co-khi', '/co-khi/phu-kien-co-khi', '', 10, '0', 1, 0, 'vi'),
(63, 'Sản phẩm công nghệ', 'san-pham-cong-nghe', '/cong-nghe/san-pham-cong-nghe', '', 11, '0', 1, 0, 'vi'),
(64, 'Thiết bị công nghệ', 'thiet-bi-cong-nghe', '/cong-nghe/thiet-bi-cong-nghe', '', 11, '0', 1, 0, 'vi'),
(65, 'Phụ kiện - Linh kiện công nghệ', 'phu-kien-linh-kien-cong-nghe', '/cong-nghe/phu-kien-linh-kien-cong-nghe', '', 11, '0', 1, 0, 'vi'),
(66, 'Sản phẩm công nghiệp', 'san-pham-cong-nghiep', '/cong-nghiep/san-pham-cong-nghiep', '', 12, '0', 1, 0, 'vi'),
(67, 'Thiết bị công nghiệp', 'thiet-bi-cong-nghiep', '/cong-nghiep/thiet-bi-cong-nghiep', '', 12, '0', 1, 0, 'vi'),
(68, 'Dịch vụ công nghiệp', 'dich-vu-cong-nghiep', '/cong-nghiep/dich-vu-cong-nghiep', '', 12, '0', 1, 0, 'vi'),
(69, 'Thiết bị xây dựng', 'thiet-bi-xay-dung', '/xay-dung/thiet-bi-xay-dung', '', 13, '0', 1, 0, 'vi'),
(70, 'Vật liệu xây dựng', 'vat-lieu-xay-dung', '/xay-dung/vat-lieu-xay-dung', '', 13, '0', 1, 0, 'vi'),
(71, 'Dịch vụ vận tải', 'dich-vu-van-tai', '/dich-vu-giai-tri-du-lich/dich-vu-van-tai', '', 14, '0', 1, 0, 'vi'),
(72, 'Dịch vụ cưới hỏi', 'dich-vu-cuoi-hoi', '/dich-vu-giai-tri-du-lich/dich-vu-cuoi-hoi', '', 14, '0', 1, 0, 'vi'),
(73, 'Dịch vụ du lịch', 'dich-vu-du-lich', '/dich-vu-giai-tri-du-lich/dich-vu-du-lich', '', 14, '0', 1, 0, 'vi'),
(74, 'Cho thuê', 'cho-thue', '/dich-vu-giai-tri-du-lich/cho-thue', '', 14, '0', 1, 0, 'vi'),
(75, 'Game - Đồ chơi', 'game-do-choi', '/dich-vu-giai-tri-du-lich/game-do-choi', '', 14, '0', 1, 0, 'vi'),
(76, 'Thực phẩm tươi sống', 'thuc-pham-tuoi-song', '/thuc-pham-an-uong/thuc-pham-tuoi-song', '', 15, '0', 1, 0, 'vi'),
(77, 'Thực phẩm qua chế biến', 'thuc-pham-qua-che-bien', '/thuc-pham-an-uong/thuc-pham-qua-che-bien', '', 15, '0', 1, 0, 'vi'),
(78, 'Thức ăn nhẹ', 'thuc-an-nhe', '/thuc-pham-an-uong/thuc-an-nhe', '', 15, '0', 1, 0, 'vi'),
(79, 'Đặt sản', 'dat-san', '/thuc-pham-an-uong/dat-san', '', 15, '0', 1, 0, 'vi'),
(80, 'Đồ hộp - Đồ khô', 'do-hop-do-kho', '/thuc-pham-an-uong/do-hop-do-kho', '', 15, '0', 1, 0, 'vi'),
(81, 'Gia vị', 'gia-vi', '/thuc-pham-an-uong/gia-vi', '', 15, '0', 1, 0, 'vi'),
(82, 'Ngũ cốc - Sản phẩm từ ngũ cốc', 'ngu-coc-san-pham-tu-ngu-coc', '/thuc-pham-an-uong/ngu-coc-san-pham-tu-ngu-coc', '', 15, '0', 1, 0, 'vi'),
(83, 'Bánh kẹo - Mức', 'banh-keo-muc', '/thuc-pham-an-uong/banh-keo-muc', '', 15, '0', 1, 0, 'vi'),
(84, 'Thức uống', 'thuc-uong', '/thuc-pham-an-uong/thuc-uong', '', 15, '0', 1, 0, 'vi'),
(85, 'Nguyên liệu', 'nguyen-lieu', '/thuc-pham-an-uong/nguyen-lieu', '', 15, '0', 1, 0, 'vi'),
(86, 'Mỹ phẩm', 'my-pham', '/sac-dep-suc-khoe-y-te/my-pham', '', 16, '0', 1, 0, 'vi'),
(87, 'Thiết bị làm đẹp', 'thiet-bi-lam-dep', '/sac-dep-suc-khoe-y-te/thiet-bi-lam-dep', '', 16, '0', 1, 0, 'vi'),
(88, 'Dịch vụ chăm sóc', 'dich-vu-cham-soc', '/sac-dep-suc-khoe-y-te/dich-vu-cham-soc', '', 16, '0', 1, 0, 'vi'),
(89, 'Nội thất không gian', 'noi-that-khong-gian', '/noi-ngoai-that/noi-that-khong-gian', '', 17, '0', 1, 0, 'vi'),
(90, 'Nội thất không gian', 'noi-that-khong-gian', '/noi-ngoai-that/noi-that-khong-gian', '', 17, '0', 1, 0, 'vi'),
(91, 'Nội thất phòng ngủ', 'noi-that-phong-ngu', '/noi-ngoai-that/noi-that-phong-ngu', '', 17, '0', 1, 0, 'vi'),
(92, 'Nội thất phòng ăn - Nhà bếp', 'noi-that-phong-an-nha-bep', '/noi-ngoai-that/noi-that-phong-an-nha-bep', '', 17, '0', 1, 0, 'vi'),
(93, 'Nội thất phòng tắm', 'noi-that-phong-tam', '/noi-ngoai-that/noi-that-phong-tam', '', 17, '0', 1, 0, 'vi'),
(94, 'Nội thất văn phòng', 'noi-that-van-phong', '/noi-ngoai-that/noi-that-van-phong', '', 17, '0', 1, 0, 'vi'),
(95, 'Nội thất nhà hàng', 'noi-that-nha-hang', '/noi-ngoai-that/noi-that-nha-hang', '', 17, '0', 1, 0, 'vi'),
(96, 'Nội thất công cộng', 'noi-that-cong-cong', '/noi-ngoai-that/noi-that-cong-cong', '', 17, '0', 1, 0, 'vi'),
(97, 'Ngoại thất sân vườn', 'ngoai-that-san-vuon', '/noi-ngoai-that/ngoai-that-san-vuon', '', 17, '0', 1, 0, 'vi'),
(98, 'Nội thất thờ cúng', 'noi-that-tho-cung', '/noi-ngoai-that/noi-that-tho-cung', '', 17, '0', 1, 0, 'vi'),
(99, 'Nội thất trẻ em', 'noi-that-tre-em', '/noi-ngoai-that/noi-that-tre-em', '', 17, '0', 1, 0, 'vi'),
(100, 'Đồ thủ công mỹ nghệ', 'do-thu-cong-my-nghe', '/noi-ngoai-that/do-thu-cong-my-nghe', '', 17, '0', 1, 0, 'vi'),
(101, 'Đồ cổ', 'do-co', '/noi-ngoai-that/do-co', '', 17, '0', 1, 0, 'vi'),
(102, 'Thiết kế nội thất', 'thiet-ke-noi-that', '/noi-ngoai-that/thiet-ke-noi-that', '', 17, '0', 1, 0, 'vi'),
(103, 'Quà tặng', 'qua-tang', '/sach-van-phong-pham/qua-tang', '', 18, '0', 1, 0, 'vi'),
(104, 'Sách', 'sach', '/sach-van-phong-pham/sach', '', 18, '0', 1, 0, 'vi'),
(105, 'Thiết bị', 'thiet-bi', '/sach-van-phong-pham/thiet-bi', '', 18, '0', 1, 0, 'vi'),
(106, 'Văn phòng phẩm', 'van-phong-pham', '/sach-van-phong-pham/van-phong-pham', '', 18, '0', 1, 0, 'vi'),
(107, 'Thể thao', 'the-thao', '/the-thao/the-thao', '', 19, '0', 1, 0, 'vi'),
(108, 'Thiết bị - Dụng cụ', 'thiet-bi-dung-cu', '/the-thao/thiet-bi-dung-cu', '', 19, '0', 1, 0, 'vi'),
(109, 'Dịch vụ', 'dich-vu', '/the-thao/dich-vu', '', 19, '0', 1, 0, 'vi'),
(110, 'Lúa gạo', 'lua-gao', '/nong-nghiep/san-pham-nong-nghiep/lua-gao', '', 20, '0', -1, 0, 'vi'),
(111, 'Hoa quả', 'hoa-qua', '/nong-nghiep/san-pham-nong-nghiep/hoa-qua', '', 20, '0', 1, 0, 'vi'),
(112, 'Cây giống', 'cay-giong', '/nong-nghiep/san-pham-nong-nghiep/cay-giong', '', 20, '0', 1, 0, 'vi'),
(113, 'Máy móc', 'may-moc', '/nong-nghiep/thiet-bi-nong-nghiep/may-moc', '', 21, '0', 1, 0, 'vi'),
(114, 'Phân bón', 'phan-bon', '/nong-nghiep/thiet-bi-nong-nghiep/phan-bon', '', 21, '0', 1, 0, 'vi'),
(115, 'Thuốc nông nghiệp', 'thuoc-nong-nghiep', '/nong-nghiep/thiet-bi-nong-nghiep/thuoc-nong-nghiep', '', 21, '0', 1, 0, 'vi'),
(116, 'Thủy sản chăn nuôi', 'thuy-san-chan-nuoi', '/thuy-san/san-pham-thuy-san/thuy-san-chan-nuoi', '', 23, '0', -1, 0, 'vi'),
(117, 'Thủy sản biển', 'thuy-san-bien', '/thuy-san/san-pham-thuy-san/thuy-san-bien', '', 23, '0', -1, 0, 'vi'),
(118, 'Con giống', 'con-giong', '/thuy-san/san-pham-thuy-san/con-giong', '', 23, '0', -1, 0, 'vi'),
(119, 'Máy móc', 'may-moc', '/thuy-san/thiet-bi-thuy-san/may-moc', '', 24, '0', -1, 1, 'vi'),
(120, 'Thức ăn', 'thuc-an', '/thuy-san/thiet-bi-thuy-san/thuc-an', '', 24, '0', 1, 2, 'vi'),
(121, 'Thuốc thủy sản', 'thuoc-thuy-san', '/thuy-san/thiet-bi-thuy-san/thuoc-thuy-san', '', 24, '0', 1, 3, 'vi'),
(122, 'Biệt thự - Nhà chia lô', 'biet-thu-nha-chia-lo', '/thuy-san/thiet-bi-thuy-san/biet-thu-nha-chia-lo', '', 24, '0', 1, 10, 'vi'),
(123, 'Mặt bằng kinh doanh', 'mat-bang-kinh-doanh', '/nha-dat/mua-ban-nha/mat-bang-kinh-doanh', '', 28, '0', 1, 0, 'vi'),
(124, 'Nhà chung cư', 'nha-chung-cu', '/nha-dat/mua-ban-nha/nha-chung-cu', '', 28, '0', 1, 0, 'vi'),
(125, 'Nhà mặt phố', 'nha-mat-pho', '/nha-dat/mua-ban-nha/nha-mat-pho', '', 28, '0', 1, 0, 'vi'),
(126, 'Nhà trong ngõ', 'nha-trong-ngo', '/nha-dat/mua-ban-nha/nha-trong-ngo', '', 28, '0', 1, 0, 'vi'),
(127, 'Nhà xưởng, kho', 'nha-xuong-kho', '/nha-dat/mua-ban-nha/nha-xuong-kho', '', 28, '0', 1, 0, 'vi'),
(128, 'Đất canh tác - Làm nông nghiệp', 'dat-canh-tac-lam-nong-nghiep', '/nha-dat/mua-ban-dat/dat-canh-tac-lam-nong-nghiep', '', 29, '0', 1, 0, 'vi'),
(129, 'Đất thổ cư', 'dat-tho-cu', '/nha-dat/mua-ban-dat/dat-tho-cu', '', 29, '0', 1, 0, 'vi'),
(130, 'Cho thuê mặt bằng - Cửa hàng kinh doanh', 'cho-thue-mat-bang-cua-hang-kinh-doanh', '/nha-dat/cho-thue/cho-thue-mat-bang-cua-hang-kinh-doanh', '', 30, '0', 1, 0, 'vi'),
(131, 'Cho thuê nhà', 'cho-thue-nha', '/nha-dat/cho-thue/cho-thue-nha', '', 30, '0', 1, 0, 'vi'),
(132, 'Cho thuê phòng trọ - Ki ốt', 'cho-thue-phong-tro-ki-ot', '/nha-dat/cho-thue/cho-thue-phong-tro-ki-ot', '', 30, '0', 1, 0, 'vi'),
(133, 'Cho thuê văn phòng', 'cho-thue-van-phong', '/nha-dat/cho-thue/cho-thue-van-phong', '', 30, '0', 1, 0, 'vi'),
(134, 'Cho thuê đất', 'cho-thue-dat', '/nha-dat/cho-thue/cho-thue-dat', '', 30, '0', 1, 0, 'vi'),
(135, 'Cho thuê kho xưởng', 'cho-thue-kho-xuong', '/nha-dat/cho-thue/cho-thue-kho-xuong', '', 30, '0', 1, 0, 'vi'),
(136, 'Cần thuê mặt bằng - Cửa hàng kihn doanh', 'can-thue-mat-bang-cua-hang-kihn-doanh', '/nha-dat/can-thue/can-thue-mat-bang-cua-hang-kihn-doanh', '', 31, '0', 1, 0, 'vi'),
(137, 'Cần thuê nhà', 'can-thue-nha', '/nha-dat/can-thue/can-thue-nha', '', 31, '0', 1, 0, 'vi'),
(138, 'Cần thuê phòng trọ - Ki ốt', 'can-thue-phong-tro-ki-ot', '/nha-dat/can-thue/can-thue-phong-tro-ki-ot', '', 31, '0', 1, 0, 'vi'),
(139, 'Cần thuê văn phòng', 'can-thue-van-phong', '/nha-dat/can-thue/can-thue-van-phong', '', 31, '0', 1, 0, 'vi'),
(140, 'Cần thuê đất', 'can-thue-dat', '/nha-dat/can-thue/can-thue-dat', '', 31, '0', 1, 0, 'vi'),
(141, 'Cần thuê kho xưởng', 'can-thue-kho-xuong', '/nha-dat/can-thue/can-thue-kho-xuong', '', 31, '0', 1, 0, 'vi'),
(142, 'Quần áo nam', 'quan-ao-nam', '/thoi-trang/thoi-trang-nam/quan-ao-nam', '', 35, '0', 1, 0, 'vi'),
(143, 'Giày dép nam', 'giay-dep-nam', '/thoi-trang/thoi-trang-nam/giay-dep-nam', '', 35, '0', 1, 0, 'vi'),
(144, 'Phụ kiện thời trang nam', 'phu-kien-thoi-trang-nam', '/thoi-trang/thoi-trang-nam/phu-kien-thoi-trang-nam', '', 35, '0', 1, 0, 'vi'),
(145, 'Quần áo nữ', 'quan-ao-nu', '/thoi-trang/thoi-trang-nu/quan-ao-nu', '', 36, '0', 1, 0, 'vi'),
(146, 'Giày dép nữ', 'giay-dep-nu', '/thoi-trang/thoi-trang-nu/giay-dep-nu', '', 36, '0', 1, 0, 'vi'),
(147, 'Phụ kiện thời trang nữ', 'phu-kien-thoi-trang-nu', '/thoi-trang/thoi-trang-nu/phu-kien-thoi-trang-nu', '', 36, '0', 1, 0, 'vi'),
(148, 'Thời trang tóc', 'thoi-trang-toc', '/thoi-trang/thoi-trang-nu/thoi-trang-toc', '', 36, '0', 1, 0, 'vi'),
(149, 'Trang phục teen nam', 'trang-phuc-teen-nam', '/thoi-trang/thoi-trang-teen/trang-phuc-teen-nam', '', 37, '0', 1, 0, 'vi'),
(150, 'Trang phục teen nữ', 'trang-phuc-teen-nu', '/thoi-trang/thoi-trang-teen/trang-phuc-teen-nu', '', 37, '0', 1, 0, 'vi'),
(151, 'Quần áo trẻ em', 'quan-ao-tre-em', '/thoi-trang/thoi-trang-tre-em/quan-ao-tre-em', '', 38, '0', 1, 0, 'vi'),
(152, 'Giày dép trẻ em', 'giay-dep-tre-em', '/thoi-trang/thoi-trang-tre-em/giay-dep-tre-em', '', 38, '0', 1, 0, 'vi'),
(153, 'Phụ kiện thời trang trẻ em', 'phu-kien-thoi-trang-tre-em', '/thoi-trang/thoi-trang-tre-em/phu-kien-thoi-trang-tre-em', '', 38, '0', 1, 0, 'vi'),
(154, 'Quần áo đồng phục', 'quan-ao-dong-phuc', '/thoi-trang/dong-phuc-do-doi/quan-ao-dong-phuc', '', 39, '0', 1, 0, 'vi'),
(155, 'Quần áo đôi', 'quan-ao-doi', '/thoi-trang/dong-phuc-do-doi/quan-ao-doi', '', 39, '0', 1, 0, 'vi'),
(156, 'Phụ kiện đồ đồng phục', 'phu-kien-do-dong-phuc', '/thoi-trang/dong-phuc-do-doi/phu-kien-do-dong-phuc', '', 39, '0', 1, 0, 'vi'),
(157, 'Phu kiện đồ đôi', 'phu-kien-do-doi', '/thoi-trang/dong-phuc-do-doi/phu-kien-do-doi', '', 39, '0', 1, 0, 'vi'),
(158, 'Trang sức cho nữ', 'trang-suc-cho-nu', '/thoi-trang/trang-suc/trang-suc-cho-nu', '', 41, '0', 1, 0, 'vi'),
(159, 'Trang sức cho nam', 'trang-suc-cho-nam', '/thoi-trang/trang-suc/trang-suc-cho-nam', '', 41, '0', 1, 0, 'vi'),
(160, 'Trang sức cặp đôi', 'trang-suc-cap-doi', '/thoi-trang/trang-suc/trang-suc-cap-doi', '', 41, '0', 1, 0, 'vi'),
(161, 'Trang sức trẻ em', 'trang-suc-tre-em', '/thoi-trang/trang-suc/trang-suc-tre-em', '', 41, '0', 1, 0, 'vi'),
(162, 'Nhẫn cưới - Đính hôn', 'nhan-cuoi-dinh-hon', '/thoi-trang/trang-suc/nhan-cuoi-dinh-hon', '', 41, '0', 1, 0, 'vi'),
(163, 'Đá quý', 'da-quy', '/thoi-trang/trang-suc/da-quy', '', 41, '0', 1, 0, 'vi'),
(164, 'Vàng miếng', 'vang-mieng', '/thoi-trang/trang-suc/vang-mieng', '', 41, '0', 1, 0, 'vi'),
(165, 'Giày thể thao', 'giay-the-thao', '/thoi-trang/giay-dep/giay-the-thao', '', 42, '0', 1, 0, 'vi'),
(166, 'Phụ kiện', 'phu-kien', '/thoi-trang/giay-dep/phu-kien', '', 42, '0', 1, 0, 'vi'),
(167, 'Giày dép khác', 'giay-dep-khac', '/thoi-trang/giay-dep/giay-dep-khac', '', 42, '0', 1, 0, 'vi'),
(168, 'Nông nghiệp1', 'nong-nghiep1', '/nong-nghiep/nong-nghiep1', 'note', 1, '', -1, 0, 'vi'),
(172, 'Nông nghiệp 2', 'nong-nghiep-2', '/nong-nghiep/nong-nghiep-2', 'asdasdas', 1, '', -2, 0, 'vi'),
(173, 'nguyen van do', 'nguyen-van-do', '/nong-nghiep/nguyen-van-do', 'noter', 1, '', -1, 0, 'vi'),
(174, 'lúa gạo', 'lua-gao', '/nong-nghiep/san-pham-nong-nghiep/lua-gao', '', 20, '', 1, 9, 'vi'),
(175, 'Thông tin chung', 'thong-tin-chung', '/nong-nghiep/thong-tin-chung', '', 1, '', 0, 0, 'vi'),
(178, 'DanhMuc', 'danhmuc', '/danhmuc', '', 0, '', -1, 0, 'vi'),
(179, 'DanhMuc sanb pham', 'danhmuc-sanb-pham', '/danhmuc-sanb-pham', '', 0, '', 1, 0, 'vi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bakcodt_categories_1`
--

CREATE TABLE `bakcodt_categories_1` (
  `catID` int(11) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `catName` varchar(200) NOT NULL,
  `Path` varchar(250) NOT NULL,
  `Link` varchar(500) NOT NULL,
  `Note` varchar(200) DEFAULT NULL,
  `parentCatID` int(11) DEFAULT NULL,
  `banner` varchar(200) DEFAULT NULL,
  `Public` int(11) NOT NULL,
  `Serial` int(11) NOT NULL,
  `Lang` varchar(4) NOT NULL DEFAULT 'vi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bakcodt_categories_1`
--

INSERT INTO `bakcodt_categories_1` (`catID`, `Code`, `catName`, `Path`, `Link`, `Note`, `parentCatID`, `banner`, `Public`, `Serial`, `Lang`) VALUES
(16, 'PCDB', 'PHÒNG CHỐNG DỊCH BỆNH ', 'phong-chong-dich-benh', '/phong-chong-dich-benh', '', 0, '', 1, 0, 'vi'),
(88, 'DGD', ' ĐỒ GIA DỤNG TIỆN ÍCH', 'do-gia-dung-tien-ich', '/do-gia-dung-tien-ich', '', 0, '', 1, 0, 'vi'),
(90, 'TPK', 'THỰC PHẨM KHÔ ', 'thuc-pham-kho', '/thuc-pham-kho', '', 0, '', 1, 0, 'vi'),
(91, 'DTCN', 'ĐIỆN TỬ CÔNG NGHỆ', 'dien-tu-cong-nghe', '/dien-tu-cong-nghe', '', 0, '', 1, 0, 'vi'),
(93, 'DIGD', ' ĐỒ ĐIỆN GIA DỤNG', 'do-dien-gia-dung', '/do-dien-gia-dung', '', 0, '', 1, 0, 'vi'),
(95, 'VPPA', 'VĂN PHÒNG PHẨM TIỆN ÍCH', 'van-phong-pham-tien-ich', '/van-phong-pham-tien-ich', '', 0, '', 1, 0, 'vi'),
(97, 'TCTT', 'THỜ CÚNG - PHONG THỦY', 'tho-cung--phong-thuy', '/tho-cung--phong-thuy', '', 0, '', 1, 0, 'vi'),
(98, 'TPKK', 'ĐỒ KHÔ', 'do-kho', '/thuc-pham-kho/do-kho', '', 90, '', 1, 1, 'vi'),
(99, 'TPKS', 'SỮA', 'sua', '/thuc-pham-kho/sua', '', 90, '', 1, 0, 'vi'),
(100, 'TPKC', 'BÁNH KẸO', 'banh-keo', '/thuc-pham-kho/banh-keo', '', 90, '', 1, 0, 'vi'),
(101, 'TPKB', 'NƯỚC GIẢI KHÁT', 'nuoc-giai-khat', '/thuc-pham-kho/nuoc-giai-khat', '', 90, '', 1, 0, 'vi'),
(102, 'TPKF', 'BỘT', 'bot', '/thuc-pham-kho/bot', '', 90, '', 1, 0, 'vi'),
(103, 'TPKD', 'ĐẬU', 'dau', '/thuc-pham-kho/dau', '', 90, '', 1, 0, 'vi'),
(104, 'TPKV', 'THỰC PHẨM CHAY', 'thuc-pham-chay', '/thuc-pham-kho/thuc-pham-chay', '', 90, '', 1, 0, 'vi'),
(105, 'DGDB', 'ĐỒ DÙNG CHO BÉ', 'do-dung-cho-be', '/do-gia-dung-tien-ich/do-dung-cho-be', '', 88, '', 1, 0, 'vi'),
(106, 'DGDH', 'CHĂM SÓC CÁ NHÂN', 'cham-soc-ca-nhan', '/do-gia-dung-tien-ich/cham-soc-ca-nhan', '', 88, '', 1, 0, 'vi'),
(107, 'DGDK', 'ĐỒ DÙNG NHÀ BẾP', 'do-dung-nha-bep', '/do-gia-dung-tien-ich/do-dung-nha-bep', '', 88, '', 1, 0, 'vi'),
(108, 'DGDC', 'ĐỒ DÙNG CÁ NHÂN', 'do-dung-ca-nhan', '/do-gia-dung-tien-ich/do-dung-ca-nhan', '', 88, '', 1, 0, 'vi'),
(109, 'VSTR', 'VỆ SINH - TẨY RỬA', 've-sinh--tay-rua', '/do-gia-dung-tien-ich/ve-sinh--tay-rua', '', 88, '', 1, 0, 'vi'),
(110, 'DDGD', 'ĐỒ DÙNG GIA ĐÌNH', 'do-dung-gia-dinh', '/do-gia-dung-tien-ich/do-dung-gia-dinh', '', 88, '', 1, 0, 'vi'),
(111, 'TPKG', 'GIA VỊ - NƯỚC CHẤM', 'gia-vi--nuoc-cham', '/thuc-pham-kho/gia-vi--nuoc-cham', '', 90, '', 1, 2, 'vi'),
(112, 'VTYT', 'Trang Thiết Bị Y Tế', 'trang-thiet-bi-y-te', '/trang-thiet-bi-y-te', '', 0, '', 1, 0, 'vi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bakcodt_content`
--

CREATE TABLE `bakcodt_content` (
  `id` int(5) NOT NULL COMMENT 'system',
  `type` int(3) DEFAULT 0 COMMENT 'system',
  `catid` int(5) DEFAULT 0 COMMENT 'system',
  `userid` int(5) DEFAULT -1 COMMENT 'system',
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'system',
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'system',
  `file_extra` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'system',
  `fields_extra` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'system',
  `active` tinyint(1) DEFAULT 1 COMMENT 'system',
  `order_id` int(5) DEFAULT 0 COMMENT 'system',
  `web_keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'system',
  `web_desc` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'system',
  `date` date DEFAULT NULL COMMENT 'system',
  `timestamp` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'system',
  `visited` int(6) DEFAULT 0 COMMENT 'system',
  `featuredon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'system',
  `productHot` tinyint(1) DEFAULT 0,
  `productSaleOff` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `commodityStatus` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `idBrand` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Dynamic content';

--
-- Đang đổ dữ liệu cho bảng `bakcodt_content`
--

INSERT INTO `bakcodt_content` (`id`, `type`, `catid`, `userid`, `icon`, `image`, `file_extra`, `fields_extra`, `active`, `order_id`, `web_keyword`, `web_desc`, `date`, `timestamp`, `visited`, `featuredon`, `productHot`, `productSaleOff`, `commodityStatus`, `idBrand`) VALUES
(2, 2, 0, 2, 'my-phamohui-han-quoc-banner-3.jpg', '', 'a:0:{}', 'N;', 1, 0, NULL, NULL, '2015-12-10', '2017-07-15 11:39:31', 0, NULL, 0, NULL, NULL, ''),
(3, 2, 0, 2, 'my_pham_han_quoc_2_750x330.jpg', '', 'a:0:{}', 'N;', 1, 1, NULL, NULL, '2015-12-10', '2017-07-15 11:41:33', 0, NULL, 0, NULL, NULL, ''),
(64, 1, 53, 1, 'thefaceshop_rice_water_bright_cleansing_foam_150ml_master.jpg', '', 'a:0:{}', 'N;', 1, 14, NULL, NULL, '2018-03-21', '2018-04-20 09:02:27', 0, NULL, 0, NULL, '1', ''),
(15, 5, 0, 2, 'icon02.png', '', 'a:0:{}', 'N;', 1, 1, NULL, NULL, '2016-05-26', '2016-06-26 15:46:26', 0, NULL, 0, NULL, NULL, NULL),
(16, 5, 0, 2, 'icon01.png', '', 'a:0:{}', 'N;', 1, 0, NULL, NULL, '2016-05-26', '2016-06-26 15:46:09', 0, NULL, 0, NULL, NULL, NULL),
(17, 3, 0, 2, 'tintuc.jpg', '', 'a:1:{i:0;s:0:\"\";}', 'N;', 1, 0, NULL, NULL, '2016-05-26', '2017-04-23 03:58:27', 0, NULL, 0, NULL, NULL, ''),
(13, 2, 0, 2, 'banner1-1024x336.jpg', '', 'a:0:{}', 'N;', 1, 2, NULL, NULL, '2016-05-25', '2017-07-15 11:55:39', 0, NULL, 0, NULL, NULL, ''),
(26, 6, 0, 2, '', '', 'a:0:{}', 'N;', 1, 0, NULL, NULL, '2016-09-26', '2017-04-11 07:56:39', 0, NULL, 0, NULL, NULL, NULL),
(27, 7, 0, 2, '', '', 'a:0:{}', 'N;', 1, 0, NULL, NULL, '2016-09-26', '2017-01-13 14:17:57', 0, NULL, 0, NULL, NULL, ''),
(28, 7, 0, 2, '', '', 'a:0:{}', 'N;', 1, 1, NULL, NULL, '2016-09-26', '2017-01-13 14:18:08', 0, NULL, 0, NULL, NULL, ''),
(29, 7, 0, 2, '', '', 'a:0:{}', 'N;', 1, 2, NULL, NULL, '2016-09-26', '2017-01-13 14:18:25', 0, NULL, 0, NULL, NULL, ''),
(30, 8, 0, 2, 'callgirl.png', '', 'a:0:{}', 'N;', 1, 0, NULL, NULL, '2016-10-04', '2016-10-04 08:33:57', 0, NULL, 0, NULL, NULL, NULL),
(34, 9, 0, 2, '', '', 'a:0:{}', 'N;', 1, 0, NULL, NULL, '2016-12-10', '2017-04-20 15:58:09', 0, NULL, 0, NULL, NULL, NULL),
(35, 9, 0, 2, '', '', 'a:0:{}', 'N;', 1, 1, NULL, NULL, '2016-12-10', '2017-04-20 15:58:09', 0, NULL, 0, NULL, NULL, NULL),
(36, 9, 0, 2, '', '', 'a:0:{}', 'N;', 1, 2, NULL, NULL, '2016-12-10', '2017-04-20 15:58:09', 0, NULL, 0, NULL, NULL, NULL),
(90, 1, 49, 1, 'af004344_01_1_master.jpg', '', 'a:0:{}', 'N;', 1, 5, NULL, NULL, '2018-03-24', '2018-04-20 09:03:02', 0, NULL, 0, NULL, '1', ''),
(44, 1, 32, 2, '', '', 'a:0:{}', 'N;', 1, 1, NULL, NULL, '2017-03-30', '2017-03-30 03:26:35', 0, NULL, 0, NULL, '', 'Chọn thương thiệu'),
(45, 1, 32, 2, '', '', 'a:0:{}', 'N;', 1, 0, NULL, NULL, '2017-03-30', '2017-03-30 03:26:35', 0, NULL, 0, NULL, '', 'Chọn thương thiệu'),
(91, 1, 49, 1, '.png', '', 'a:0:{}', 'N;', 1, 4, NULL, NULL, '2018-03-24', '2018-04-20 09:03:02', 0, NULL, 0, NULL, '1', ''),
(65, 1, 53, 1, 'clean_face_acne_solution_foam_cleansing_251b5961-a10f-47d9-7e7f-3a175f3a2dfe_822e701c-aaae-48d4-5c67-187270b21ec5_master.jpg', '', 'a:0:{}', 'N;', 1, 13, NULL, NULL, '2018-03-21', '2018-04-20 09:02:27', 0, NULL, 0, NULL, '1', ''),
(62, 1, 50, 1, '', '', 'a:0:{}', 'N;', 1, 56, NULL, NULL, '2017-09-11', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '', ''),
(63, 1, 53, 1, 'white-seed-exfoliating-foam-cleanser-_new__master-1521644240-.jpg', '', 'a:0:{}', 'N;', 1, 15, NULL, NULL, '2018-03-21', '2018-04-20 09:02:27', 0, NULL, 0, NULL, '1', ''),
(66, 1, 53, 1, 'thefaceshop-rice-water-bright-rice-bran-foaming-cleanser_master.jpg', '', 'a:0:{}', 'N;', 1, 12, NULL, NULL, '2018-03-21', '2018-04-20 09:02:27', 0, NULL, 0, NULL, '1', ''),
(67, 1, 53, 1, 'chia_seed_fresh_cleansing_foam_master.jpg', '', 'a:0:{}', 'N;', 1, 11, NULL, NULL, '2018-03-21', '2018-04-20 09:02:27', 0, NULL, 0, NULL, '1', ''),
(68, 1, 53, 1, 'jeju_volcanic_lava_pore_scrub_foam_c271d9a0-528f-4f3d-5da6-8e04f34961d6_f1b1aa80-d72b-45ba-51e4-8fa0382fcf31_master.jpg', '', 'a:0:{}', 'N;', 1, 10, NULL, NULL, '2018-03-21', '2018-04-20 09:02:27', 0, NULL, 0, NULL, '1', ''),
(69, 1, 53, 1, 'chia_seed_fresh_bubble_foam_master.jpg', '', 'a:0:{}', 'N;', 1, 9, NULL, NULL, '2018-03-21', '2018-04-20 09:02:27', 0, NULL, 0, NULL, '1', ''),
(70, 1, 53, 1, 'chia_seed_fresh_foaming_liquid_cleanser_master.jpg', '', 'a:0:{}', 'N;', 1, 8, NULL, NULL, '2018-03-21', '2018-04-20 09:02:27', 0, NULL, 0, NULL, '1', ''),
(71, 1, 53, 1, '145719178985_master.jpg', '', 'a:0:{}', 'N;', 1, 7, NULL, NULL, '2018-03-21', '2018-04-20 09:02:27', 0, NULL, 0, NULL, '1', ''),
(72, 1, 60, 1, '039002000000000191.jpg', '', 'a:0:{}', 'N;', 1, 30, NULL, NULL, '2018-03-22', '2018-03-28 17:41:59', 0, NULL, 0, NULL, '1', ''),
(73, 1, 60, 1, '6fd462cd5b21742f2ed94455d06bd64f.jpg', '', 'a:0:{}', 'N;', 1, 29, NULL, NULL, '2018-03-22', '2018-03-28 17:41:59', 0, NULL, 0, NULL, '1', ''),
(74, 1, 63, 1, '075001000000001235.jpg', '', 'a:0:{}', 'N;', 1, 0, NULL, NULL, '2018-03-22', '2018-03-25 15:46:30', 0, NULL, 0, NULL, '1', ''),
(109, 1, 57, 1, 'real-nature-mask-sheet-aloe.2017_578ae35c31a047169ec2acde9b39f663_master.jpg', '', 'a:0:{}', 'N;', 1, 12, NULL, NULL, '2018-03-25', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(75, 1, 61, 1, 'perfume_seed_rich_creamy_shower_gel_6a5a4887-9a80-448b-6487-f2147e6fd0c2_98b52fd3-63f6-4d3f-5a4a-ae64d0091141_master.jpg', '', 'a:0:{}', 'N;', 1, 5, NULL, NULL, '2018-03-23', '2018-03-23 16:25:54', 0, NULL, 0, NULL, '1', ''),
(76, 1, 61, 1, 'perfume-seed-capsule-body-wash-2016_master-1524133243-.jpg', '', 'a:0:{}', 'N;', 1, 4, NULL, NULL, '2018-03-23', '2018-04-19 10:20:43', 0, NULL, 0, NULL, '1', ''),
(77, 1, 61, 1, 'perfume_seed_white_peony_body_wash_6865d01f-126a-4ce1-6d06-d4451f7f39c1_master.jpg', '', 'a:0:{}', 'N;', 1, 3, NULL, NULL, '2018-03-23', '2018-03-23 16:25:54', 0, NULL, 0, NULL, '1', ''),
(78, 1, 61, 1, 'perfume_seed_white_peony_body_milk_b4bc4b02-e32c-4b77-44d7-f3fcd84b7dc8_master.jpg', '', 'a:0:{}', 'N;', 1, 2, NULL, NULL, '2018-03-23', '2018-03-23 16:25:54', 0, NULL, 0, NULL, '1', ''),
(79, 1, 61, 1, 'af002449_01_1_master.jpg', '', 'a:0:{}', 'N;', 1, 1, NULL, NULL, '2018-03-23', '2018-03-23 16:25:54', 0, NULL, 0, NULL, '1', ''),
(80, 1, 61, 1, 'perfume_seed_rich_body_milk_50a56ecd-6c41-4eec-6ec6-cbefca6a7a75_554ce6a5-f0bb-4693-5f66-bce7d14118de_master.jpg', '', 'a:0:{}', 'N;', 1, 0, NULL, NULL, '2018-03-23', '2018-03-23 16:25:54', 0, NULL, 0, NULL, '1', ''),
(81, 1, 50, 1, 'white-seed-brightening-toner_master.jpg', '', 'a:0:{}', 'N;', 1, 55, NULL, NULL, '2018-03-23', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(82, 1, 50, 1, 'white-seed-brightening-lotion_master.jpg', '', 'a:0:{}', 'N;', 1, 54, NULL, NULL, '2018-03-23', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(83, 1, 50, 1, '0001250_white-seed-blanclouding-white-moisture-cream_540_master.jpeg', '', 'a:0:{}', 'N;', 1, 53, NULL, NULL, '2018-03-23', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(84, 1, 50, 1, 'af004367_01_1_master.jpeg', '', 'a:0:{}', 'N;', 1, 52, NULL, NULL, '2018-03-23', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(85, 1, 50, 1, 'thefaceshop_chia_seed_hydrating_toner_47fd2bd5-341c-4e0c-4c06-55a92c024344_master.jpg', '', 'a:0:{}', 'N;', 1, 51, NULL, NULL, '2018-03-24', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(86, 1, 50, 1, 'thefaceshop_chia_seed_hydrating_emulsion_master.jpg', '', 'a:0:{}', 'N;', 1, 50, NULL, NULL, '2018-03-24', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(87, 1, 50, 1, 'thefaceshop_chia_seed_no_shine_hydrating_cream_master.jpg', '', 'a:0:{}', 'N;', 1, 49, NULL, NULL, '2018-03-24', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(88, 1, 50, 1, '809463240.g_400-w_g_master.jpg', '', 'a:0:{}', 'N;', 1, 48, NULL, NULL, '2018-03-24', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(89, 1, 50, 1, 'chia_serum__94281.1458941403.1280.1280_master.jpg', '', 'a:0:{}', 'N;', 1, 47, NULL, NULL, '2018-03-24', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(92, 1, 49, 1, 'natural_sun_eco_ice_air_puff_sun_spf50_pa____1_master.jpg', '', 'a:0:{}', 'N;', 1, 3, NULL, NULL, '2018-03-24', '2018-04-20 09:03:02', 0, NULL, 0, NULL, '1', ''),
(93, 1, 56, 1, '1_ce0420de4cf748a090c259ec3f9b161a_master.jpg', '', 'a:0:{}', 'N;', 1, 9, NULL, NULL, '2018-03-25', '2018-03-25 14:59:35', 0, NULL, 0, NULL, '1', ''),
(94, 1, 56, 1, 'tay-trang-mat-moi-gao-rice-water-bright-the-face-shop-4-600x587.jpg', '', 'a:0:{}', 'N;', 1, 8, NULL, NULL, '2018-03-25', '2018-03-25 14:59:35', 0, NULL, 0, NULL, '1', ''),
(95, 1, 56, 1, 'chia_seed_fresh_cleansing_water_master.jpg', '', 'a:0:{}', 'N;', 1, 7, NULL, NULL, '2018-03-25', '2018-03-25 14:59:35', 0, NULL, 0, NULL, '1', ''),
(96, 1, 56, 1, '1_ce0420de4cf748a090c259ec3f9b161a_master-1521988604-.jpg', '', 'a:0:{}', 'N;', 1, 6, NULL, NULL, '2018-03-25', '2018-03-25 14:59:35', 0, NULL, 0, NULL, '1', ''),
(97, 1, 56, 1, 'rice-water-bright-mild-cleansing-water-320ml_master.jpg', '', 'a:0:{}', 'N;', 1, 5, NULL, NULL, '2018-03-25', '2018-03-25 14:59:35', 0, NULL, 0, NULL, '1', ''),
(98, 1, 56, 1, 'thefaceshop_rice_water_bright_cleansing_milk_bbde4f81-5df1-46b2-51c8-57f8bf135bf0_df4d50de-a079-4f6b-66de-3639fdb0b6bb_master.jpg', '', 'a:0:{}', 'N;', 1, 4, NULL, NULL, '2018-03-25', '2018-03-25 14:59:35', 0, NULL, 0, NULL, '1', ''),
(99, 1, 56, 1, '1_7c30782bcce74fe0864a6a9b8bb79e40_master.jpg', '', 'a:0:{}', 'N;', 1, 3, NULL, NULL, '2018-03-25', '2018-03-25 14:59:35', 0, NULL, 0, NULL, '1', ''),
(100, 1, 56, 1, 'thefaceshop_rice_water_bright_cleansing_cream_200ml_a87e12ae-9c0e-4577-42db-5fbc923e0e76_5bd95e17-ac2d-40c8-642d-05c0c1720801_master.jpg', '', 'a:0:{}', 'N;', 1, 2, NULL, NULL, '2018-03-25', '2018-03-25 14:59:35', 0, NULL, 0, NULL, '1', ''),
(101, 1, 56, 1, 'smart-peeling-honey-black-sugar-scrub_master.jpg', '', 'a:0:{}', 'N;', 1, 1, NULL, NULL, '2018-03-25', '2018-03-25 14:59:35', 0, NULL, 0, NULL, '1', ''),
(102, 1, 56, 1, 'untitled_master.png', '', 'a:0:{}', 'N;', 1, 0, NULL, NULL, '2018-03-25', '2018-03-25 14:59:35', 0, NULL, 0, NULL, '1', ''),
(103, 1, 49, 1, '01_10010900PK7474_TSX3.jpg', '', 'a:0:{}', 'N;', 1, 2, NULL, NULL, '2018-03-25', '2018-04-20 09:03:02', 0, NULL, 0, NULL, '1', ''),
(104, 1, 57, 1, 'real-nature-mask-sheet-bamboo_master.jpg', '', 'a:0:{}', 'N;', 1, 17, NULL, NULL, '2018-03-25', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(105, 1, 57, 1, 'real-nature-mask-sheet-lotus.2017_e789ca1431ba4b938b22f7aff97bd89d_master.jpg', '', 'a:0:{}', 'N;', 1, 16, NULL, NULL, '2018-03-25', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(106, 1, 57, 1, 'real-nature-mask-sheet-calendula.2017_0fc1cf38d12e461ea7995e02db2658d0_master.jpg', '', 'a:0:{}', 'N;', 1, 15, NULL, NULL, '2018-03-25', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(107, 1, 57, 1, 'real-nature-mask-sheet-blueberry.2017_d215c606bcf84ce79c425c88c51db970_master.jpg', '', 'a:0:{}', 'N;', 1, 14, NULL, NULL, '2018-03-25', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(108, 1, 57, 1, 'real-nature-mask-sheet-olive.2017_20d6fe6b6e6c49bc9839767e590763b2_master.jpg', '', 'a:0:{}', 'N;', 1, 13, NULL, NULL, '2018-03-25', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(110, 1, 57, 1, 'real-nature-mask-sheet-avocado.2017_febe1779d2cc49a8bcc3698079be16fd_master.jpg', '', 'a:0:{}', 'N;', 1, 11, NULL, NULL, '2018-03-25', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(111, 1, 57, 1, 'real-nature-mask-sheet-honey.2017_master.jpg', '', 'a:0:{}', 'N;', 1, 10, NULL, NULL, '2018-03-25', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(112, 1, 57, 1, 'real-nature-mask-sheet-red-ginseng.2017_d71bc310b21b4aef832493c4e8d26e94_master.jpg', '', 'a:0:{}', 'N;', 1, 9, NULL, NULL, '2018-03-25', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(113, 1, 57, 1, 'real-nature-green-tea-mask-sheet.2017_8bc6d72165e24827a76e7133373196ea_master.jpg', '', 'a:0:{}', 'N;', 1, 8, NULL, NULL, '2018-03-25', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(114, 1, 57, 1, 'real-nature-mask-sheet-kelp.2017_bffbe3a9fcfd43d88eb19a74aebeb855_master.jpg', '', 'a:0:{}', 'N;', 1, 7, NULL, NULL, '2018-03-25', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(115, 1, 57, 1, 'real-nature-mask-sheet-rice.2017_master.jpg', '', 'a:0:{}', 'N;', 1, 6, NULL, NULL, '2018-03-25', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(116, 1, 57, 1, 'real-nature-mask-sheet-tea-tree.2017_master.jpg', '', 'a:0:{}', 'N;', 1, 5, NULL, NULL, '2018-03-25', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(117, 1, 57, 1, 'real-nature-mask-sheet-cucumber.2017_9d3d7cb228cc410ca9ed29a6f5395c1c_master.jpg', '', 'a:0:{}', 'N;', 1, 4, NULL, NULL, '2018-03-25', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(118, 1, 57, 1, 'real-nature-mask-sheet-lingzhi.2017_93618bace8f4487e9c0f429d49c8a2d5_master.jpg', '', 'a:0:{}', 'N;', 1, 3, NULL, NULL, '2018-03-25', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(119, 1, 57, 1, 'real-nature-mask-sheet-pomegranate.2017_a184d0deb2984a0ebc4de13279cdd991_master.jpg', '', 'a:0:{}', 'N;', 1, 2, NULL, NULL, '2018-03-25', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(120, 1, 57, 1, 'real-nature-mask-sheet-shea-butter.2017_493d85d6f14f4a16ac86bd01a8004ad5_master.jpg', '', 'a:0:{}', 'N;', 1, 1, NULL, NULL, '2018-03-25', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(121, 1, 60, 1, '075001000000001225.jpg', '', 'a:0:{}', 'N;', 1, 28, NULL, NULL, '2018-03-25', '2018-03-28 17:41:59', 0, NULL, 0, NULL, '1', ''),
(122, 1, 60, 1, '075001000000000795.jpg', '', 'a:0:{}', 'N;', 1, 27, NULL, NULL, '2018-03-25', '2018-03-28 17:41:59', 0, NULL, 0, NULL, '1', ''),
(123, 1, 60, 1, '075001000000000819.jpg', '', 'a:0:{}', 'N;', 1, 26, NULL, NULL, '2018-03-25', '2018-03-28 17:41:59', 0, NULL, 0, NULL, '1', ''),
(124, 1, 60, 1, '075001000000000165.jpg', '', 'a:0:{}', 'N;', 1, 25, NULL, NULL, '2018-03-25', '2018-03-28 17:41:59', 0, NULL, 0, NULL, '1', ''),
(125, 1, 60, 1, '075002000000000359.jpg', '', 'a:0:{}', 'N;', 1, 24, NULL, NULL, '2018-03-25', '2018-03-28 17:41:59', 0, NULL, 0, NULL, '1', ''),
(126, 1, 60, 1, '020023000000000014.jpg', '', 'a:0:{}', 'N;', 1, 23, NULL, NULL, '2018-03-25', '2018-03-28 17:41:59', 0, NULL, 0, NULL, '1', ''),
(127, 1, 60, 1, '075001000000000154.jpg', '', 'a:0:{}', 'N;', 1, 22, NULL, NULL, '2018-03-25', '2018-03-28 17:41:59', 0, NULL, 0, NULL, '1', ''),
(128, 1, 60, 1, '075001000000001203.jpg', '', 'a:0:{}', 'N;', 1, 21, NULL, NULL, '2018-03-25', '2018-03-28 17:41:59', 0, NULL, 0, NULL, '1', ''),
(129, 1, 60, 1, 'versace_02_bm.jpg', '', 'a:0:{}', 'N;', 1, 20, NULL, NULL, '2018-03-25', '2018-03-28 17:41:59', 0, NULL, 0, NULL, '1', ''),
(130, 1, 60, 1, '7aa0e9ab262a66dcb2a299de3c6ceca9.jpg', '', 'a:0:{}', 'N;', 1, 19, NULL, NULL, '2018-03-25', '2018-03-28 17:41:59', 0, NULL, 0, NULL, '1', ''),
(131, 1, 60, 1, '075002000000000377.jpg', '', 'a:0:{}', 'N;', 1, 18, NULL, NULL, '2018-03-25', '2018-03-28 17:41:59', 0, NULL, 0, NULL, '1', ''),
(132, 1, 60, 1, '075001000000000147.jpg', '', 'a:0:{}', 'N;', 1, 17, NULL, NULL, '2018-03-25', '2018-03-28 17:41:59', 0, NULL, 0, NULL, '1', ''),
(133, 1, 60, 1, '075001000000000679.jpg', '', 'a:0:{}', 'N;', 1, 16, NULL, NULL, '2018-03-25', '2018-03-28 17:41:59', 0, NULL, 0, NULL, '1', ''),
(134, 1, 60, 1, '075001000000000723.jpg', '', 'a:0:{}', 'N;', 1, 15, NULL, NULL, '2018-03-25', '2018-03-28 17:41:59', 0, NULL, 0, NULL, '1', ''),
(135, 1, 60, 1, '075001000000000829.jpg', '', 'a:0:{}', 'N;', 1, 14, NULL, NULL, '2018-03-25', '2018-03-28 17:41:59', 0, NULL, 0, NULL, '1', ''),
(136, 1, 60, 1, '075002000000000255.jpg', '', 'a:0:{}', 'N;', 1, 13, NULL, NULL, '2018-03-25', '2018-03-28 17:41:59', 0, NULL, 0, NULL, '1', ''),
(137, 1, 60, 1, '075002000000000263.jpg', '', 'a:0:{}', 'N;', 1, 12, NULL, NULL, '2018-03-25', '2018-03-28 17:41:59', 0, NULL, 0, NULL, '1', ''),
(138, 1, 60, 1, '075002000000000340.jpg', '', 'a:0:{}', 'N;', 1, 11, NULL, NULL, '2018-03-25', '2018-03-28 17:41:59', 0, NULL, 0, NULL, '1', ''),
(139, 1, 65, 1, 'v201_master.jpg', '', 'a:0:{}', 'N;', 1, 13, NULL, NULL, '2018-03-27', '2018-04-20 09:03:02', 0, NULL, 0, NULL, '1', ''),
(140, 1, 65, 1, 'tfs_skin_brightening_uv_pact_spf50__pa____faad86b0-03da-4ac6-6eca-ec8348f34422_0c2c6a13-b5c0-4c72-45d8-9626d914daf2_master.jpg', '', 'a:0:{}', 'N;', 1, 12, NULL, NULL, '2018-03-27', '2018-04-20 09:03:02', 0, NULL, 0, NULL, '1', ''),
(141, 1, 65, 1, 'oil-control_203_master.jpg', '', 'a:0:{}', 'N;', 1, 11, NULL, NULL, '2018-03-27', '2018-04-20 09:03:02', 0, NULL, 0, NULL, '1', ''),
(142, 1, 65, 1, '41fwX0byEuL.jpg', '', 'a:0:{}', 'N;', 1, 10, NULL, NULL, '2018-03-27', '2018-04-20 09:03:02', 0, NULL, 0, NULL, '1', ''),
(143, 1, 65, 1, 'the-face-shop-anti-darkening-cushion-n203_master.jpg', '', 'a:0:{}', 'N;', 1, 9, NULL, NULL, '2018-03-27', '2018-04-20 09:03:02', 0, NULL, 0, NULL, '1', ''),
(144, 1, 65, 1, '3_master.png', '', 'a:0:{}', 'N;', 1, 8, NULL, NULL, '2018-03-27', '2018-04-20 09:03:02', 0, NULL, 0, NULL, '1', ''),
(145, 1, 65, 1, '1_73230e3803504898861c22e1eb98a421_master.jpg', '', 'a:0:{}', 'N;', 1, 7, NULL, NULL, '2018-03-27', '2018-04-20 09:03:02', 0, NULL, 0, NULL, '1', ''),
(146, 1, 65, 1, '28832702_1013876048760185_1821703435_n_master.jpg', '', 'a:0:{}', 'N;', 1, 6, NULL, NULL, '2018-03-27', '2018-04-20 09:03:02', 0, NULL, 0, NULL, '1', ''),
(147, 1, 65, 1, '28832702_1013876048760185_1821703435_n_master-1522166123-.jpg', '', 'a:0:{}', 'N;', 1, 5, NULL, NULL, '2018-03-27', '2018-04-20 09:03:02', 0, NULL, 0, NULL, '1', ''),
(148, 1, 50, 1, 'Kem-duong-chong-lao-hoa-da-ban-dem1.jpg', '', 'a:0:{}', 'N;', 1, 46, NULL, NULL, '2018-03-27', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(149, 1, 50, 1, '181006002000000072.jpg', '', 'a:0:{}', 'N;', 1, 45, NULL, NULL, '2018-03-27', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(150, 1, 50, 1, '181006002000000073.jpg', '', 'a:0:{}', 'N;', 1, 44, NULL, NULL, '2018-03-27', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(151, 1, 50, 1, '181006002000000070.jpg', '', 'a:0:{}', 'N;', 1, 43, NULL, NULL, '2018-03-27', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(152, 1, 50, 1, '181006002000000009.jpg', '', 'a:0:{}', 'N;', 1, 42, NULL, NULL, '2018-03-27', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(153, 1, 50, 1, '181006002000000006.jpg', '', 'a:0:{}', 'N;', 1, 41, NULL, NULL, '2018-03-27', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(154, 1, 50, 1, '181006002000000011.jpg', '', 'a:0:{}', 'N;', 1, 40, NULL, NULL, '2018-03-27', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(155, 1, 50, 1, '181006002000000010.jpg', '', 'a:0:{}', 'N;', 1, 39, NULL, NULL, '2018-03-27', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(156, 1, 50, 1, '181006002000000013.jpg', '', 'a:0:{}', 'N;', 1, 38, NULL, NULL, '2018-03-27', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(157, 1, 50, 1, '181006001000000026.jpg', '', 'a:0:{}', 'N;', 1, 37, NULL, NULL, '2018-03-27', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(158, 1, 50, 1, '181006001000000028.jpg', '', 'a:0:{}', 'N;', 1, 36, NULL, NULL, '2018-03-27', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(159, 1, 50, 1, '181006001000000029.jpg', '', 'a:0:{}', 'N;', 1, 35, NULL, NULL, '2018-03-28', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(160, 1, 50, 1, '181006002000000015.jpg', '', 'a:0:{}', 'N;', 1, 34, NULL, NULL, '2018-03-28', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(161, 1, 50, 1, '181006002000000014.jpg', '', 'a:0:{}', 'N;', 1, 33, NULL, NULL, '2018-03-28', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(162, 1, 60, 1, '075001000000000155.jpg', '', 'a:0:{}', 'N;', 1, 10, NULL, NULL, '2018-03-28', '2018-03-28 17:41:59', 0, NULL, 0, NULL, '1', ''),
(163, 1, 60, 1, '030002000000002894.jpg', '', 'a:0:{}', 'N;', 1, 9, NULL, NULL, '2018-03-28', '2018-03-28 17:41:59', 0, NULL, 0, NULL, '1', ''),
(164, 1, 60, 1, '075001000000000163.jpg', '', 'a:0:{}', 'N;', 1, 8, NULL, NULL, '2018-03-28', '2018-03-28 17:41:59', 0, NULL, 0, NULL, '1', ''),
(165, 1, 60, 1, '047003000000001526.jpg', '', 'a:0:{}', 'N;', 1, 7, NULL, NULL, '2018-03-28', '2018-03-28 17:41:59', 0, NULL, 0, NULL, '1', ''),
(166, 1, 60, 1, '075002000000000501.jpg', '', 'a:0:{}', 'N;', 1, 6, NULL, NULL, '2018-03-29', '2018-03-28 17:41:59', 0, NULL, 0, NULL, '1', ''),
(167, 1, 60, 1, '075002000000000061.jpg', '', 'a:0:{}', 'N;', 1, 5, NULL, NULL, '2018-03-29', '2018-03-28 17:41:59', 0, NULL, 0, NULL, '1', ''),
(168, 1, 60, 1, '075001000000000144.jpg', '', 'a:0:{}', 'N;', 1, 4, NULL, NULL, '2018-03-29', '2018-03-28 17:41:59', 0, NULL, 0, NULL, '1', ''),
(169, 1, 60, 1, '075001000000001152.jpg', '', 'a:0:{}', 'N;', 1, 3, NULL, NULL, '2018-03-29', '2018-03-28 17:41:59', 0, NULL, 0, NULL, '1', ''),
(170, 1, 60, 1, '075001000000000636.jpg', '', 'a:0:{}', 'N;', 1, 2, NULL, NULL, '2018-03-29', '2018-03-28 17:41:59', 0, NULL, 0, NULL, '1', ''),
(171, 1, 60, 1, '002001000000000198.jpg', '', 'a:0:{}', 'N;', 1, 1, NULL, NULL, '2018-03-29', '2018-03-28 17:41:59', 0, NULL, 0, NULL, '1', ''),
(172, 1, 60, 1, 'versace_01_bm.jpg', '', 'a:0:{}', 'N;', 1, 0, NULL, NULL, '2018-03-29', '2018-03-28 17:41:59', 0, NULL, 0, NULL, '1', ''),
(173, 1, 50, 1, 'ACM10898_E04_l.png', '', 'a:0:{}', 'N;', 1, 32, NULL, NULL, '2018-03-29', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(174, 1, 50, 1, 'ACM10895_E04_l.png', '', 'a:0:{}', 'N;', 1, 31, NULL, NULL, '2018-03-29', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(175, 1, 50, 1, 'ACM10896_E04_l.png', '', 'a:0:{}', 'N;', 1, 30, NULL, NULL, '2018-03-29', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(176, 1, 50, 1, 'ACM10897_E04_l.png', '', 'a:0:{}', 'N;', 1, 29, NULL, NULL, '2018-03-29', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(177, 1, 50, 1, 'ACM10899_E04_l.png', '', 'a:0:{}', 'N;', 1, 28, NULL, NULL, '2018-03-29', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(178, 1, 50, 1, 'ACM10901_E04_l.png', '', 'a:0:{}', 'N;', 1, 27, NULL, NULL, '2018-03-29', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(179, 1, 50, 1, 'ACM10900_E04_l.png', '', 'a:0:{}', 'N;', 1, 26, NULL, NULL, '2018-03-29', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(180, 1, 53, 1, 'img_line16_1.jpg', '', 'a:0:{}', 'N;', 1, 6, NULL, NULL, '2018-03-29', '2018-04-20 09:02:27', 0, NULL, 0, NULL, '1', ''),
(181, 1, 50, 1, 'ACM10689_E04_l.png', '', 'a:0:{}', 'N;', 1, 25, NULL, NULL, '2018-03-29', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(182, 1, 50, 1, 'ACM10687_E04_l.png', '', 'a:0:{}', 'N;', 1, 24, NULL, NULL, '2018-03-29', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(183, 1, 50, 1, 'ACM10683_E04_l.png', '', 'a:0:{}', 'N;', 1, 23, NULL, NULL, '2018-03-29', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(184, 1, 50, 1, 'ACM10690_E04_l.png', '', 'a:0:{}', 'N;', 1, 22, NULL, NULL, '2018-03-29', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(185, 1, 50, 1, 'ACM27003_E05_etc_5.jpg', '', 'a:0:{}', 'N;', 1, 21, NULL, NULL, '2018-03-29', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(186, 1, 50, 1, 'ACM27004_E05_etc_3.jpg', '', 'a:0:{}', 'N;', 1, 20, NULL, NULL, '2018-03-30', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(187, 1, 50, 1, 'ACM31029_E05_etc_3.jpg', '', 'a:0:{}', 'N;', 1, 19, NULL, NULL, '2018-03-30', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(188, 1, 50, 1, 'ACM07231_E05_etc_3.jpg', '', 'a:0:{}', 'N;', 1, 18, NULL, NULL, '2018-03-30', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(189, 1, 50, 1, 'ACM27006_E05_etc_5.jpg', '', 'a:0:{}', 'N;', 1, 17, NULL, NULL, '2018-03-30', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(190, 1, 50, 1, 'ACM06051_E05_etc_3.jpg', '', 'a:0:{}', 'N;', 1, 16, NULL, NULL, '2018-03-30', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(191, 1, 50, 1, 'ACM03077_E05_etc_3.gif', '', 'a:0:{}', 'N;', 1, 15, NULL, NULL, '2018-03-30', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(192, 1, 65, 1, 'Picture1.jpg', '', 'a:0:{}', 'N;', 1, 4, NULL, NULL, '2018-04-14', '2018-04-20 09:03:02', 0, NULL, 0, NULL, '1', ''),
(193, 1, 65, 1, 'Picture7.jpg', '', 'a:0:{}', 'N;', 1, 3, NULL, NULL, '2018-04-14', '2018-04-20 09:03:02', 0, NULL, 0, NULL, '1', ''),
(195, 1, 53, 1, 'Picture9.jpg', '', 'a:0:{}', 'N;', 1, 0, NULL, NULL, '2018-04-14', '2018-04-20 09:02:27', 0, NULL, 0, NULL, '1', ''),
(197, 1, 49, 1, 'Picture8.jpg', '', 'a:0:{}', 'N;', 1, 0, NULL, NULL, '2018-04-14', '2018-04-20 09:03:02', 0, NULL, 0, NULL, '1', ''),
(196, 1, 65, 1, 'Picture6-1523693297-.jpg', '', 'a:0:{}', 'N;', 1, 2, NULL, NULL, '2018-04-14', '2018-04-20 09:03:02', 0, NULL, 0, NULL, '1', ''),
(198, 1, 69, 1, 'Picture2.jpg', '', 'a:0:{}', 'N;', 1, 0, NULL, NULL, '2018-04-14', '2018-04-20 09:02:03', 0, NULL, 0, NULL, '1', ''),
(199, 1, 69, 1, 'Picture3.jpg', '', 'a:0:{}', 'N;', 1, 1, NULL, NULL, '2018-04-14', '2018-04-20 09:02:03', 0, NULL, 0, NULL, '1', ''),
(200, 1, 69, 1, 'Picture4.jpg', '', 'a:0:{}', 'N;', 1, 2, NULL, NULL, '2018-04-14', '2018-04-20 09:02:03', 0, NULL, 0, NULL, '1', ''),
(201, 1, 69, 1, 'Picture5.jpg', '', 'a:0:{}', 'N;', 1, 3, NULL, NULL, '2018-04-14', '2018-04-20 09:02:03', 0, NULL, 0, NULL, '1', ''),
(202, 1, 68, 1, 'Picture11.jpg', '', 'a:0:{}', 'N;', 1, 2, NULL, NULL, '2018-04-16', '2018-04-20 09:06:45', 0, NULL, 0, NULL, '1', ''),
(203, 1, 68, 1, 'Picture10.jpg', '', 'a:0:{}', 'N;', 1, 1, NULL, NULL, '2018-04-16', '2018-04-20 09:06:45', 0, NULL, 0, NULL, '1', ''),
(204, 1, 68, 1, '108_2.jpg', '', 'a:0:{}', 'N;', 1, 0, NULL, NULL, '2018-04-16', '2018-04-20 09:06:45', 0, NULL, 0, NULL, '', ''),
(205, 1, 68, 1, 'Picture19.jpg', '', 'a:0:{}', 'N;', 1, 3, NULL, NULL, '2018-04-16', '2018-04-20 09:06:45', 0, NULL, 0, NULL, '1', ''),
(206, 1, 53, 1, 'ddbeauty2.jpg', '', 'a:0:{}', 'N;', 1, 5, NULL, NULL, '2018-04-16', '2018-04-20 09:02:27', 0, NULL, 0, NULL, '1', ''),
(207, 1, 53, 1, 'ddbeauty14jpg.png', '', 'a:0:{}', 'N;', 1, 4, NULL, NULL, '2018-04-16', '2018-04-20 09:02:27', 0, NULL, 0, NULL, '1', ''),
(208, 1, 50, 1, 'ddbeauty15jpg.png', '', 'a:0:{}', 'N;', 1, 14, NULL, NULL, '2018-04-16', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(209, 1, 50, 1, 'ddbeauty16jpg.png', '', 'a:0:{}', 'N;', 1, 13, NULL, NULL, '2018-04-16', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(210, 1, 50, 1, 'ddbeauty9jpg.png', '', 'a:0:{}', 'N;', 1, 12, NULL, NULL, '2018-04-16', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(211, 1, 50, 1, 'ddbeauty10jpg.png', '', 'a:0:{}', 'N;', 1, 11, NULL, NULL, '2018-04-16', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(212, 1, 50, 1, 'ddbeauty7jpg.png', '', 'a:0:{}', 'N;', 1, 10, NULL, NULL, '2018-04-16', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(213, 1, 50, 1, 'ddbeauty8jpg.png', '', 'a:0:{}', 'N;', 1, 9, NULL, NULL, '2018-04-16', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(214, 1, 58, 1, 'ddbeauty6jpg.png', '', 'a:0:{}', 'N;', 1, 0, NULL, NULL, '2018-04-16', '2018-04-20 09:04:51', 0, NULL, 0, NULL, '1', ''),
(215, 1, 57, 1, 'ddbeauty4.jpg', '', 'a:0:{}', 'N;', 1, 0, NULL, NULL, '2018-04-16', '2018-04-20 09:05:12', 0, NULL, 0, NULL, '1', ''),
(216, 1, 50, 1, 'ddbeauty5.jpg', '', 'a:0:{}', 'N;', 1, 8, NULL, NULL, '2018-04-16', '2018-04-17 06:33:13', 0, NULL, 0, NULL, '1', ''),
(217, 1, 50, 1, 'ddropbeauty2.png', '', 'a:0:{}', 'N;', 1, 7, NULL, NULL, '2018-04-16', '2018-04-17 06:33:13', 0, NULL, 0, NULL, '1', ''),
(218, 1, 50, 1, 'ddbeauty3.jpg', '', 'a:0:{}', 'N;', 1, 6, NULL, NULL, '2018-04-16', '2018-04-17 06:33:13', 0, NULL, 0, NULL, '1', ''),
(219, 1, 50, 1, 'ln1.png', '', 'a:0:{}', 'N;', 1, 5, NULL, NULL, '2018-04-17', '2018-04-17 06:33:13', 0, NULL, 0, NULL, '1', ''),
(220, 1, 50, 1, 'ln2.png', '', 'a:0:{}', 'N;', 1, 4, NULL, NULL, '2018-04-17', '2018-04-17 06:33:13', 0, NULL, 0, NULL, '1', ''),
(221, 1, 50, 1, 'goldvng.jpg', '', 'a:0:{}', 'N;', 1, 3, NULL, NULL, '2018-04-17', '2018-04-17 06:33:13', 0, NULL, 0, NULL, '1', ''),
(222, 1, 50, 1, 'serumvitamin.jpg', '', 'a:0:{}', 'N;', 1, 2, NULL, NULL, '2018-04-17', '2018-04-17 06:33:13', 0, NULL, 0, NULL, '1', ''),
(223, 1, 50, 1, 'serum24k.jpg', '', 'a:0:{}', 'N;', 1, 1, NULL, NULL, '2018-04-17', '2018-04-17 06:33:13', 0, NULL, 0, NULL, '1', ''),
(224, 1, 50, 1, 'serumance.jpg', '', 'a:0:{}', 'N;', 1, 0, NULL, NULL, '2018-04-17', '2018-04-17 06:33:13', 0, NULL, 0, NULL, '1', ''),
(225, 1, 49, 1, 'uvsun1.jpg', '', 'a:0:{}', 'N;', 1, 1, NULL, NULL, '2018-04-18', '2018-04-20 09:03:02', 0, NULL, 0, NULL, '1', ''),
(226, 1, 65, 1, 'phnnc1.jpg', '', 'a:0:{}', 'N;', 1, 1, NULL, NULL, '2018-04-20', '2018-04-20 08:49:19', 0, NULL, 0, NULL, '1', ''),
(227, 1, 65, 1, 'phnnc2.jpg', '', 'a:0:{}', 'N;', 1, 0, NULL, NULL, '2018-04-20', '2018-04-20 08:49:19', 0, NULL, 0, NULL, '1', ''),
(228, 1, 53, 1, 'ohuihng.jpg', '', 'a:0:{}', 'N;', 1, 3, NULL, NULL, '2018-04-20', '2018-04-20 09:02:27', 0, NULL, 0, NULL, '1', ''),
(229, 1, 53, 1, 'sum2.jpg', '', 'a:0:{}', 'N;', 1, 2, NULL, NULL, '2018-04-20', '2018-04-20 09:02:27', 0, NULL, 0, NULL, '1', ''),
(230, 1, 53, 1, 'history2.jpg', '', 'a:0:{}', 'N;', 1, 1, NULL, NULL, '2018-04-20', '2018-04-20 09:02:27', 0, NULL, 0, NULL, '1', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bakcodt_content_ln`
--

CREATE TABLE `bakcodt_content_ln` (
  `id` int(5) NOT NULL COMMENT 'system',
  `ln` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'system',
  `ln_fields_extra` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'system',
  `ln_icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'system',
  `ln_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'system',
  `sef_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'system',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `priceSale` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `priceBuy` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobilePhone` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `codePro` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bakcodt_content_ln`
--

INSERT INTO `bakcodt_content_ln` (`id`, `ln`, `ln_fields_extra`, `ln_icon`, `ln_image`, `sef_url`, `name`, `intro`, `content`, `title`, `desc`, `keyword`, `priceSale`, `priceBuy`, `status`, `mobilePhone`, `link`, `codePro`) VALUES
(2, 'vn', 'N;', '', '', NULL, 'Slider 01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(3, 'vn', 'N;', '', '', NULL, 'Slider 02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(17, 'vn', 'N;', '', '', NULL, 'Bán buôn quần áo trẻ em thu đông 2017', '<p>quần áo thu đông trẻ em 2016, quần áo mùa đông cho bé gái, quan ao thu dong tre em hang quang chau, đồ thu đông cho bé trai ,quan ao tre em thu dong 2016, quan ao thu dong tre em gia 10k, quan ao thu dong tre em 2015, quần áo trẻ em thu đông giá rẻ</p>\r\n', '<p>Mô tả chi tiết</p>\r\n', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'vn', 'N;', '', '', NULL, 'Slider 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(26, 'vn', 'N;', '', '', NULL, 'Dịch vụ 01', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'vn', 'N;', '', '', NULL, 'Đối tác 01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(28, 'vn', 'N;', '', '', NULL, 'Đối tác 02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(29, 'vn', 'N;', '', '', NULL, 'Đối tác 03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(30, 'vn', 'N;', '', '', NULL, 'Mr.Bảo - Tứ vấn Website', 'tranubao1991', 'tranuybao1991', NULL, NULL, NULL, NULL, NULL, NULL, '0966657161', NULL, NULL),
(34, 'vn', 'N;', '', '', NULL, 'Chính sách thanh toán', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'vn', 'N;', '', '', NULL, 'Chính sách vận chuyển', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'vn', 'N;', '', '', NULL, 'Chính sách đổi trả', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'vn', 'N;', '', '', NULL, 'Sữa Rửa Mặt Gạo Rice Water Bright Cleansing Foam 150ml ', '<p>Sữa rửa mặt gạo giúp loại bỏ hoàn toàn bụi bẩn, tế bào chết, bã nhờn trên bề mặt da và sâu trong lỗ chân lông, cho làn da láng sạch, thông thoáng. Thành phần dưỡng ẩm chiết xuất từ mầm gạo kết hợp với Collagen và Vitamin E không chỉ cung cấp và duy trì lượng nước cần thiết để da luôn ẩm mượt, mịn màng mà còn cải thiện tông màu da, dưỡng da trắng sáng từ sâu bên trong.&nbsp; Sản phẩm không gây kích ứng, thích hợp với mọi loại da.</p>\r\n\r\n<p>Hướng dẫn sử dụng và bảo quản: Làm ướt mặt lấy một lượng vừa đủ vào lòng bàn tay, tạo bọt và massage nhẹ nhàng lên daRửa sạch với nước. Dùng hàng ngày vào buổi sáng và buổi tối. Bảo quản nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp và nhiệt độ cao. Để xa tầm tay trẻ em.</p>\r\n', '<p>Sữa rửa mặt gạo giúp loại bỏ hoàn toàn bụi bẩn, tế bào chết, bã nhờn trên bề mặt da và sâu trong lỗ chân lông, cho làn da láng sạch, thông thoáng. Thành phần dưỡng ẩm chiết xuất từ mầm gạo kết hợp với Collagen và Vitamin E không chỉ cung cấp và duy trì lượng nước cần thiết để da luôn ẩm mượt, mịn màng mà còn cải thiện tông màu da, dưỡng da trắng sáng từ sâu bên trong.&nbsp; Sản phẩm không gây kích ứng, thích hợp với mọi loại da.</p>\r\n\r\n<p>Hướng dẫn sử dụng và bảo quản: Làm ướt mặt lấy một lượng vừa đủ vào lòng bàn tay, tạo bọt và massage nhẹ nhàng lên daRửa sạch với nước. Dùng hàng ngày vào buổi sáng và buổi tối. Bảo quản nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp và nhiệt độ cao. Để xa tầm tay trẻ e,m</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"/data/upload/image.png\" style=\"height:593px; width:593px\" /></p>\r\n', '', '', '', '0', '150000', NULL, NULL, NULL, '000125001'),
(17, 'rs', 'N;', '', '', NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'vn', 'N;', '', '', NULL, 'Kem Chống Nắng  Dành Cho Mặt và Body SPF40 PA++++  100ml ', '', '<p>Đây là sản phẩm không thể thiếu khi phải tiếp xúc với ánh nắng mặt trời lâu, đặc biệt khi đi biển, chơi thể thao và hoạt động ngoài trời. Kết cấu sản phẩm nhẹ, thẩm thấu nhanh, phù hợp với tất cả mọi đối tượng và mọi độ tuổi.<br />\r\n<strong>Thành phần</strong> : Bổ sung thành phần dưỡng da chống oxy hóa từ mầm hoa hướng dương giúp tăng cường rào chắn bảo vệ da khỏi tác hại của ánh nắng mặt trời và môi trường.</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng</strong> : Lấy một lượng sản phẩm vừa đủ và dàn trải khắp bề mặt da toàn thân.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '0', '260000', NULL, NULL, NULL, '000128011'),
(62, 'vn', 'N;', '', '', NULL, 'Dewdropbeauty 24k Gold Collagen Whitening Care Intense Repair Serum ', '', '', '', '', 'Tinh chất vàng 24k collagen ', '', '0', NULL, NULL, NULL, '8809280360710'),
(63, 'vn', 'N;', '', '', NULL, 'Sữa Rửa Mặt Làm Trắng Da White Seed ', '<p>Sữa rửa mặt chứa những hạt siêu nhỏ mịn giúp làm sạch sâu, nhẹ nhàng lấy đi bụi bẩn, bã nhờn, tăng cường khả năng tẩy tế bào chết trên da, giúp lỗ chân lông thoáng sạch, cân bằng độ ẩm và làm sáng da một cách tự nhiên.&nbsp;<br />\r\n<br />\r\nVới chất kem có ánh trắng ngọc trai và những hạt mịn nhỏ li ti bạn dễ dàng tạo một lượng bọt kem mềm mịn nhẹ nhàng trên bề mặt da không gây đau rát. Mùi hương thiên nhiên dễ chịu. Bạn sẽ cảm nhận một sữa rửa mặt không chỉ đơn thuần làm sạch mà còn có khả năng loại bỏ một phần tế bào da chết mà không làm đau rát khó chịu<br />\r\n<br />\r\n<strong>Thành phần</strong><br />\r\n<br />\r\nThành phần tự nhiên gồm vitamin C, nước khoáng đến từ Nhật Bản Yuzawa cung cấp dưỡng chất giúp da tươi sáng mà không gây khô da hay làm hại đến da của bạn. Ngoài Vitamin C và nước khoáng. Sữa rửa mặt&nbsp; THEFACESHOP WHITE SEED EXFOLIATING CLEANSING FOAM còn có các thành phần khác như:<br />\r\n– Axit trái cây: mang đến cho bạn một làn da trắng hồng, điều hoà lưu lượng vòng tuần hoàn của máu.<br />\r\n– Arbutin có trong cây dương mai giúp làm trắng da.<br />\r\n– Thành phần Flavonoid giúp chống lại oxy hóa làn da.<br />\r\n– BHA (Beta Hydroxy Acid), AHA (Alpha Hydroxy Acid) có trong vỏ cây liễu là phần dưỡng chất quan trọng cho da</p>\r\n', '<p>Sữa rửa mặt chứa những hạt siêu nhỏ mịn giúp làm sạch sâu, nhẹ nhàng lấy đi bụi bẩn, bã nhờn, tăng cường khả năng tẩy tế bào chết trên da, giúp lỗ chân lông thoáng sạch, cân bằng độ ẩm và làm sáng da một cách tự nhiên.&nbsp;<br />\r\n<br />\r\nVới chất kem có ánh trắng ngọc trai và những hạt mịn nhỏ li ti bạn dễ dàng tạo một lượng bọt kem mềm mịn nhẹ nhàng trên bề mặt da không gây đau rát. Mùi hương thiên nhiên dễ chịu. Bạn sẽ cảm nhận một sữa rửa mặt không chỉ đơn thuần làm sạch mà còn có khả năng loại bỏ một phần tế bào da chết mà không làm đau rát khó chịu<br />\r\n<br />\r\n<strong>Thành phần</strong><br />\r\n<br />\r\nThành phần tự nhiên gồm vitamin C, nước khoáng đến từ Nhật Bản Yuzawa cung cấp dưỡng chất giúp da tươi sáng mà không gây khô da hay làm hại đến da của bạn. Ngoài Vitamin C và nước khoáng. Sữa rửa mặt&nbsp; THEFACESHOP WHITE SEED EXFOLIATING CLEANSING FOAM còn có các thành phần khác như:<br />\r\n– Axit trái cây: mang đến cho bạn một làn da trắng hồng, điều hoà lưu lượng vòng tuần hoàn của máu.<br />\r\n– Arbutin có trong cây dương mai giúp làm trắng da.<br />\r\n– Thành phần Flavonoid giúp chống lại oxy hóa làn da.<br />\r\n– BHA (Beta Hydroxy Acid), AHA (Alpha Hydroxy Acid) có trong vỏ cây liễu là phần dưỡng chất quan trọng cho da</p>\r\n', '', '', '', '0', '190000', NULL, NULL, NULL, '0012500'),
(65, 'vn', 'N;', '', '', NULL, 'Sữa Rửa Mặt Trị Mụn 150ml ', '', '<p>Sữa rửa mặt đặc trị CLEAN FACE ACNE SOLUTION FOAM CLEANSING dành riêng cho da mụn với phức hợp kháng khuẩn tác động sâu vào trong lỗ chân lông loại trừ các vi khuẩn gây mụn, nhẹ nhàng làm sạch vùng da bị tổn thương, giúp kháng viêm, diệt khuẩn ngăn ngừa mụn tái phát. Sữa rữa mặt giúp bạn chăm sóc da đúng trong quá trình trị mụn là rất quan trọng, nó vừa giúp quá trình điều trị đạt kết quả cao vừa hạn chế những hậu quả do mụn để lại vì làm sạch da là một trong những bước cơ bản để chăm sóc da mụn hiệu quả.<br />\r\n<br />\r\n<strong>Thành phần</strong><br />\r\n<br />\r\nThành phần chiết xuất từ trà xanh giúp ngăn ngừa vi khuẩn xâm nhập và tăng sức đề kháng, chống viêm cho da.</p>\r\n\r\n<p><img src=\"/data/upload/image(1).png\" style=\"height:603px; width:568px\" /></p>\r\n', '', '', '', '0', '170000', NULL, NULL, NULL, '000125002'),
(66, 'vn', 'N;', '', '', NULL, 'Sữa Rửa Mặt Gạo  Rice Warer Bright Rice Bran Cleansing Foam 150ml ', '', '<p>Sữa rửa mặt chứa hạt mát xa siêu mịn từ hạt cám gạo mang đến khả năng làm sạch và sáng mịn da. Đồng thời công thức tạo bọt mịn giúp làm sạch sâu trong lỗ chân, làm sạch bụi bẩn ô nhiễm trên bề mặt da của bạn. Độ ẩm được lưu giữ tối ưu sau khi rửa giúp làn da trắng sáng và khỏe mạnh.<br />\r\n<br />\r\n<strong>Thành phần</strong><br />\r\n<br />\r\nThành phần chiết xuất từ nước gạo giàu vitamin và độ ẩm giúp làm sáng mịn da. Dầu thực vật Moringa mang đến hiệu quả thanh lọc và khử độc cho da. Đồng thời những hạt trong sản phẩm giúp loại bỏ hoàn toàn bã nhờn trên da . Sản phẩm 2in1 vừa sữa rửa mặt vừa tẩy da chết trên da .</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"/data/upload/image(2).png\" style=\"height:620px; width:605px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '0', '160000', NULL, NULL, NULL, '000125003'),
(67, 'vn', 'N;', '', '', NULL, 'Sữa Rửa Mặt Chia Seed 150ml ', '', '<p>Sữa rửa mặt THEFACESHOP CHIA SEED FRESH FOAMING CLEANSER hoàn toàn lành tính, mang đến tác dụng làm sạch sâu cho da mặt từ tận lỗ chân lông, không hề gây nhờn rít sau đó, đồng thời chứa dưỡng chất làm mềm, mịn da nhờ các vitamin và khoáng chất.&nbsp;<br />\r\n<br />\r\n<strong>Thành phần</strong><br />\r\n<br />\r\nThành phần chiết xuất từ hạt bông cotton và hạt Chia giàu vitamin, khoáng chất và các nguyên tố vi lượng giúp ngăn chăn quá trình oxi hóa da, cung cấp độ ẩm tối ưu giúp da mềm&nbsp;</p>\r\n\r\n<p><img src=\"/data/upload/image(3).png\" style=\"height:573px; width:587px\" /></p>\r\n', '', '', '', '0', '165000', NULL, NULL, NULL, '000125005 '),
(68, 'vn', 'N;', '', '', NULL, 'Sữa Rửa Mặt Jeju Volcanic Lava 150ml ', '', '<p>Cuộc sống hiện đại khiến làn da chúng ta phải hứng chịu rất nhiều ô nhiễm tác hại tác động lên. Khi những ô nhiễm siêu nhỏ mắt thường không thấy được này tồn tại trên da sẽ là nguyên nhân khiến làn da của chúng ta trở nên tồi tệ: tối xỉn màu, nhanh oxi hóa, gốc tự do tạo ra nhiều hơn... Chính điều này THE<strong>FACE</strong>SHOP đã cho ra đời sữa rửa mặt JEJU VOLCANIC LAVA CLEANSING FOAM. Đây là sữa rửa mặt có khả năng thanh lọc da, loại bỏ bụi bẩn, độc tố để làm sạch và ngăn ngừa mụn. Ngoài ra sữa rửa mặt này còn có khả năng bảo vệ da tránh tác hại của ô nhiễm môi trường.<br />\r\n<br />\r\n<strong>Thành phần</strong><br />\r\n<br />\r\nSữa rửa mặt được chiết xuất từ tro núi lửa đảo Jeju giàu khoáng chất giúp thanh lọc da, loại bỏ bụi bẩn, độc tố để làm sạch và ngăn ngừa mụn. Đồng thời phức hợp City Defender Complex được chiết xuất từ các loại thực vật trên đảo Jeju giúp bảo vệ da khỏi môi trường ô nhiễm.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"/data/upload/image(5).png\" style=\"height:624px; width:593px\" /></p>\r\n\r\n<p><em>Hướng dẫn sử dụng SỮA RỬA MẶT để có hiệu quả cao nhất:</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>&nbsp; &nbsp;Bước 1: Rửa tay sạch.&nbsp;Bởi nếu tay bạn bị bẩn, bạn có thể chà thêm vi khuẩn và bụi bẩn lên mặt trong quá trình rửa. Sử dụng xà phòng kháng khuẩn nhẹ nhàng và rửa tay bằng nước ấm bạn nhé.</em></p>\r\n\r\n<p><em>&nbsp;&nbsp;&nbsp;Bước 2: Loại bỏ lớp trang điểm (n</em><em>ế</em><em>u có).&nbsp;</em><em>Nếu có trang điểm, trước khi rửa mặt, bạn nên dùng nước tẩy trang để làm sạch mặt trước cái đã. Bắt đầu tẩy trang từ phần mắt trước nhé. Thông thường phần da ở mắt nhạy cảm hơn nên sử dụng nước tẩy trang riêng biệt</em></p>\r\n\r\n<p><em>&nbsp;&nbsp;&nbsp;Bước 3: Làm ướt gương mặt. Làm ướt da mặt với nước ấm để các lỗ chân lông mở rộng, nhờ thế bạn có thể làm sạch sâu hơn và tránh được mụn.</em></p>\r\n\r\n<p><em>&nbsp; &nbsp;Bước 4: Thoa sữa rửa mặt&nbsp;cho sữa rửa mặt vào lòng bàn tay, đánh đều tạo bọt và dùng ngón tay thoa lên khuôn mặt. Massage mặt với chuyển động tròn khoảng một phút, từ trong ra ngoài, từ dưới lên trên.</em></p>\r\n\r\n<p><em>Lưu ý, không bao giờ loại bỏ ngay sữa rửa mặt ngay lập tức khi thoa nó nhé. Bạn nên để nó trên gương mặt trong khoảng thời gian tổng cộng từ một phút để nó thấm sâu vào da và phát huy hết tác dụng bạn nhé</em></p>\r\n\r\n<p><em>&nbsp; &nbsp;Bước 5: Rửa mặt thật sạch&nbsp;bằng nước cho đến khi bạn không thấy còn chất nhờn của sữa rửa mặt trên khuôn mặt.</em></p>\r\n\r\n<p><em>&nbsp;&nbsp;Bước 6: Rửa lại với nước lạnh.&nbsp;Rửa mặt lại một lần nữa với nước lạnh để đóng mở các lỗ chân lông và cải thiện lưu thông máu.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '0', '165000', NULL, NULL, NULL, '00015005'),
(69, 'vn', 'N;', '', '', NULL, 'Sữa Rửa Mặt Chia Seed Dạng Bọt ', '', '<p>Sữa rửa mặt dạng bọt Chia Seed Fresh Bubble Foam chiết xuất từ hạt Chia dạng dung dịch tự tạo bọt. Khi xịt ra tự động hình thành những bọt nhỏ, kích thước bọt mịn đạt tiêu chuẩn&nbsp;giúp làm sạch sâu lỗ chân lông và cân bằng độ ẩm cho làn da bạn.</p>\r\n\r\n<p><strong>Thành phần</strong></p>\r\n\r\n<p>Chiết xuất từ hạt bông cotton và&nbsp;<a href=\"https://thefaceshop360.com/tags-tu-khoa/chia-seed/\" target=\"_blank\">hạt Chia</a>&nbsp;giàu vitamin, khoáng chất và các nguyên tố vi lượng. Giúp ngăn chặn quá trình oxi hóa da, cung cấp độ ẩm tối ưu giúp da mềm mịn.&nbsp; Sản phẩm áp dụng công nghệ&nbsp;<strong>GMO-free</strong>&nbsp;và&nbsp;<strong>7 không.</strong>&nbsp;Phù hợp với cả làn da nhạy cảm nhất. Không Paraben, không chất tạo màu, không chứa thành phần động vật, không dầu, không paraffin, không chứa bột Talc, không Polyacrylamide. Thích hợp với mọi loại da, đặc biệt phù hợp với da dầu thiếu nước và kể cả da nhạy cảm.</p>\r\n\r\n<p><strong><u>L</u></strong><strong><u>àm sạch da là&nbsp;</u></strong><strong><u>chìa khóa vàng cho</u></strong><strong><u>&nbsp;</u></strong><strong><u>làn da khỏe mạnh @@@</u></strong></p>\r\n\r\n<p><em>Hướng dẫn sử dụng SỮA RỬA MẶT để có hiệu quả cao nhất:</em></p>\r\n\r\n<p><em>&nbsp;&nbsp;Bước 1: Rửa tay sạch.&nbsp;Bởi nếu tay bạn bị bẩn, bạn có thể chà thêm vi khuẩn và bụi bẩn lên mặt trong quá trình rửa. Sử dụng xà phòng kháng khuẩn nhẹ nhàng và rửa tay bằng nước ấm bạn nhé.</em></p>\r\n\r\n<p><em>&nbsp;&nbsp;&nbsp;Bước 2: Loại bỏ lớp trang điểm (n</em><em>ế</em><em>u có).&nbsp;</em><em>Nếu có trang điểm, trước khi rửa mặt, bạn nên dùng nước tẩy trang để làm sạch mặt trước cái đã. Bắt đầu tẩy trang từ phần mắt trước nhé. Thông thường phần da ở mắt nhạy cảm hơn nên sử dụng nước tẩy trang riêng biệt</em></p>\r\n\r\n<p><em>&nbsp;&nbsp;&nbsp;Bước 3: Làm ướt gương mặt. Làm ướt da mặt với nước ấm để các lỗ chân lông mở rộng, nhờ thế bạn có thể làm sạch sâu hơn và tránh được mụn.</em></p>\r\n\r\n<p><em>&nbsp; &nbsp;Bước 4: Thoa sữa rửa mặt&nbsp;cho sữa rửa mặt vào lòng bàn tay, đánh đều tạo bọt và dùng ngón tay thoa lên khuôn mặt. Massage mặt với chuyển động tròn khoảng một phút, từ trong ra ngoài, từ dưới lên trên.</em></p>\r\n\r\n<p><em>Lưu ý, không bao giờ loại bỏ ngay sữa rửa mặt ngay lập tức khi thoa nó nhé. Bạn nên để nó trên gương mặt trong khoảng thời gian tổng cộng từ một phút để nó thấm sâu vào da và phát huy hết tác dụng bạn nhé</em></p>\r\n\r\n<p><em>&nbsp; &nbsp;Bước 5: Rửa mặt thật sạch&nbsp;bằng nước cho đến khi bạn không thấy còn chất nhờn của sữa rửa mặt trên khuôn mặt.</em></p>\r\n\r\n<p><em>Bước 6: Rửa lại với nước lạnh.&nbsp;Rửa mặt lại một lần nữa với nước lạnh để đóng mở các lỗ chân lông và cải thiện lưu thông máu</em><img src=\"/data/upload/image(6).png\" style=\"height:598px; width:605px\" /></p>\r\n', '', '', '', '0', '180000', NULL, NULL, NULL, '00015006'),
(70, 'vn', 'N;', '', '', NULL, 'Sữa Rửa Mặt Chia Seed Liquid 150ml ', '', '<p>Sữa rửa mặt CHIA SEED FRESH FOAMING LIQUID CLEANSER dạng gel nhẹ nhàng lấy đi bụi bẩn, bã nhờn, giúp lỗ chân lông thoáng sạch, cân bằng độ ẩm và làm sáng da một cách tự nhiên.&nbsp;<br />\r\nVới dạng gel dịu nhẹ giúp làm sạch trên bề mặt da không gây đau rát.&nbsp;<br />\r\nMùi hương tươi mát dễ chịu, mang đến cảm giác thoải mái khi sử dụng.<br />\r\n<strong>Thành phần</strong>:<br />\r\nHạt chia là một loại hạt rất giàu dinh dưỡng, một thực phẩm rất giàu axit béo Omega – 3. Đồng thời, hạt chia có thể hấp thụ nước gấp 10 lần so với trọng lượng của hạt giúp tập trung lưu giữ lượng nước cho làn da.&nbsp;<br />\r\nNgoài ra, hạt chia còn có hàm lượng protein, chất xơ, chất béo và chất chống oxy hóa cao giúp hỗ trợ ngăn ngừa lão hóa sớm cho làn da.</p>\r\n\r\n<p><strong><u>L</u></strong><strong><u>àm sạch da là&nbsp;</u></strong><strong><u>chìa khóa vàng cho&nbsp;</u></strong><strong><u>làn da khỏe mạnh</u></strong></p>\r\n\r\n<p><em>Hướng dẫn sử dụng SỮA RỬA MẶT để có hiệu quả cao nhất:</em></p>\r\n\r\n<p><em>&nbsp;Bước 1: Rửa tay sạch.&nbsp;Bởi nếu tay bạn bị bẩn, bạn có thể chà thêm vi khuẩn và bụi bẩn lên mặt trong quá trình rửa. Sử dụng xà phòng kháng khuẩn nhẹ nhàng và rửa tay bằng nước ấm bạn nhé.</em></p>\r\n\r\n<p><em>&nbsp;&nbsp;&nbsp;Bước 2: Loại bỏ lớp trang điểm (n</em><em>ế</em><em>u có).&nbsp;</em><em>Nếu có trang điểm, trước khi rửa mặt, bạn nên dùng nước tẩy trang để làm sạch mặt trước cái đã. Bắt đầu tẩy trang từ phần mắt trước nhé. Thông thường phần da ở mắt nhạy cảm hơn nên sử dụng nước tẩy trang riêng biệt</em></p>\r\n\r\n<p><em>&nbsp;&nbsp;&nbsp;Bước 3: Làm ướt gương mặt. Làm ướt da mặt với nước ấm để các lỗ chân lông mở rộng, nhờ thế bạn có thể làm sạch sâu hơn và tránh được mụn.</em></p>\r\n\r\n<p><em>&nbsp; &nbsp;Bước 4: Thoa sữa rửa mặt&nbsp;cho sữa rửa mặt vào lòng bàn tay, đánh đều tạo bọt và dùng ngón tay thoa lên khuôn mặt. Massage mặt với chuyển động tròn khoảng một phút, từ trong ra ngoài, từ dưới lên trên.</em></p>\r\n\r\n<p><em>Lưu ý, không bao giờ loại bỏ ngay sữa rửa mặt ngay lập tức khi thoa nó nhé. Bạn nên để nó trên gương mặt trong khoảng thời gian tổng cộng từ một phút để nó thấm sâu vào da và phát huy hết tác dụng bạn nhé</em></p>\r\n\r\n<p><em>&nbsp; &nbsp;Bước 5: Rửa mặt thật sạch&nbsp;bằng nước cho đến khi bạn không thấy còn chất nhờn của sữa rửa mặt trên khuôn mặt.</em></p>\r\n\r\n<p><em>Bước 6: Rửa lại với nước lạnh.</em><em>&nbsp;Rửa mặt lại một lần nữa với nước lạnh để đóng mở các lỗ chân lông và cải thiện lưu thông máu.</em></p>\r\n\r\n<p><img src=\"/data/upload/image(7).png\" style=\"height:584px; width:605px\" /></p>\r\n', '', '', '', '0', '175000', NULL, NULL, NULL, '00015007'),
(71, 'vn', 'N;', '', '', NULL, 'Sữa Rửa Mặt Mango  Seed 150ml ', '', '<p>Xoài là một loại quả có nguồn gốc từ Ấn Độ. Được cả thế giới yêu thích vì mùi thơm ngọt, vị thanh rất ngon, giàu giá trị dinh dưỡng. Người ta sử dụng xoài trong các món uống như sinh tố, nước ép, cocktail… Phần lớn phái đẹp đều thích món xoài xanh chấm với muối ớt, mắm đường… Tuy nhiên, không dừng lại ở đó, xoài còn có tác dụng làm đẹp da mà không phải ai cũng biết nhé!!</p>\r\n\r\n<p>Xoài là loại trái cây tốt cho làn da, chúng có hàm lượng vitamin A và C cao giúp chống ôxy hóa mạnh mẽ. Ngăn ngừa quá trình lão hóa và thúc đẩy sản xuất collagen khôi phục độ đàn hồi của da. Nó còn được gọi là “chất chống stress” do chứa dồi dào vitamin B1 nhờ vậy giúp cơ thể kiểm soát được chứng trầm cảm. Người ta còn sử dụng xoài trong các chế độ chăm sóc da để cung cấp độ ẩm, ngăn ngừa hình thành nếp nhăn, trị được mụn. Nhờ kích thích quá trình tuần hoàn máu ở màng nhầy và da, từ đó làm giảm tắc nghẽn lỗ chân lông.</p>\r\n\r\n<p><strong><u>L</u></strong><strong><u>àm sạch da là&nbsp;</u></strong><strong><u>chìa khóa vàng cho&nbsp;</u></strong><strong><u>làn da khỏe mạnh</u></strong></p>\r\n\r\n<p><em>Hướng dẫn sử dụng SỮA RỬA MẶT để có hiệu quả cao nhất:</em></p>\r\n\r\n<p><em>&nbsp;Bước 1: Rửa tay sạch.&nbsp;Bởi nếu tay bạn bị bẩn, bạn có thể chà thêm vi khuẩn và bụi bẩn lên mặt trong quá trình rửa. Sử dụng xà phòng kháng khuẩn nhẹ nhàng và rửa tay bằng nước ấm bạn nhé.</em></p>\r\n\r\n<p><em>&nbsp;&nbsp;&nbsp;Bước 2: Loại bỏ lớp trang điểm (n</em><em>ế</em><em>u có).&nbsp;</em><em>Nếu có trang điểm, trước khi rửa mặt, bạn nên dùng nước tẩy trang để làm sạch mặt trước cái đã. Bắt đầu tẩy trang từ phần mắt trước nhé. Thông thường phần da ở mắt nhạy cảm hơn nên sử dụng nước tẩy trang riêng biệt</em></p>\r\n\r\n<p><em>&nbsp;&nbsp;&nbsp;Bước 3: Làm ướt gương mặt. Làm ướt da mặt với nước ấm để các lỗ chân lông mở rộng, nhờ thế bạn có thể làm sạch sâu hơn và tránh được mụn.</em></p>\r\n\r\n<p><em>&nbsp; &nbsp;Bước 4: Thoa sữa rửa mặt&nbsp;cho sữa rửa mặt vào lòng bàn tay, đánh đều tạo bọt và dùng ngón tay thoa lên khuôn mặt. Massage mặt với chuyển động tròn khoảng một phút, từ trong ra ngoài, từ dưới lên trên.</em></p>\r\n\r\n<p><em>Lưu ý, không bao giờ loại bỏ ngay sữa rửa mặt ngay lập tức khi thoa nó nhé. Bạn nên để nó trên gương mặt trong khoảng thời gian tổng cộng từ một phút để nó thấm sâu vào da và phát huy hết tác dụng bạn nhé</em></p>\r\n\r\n<p><em>&nbsp; &nbsp;Bước 5: Rửa mặt thật sạch&nbsp;bằng nước cho đến khi bạn không thấy còn chất nhờn của sữa rửa mặt trên khuôn mặt.</em></p>\r\n\r\n<p><em>Bước 6: Rửa lại với nước lạnh.</em><em>&nbsp;Rửa mặt lại một lần nữa với nước lạnh để đóng mở các lỗ chân lông và cải thiện lưu thông máu</em></p>\r\n\r\n<p><img src=\"/data/upload/image(8).png\" style=\"height:623px; width:594px\" /></p>\r\n', '', '', '', '0', '160000', NULL, NULL, NULL, '000125008'),
(72, 'vn', 'N;', '', '', NULL, 'BVL Omnia Amethyste  불가리 옴니아 아메시스트 TESTER 65ml ', '', '<p>Omnia Amethyste&nbsp;mở đầu bằng hương bưởi nồng nàn có thoang thoảng hương đất,&nbsp;hòa quyện với một lượng vừa đủ hương xanh tự nhiên. Tiếp đến,&nbsp;Amethyste&nbsp;được pha trộn nhẹ nhàng giữa hương hoa cỏ&nbsp;và vani giúp hương thơm dịu nhẹ và&nbsp;thoang thoảng hương phấn. Hương hoa hồng mang lại sự tinh tế và hương hoa diên vĩ có thể được cảm nhận thông qua lớp hương đầu của nước hoa nhà sáng tạo nước hoa Morillas nói rằng phải sử dụng phương pháp ép hoa&nbsp;để giữ được nguyên mùi hương của hoa Diên Vĩ cho&nbsp;Omnia&nbsp;Amethyste.&nbsp;Omnia Amethyste&nbsp;là sản phẩm&nbsp;nước hoa dành cho mùa hè, khi nước hoa bay hơi&nbsp;thì hương gỗ sẽ dịu nhẹ đi và sau một vài giờ thì hầu hết các hương hoa sẽ mất đi. Hương thơm bây giờ trở nên nhẹ dịu, không còn nồng nàn như ban đầu.&nbsp;</p>\r\n\r\n<p><img src=\"/data/upload/image(9).png\" style=\"height:455px; width:606px\" /></p>\r\n', '', '', '', '0', '0', NULL, NULL, NULL, '00012600'),
(73, 'vn', 'N;', '', '', NULL, 'Paco Rabanne Set  /// 파코라반 레이디 밀리언 ★ 기획세트 EDP 80ml', '', '<ul>\r\n	<li>Nhãn hiệu:Paco Rabanne</li>\r\n	<li>Giới tính:Nữ</li>\r\n	<li>Xuất xứ:Tây Ban Nha</li>\r\n	<li>Nồng độ:Eau de Parfum</li>\r\n	<li>Phát hành:2010</li>\r\n	<li>Nhà pha chế:Anne Flipo, Beatrice Piquet, Bruno Jovanovic, Dominique Ropion.</li>\r\n	<li>Nhóm hương:Hương Hoa cỏ Trái cây - Floral Fruity</li>\r\n	<li>Phong cách:Rực rỡ, tinh tế, cuốn hút.</li>\r\n	<li>Hương đặc trưng</li>\r\n	<li>Chanh, mâm xôi, neroli, hương hoa cam, hoa nhài, sambac, cây sơn, hoắc hương, mật ong.</li>\r\n</ul>\r\n\r\n<p style=\"margin-left:18.0pt\">Lady Million&nbsp;là dòng sản phẩm nổi tiếng nhất của&nbsp;Paco Rabbane&nbsp;trong vài <a name=\"_GoBack\">năm gần đây. Sau sự thành công của phiên bản dành cho nam giới, phiên bản </a>của nữ cũng được lấy cảm hứng từ vàng và kim cương những thứ luôn được chúng ta mong đợi và ao ước được chiếm hữu. Chính xác là&nbsp;Lady Million&nbsp;đã có mặt trên thị trường vào năm 2010. Hình dáng của&nbsp;Lady Million&nbsp;được dựa trên nền tảng phiên bản của nam giới với màu vàng óng ánh hấp dẫn nhưng thay vì là hình dáng một thỏi vàng thì đây lại là hình dáng một viên kim cương, trông thật xinh xắn, quyến rũ.</p>\r\n\r\n<p style=\"margin-left:18.0pt\">Lady Million&nbsp;mang đến một mùi hương tươi mát, mùi hoa cỏ kết hợp với các hương gỗ, giống như bản giao hưởng đầy màu sắc của các loài hoa quyến rũ nhưng mang chút nét tinh tế và mộc mạc.</p>\r\n\r\n<ul>\r\n	<li>Hương đầu: Mùi hương đậm đà và chất lôi cuốn với nốt hương hương cam chanh đắng pha một chút ngọt quả mâm xôi, tiếp đến là mùi tinh dầu hoa cam chanh tràn ngập, vừa mịn màng và tươi sáng, nhưng vẫn phải nhường chỗ cho mùi hoa cam đầy say mê, nổi bật và hấp dẫn mọi sự chú ý. Tất cả hòa quyện với hoa lài Ả rập và hoa dành dành mạnh mẽ tạo nên cảm giác đầy kích thích nhưng không kém phần tinh tế.</li>\r\n	<li>Hương giữa: Mùi hoắc hương, làm dịu đi mùi mật ong tạo ra một sự ngọt ngào dịu nhẹ không thể chối từ.</li>\r\n	<li>Hương cuối: Mùi hổ phách lan tỏa trong các tầng lớp, xuất hiện Thiết kế chai đầy hấp dẫn và sang trọng được sáng tạo bởi chuyên gia&nbsp;<strong>Noe Duchaufour-Lawrance</strong>.&nbsp;<strong>Lady Million</strong>&nbsp;được thiết kế như một viên kim cương màu vàng thay vì thiết kế thỏi vàng trước đó.&nbsp;Chỉ có kim cương mới có thể cạnh tranh với vàng, và vì thế, Lady Million&nbsp;sẽ là sự so sánh hoàn hảo với mùi hương nam 1 Million theo từng c động của làn da nhằm tạo ra những khía cạnh đầy cuốn hút.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"/data/upload/image(10).png\" style=\"height:455px; width:606px\" /></p>\r\n', '', '', '', '0', '0', NULL, NULL, NULL, '00012601'),
(74, 'vn', 'N;', '', '', NULL, 'Daisy Dream  MARC JACOBS 마크 제이콥스 데이지 드림 (EDT) ★테스터★ 100ml (뚜껑있음)', '<p><img src=\"/data/upload/image(11).png\" style=\"height:358px; width:605px\" /></p>\r\n', '', '', '', '', '0', '0', NULL, NULL, NULL, '000126002'),
(75, 'vn', 'N;', '', '', NULL, 'Sữa Tắm Hương Hoa Ly 300ml ', '', '<p>Gel tắm hương nước hoa giúp lưu lại mùi thơm nồng nàn quyến rũ. Hương nước hoa được cô đọng trong những viên nang nước hoa nhỏ li ti sẽ tự tan ra và bảo phủ lớp hương thơm ngát cho làn da. Kết cấu dạng gel tạo bọt siêu mịn, làm sạch da nhanh chóng nhưng không gây cảm giác khô da.<br />\r\n<strong>Thành phần</strong><br />\r\nChiết xuất từ tinh dầu hoa nhài giúp tăng khả năng nuôi dưỡng và làm săn mịn da, hỗ trợ hiệu quả trong việc chống lão hóa da, làm sáng mịn da.</p>\r\n\r\n<p>Cách dùng: Lấy một lượng vừa đủ cho vào bông tắm rồi tạo bọt thoa đều khắp cơ thể . Massage nhẹ nhàng khoảng 30 giây. Rồi tắm lại bằng nước ấm hoặc lạnh. Hương hoa sẽ lưu lại trên da tạo cảm giác rất thơm mát và thoải mái .&nbsp;</p>\r\n', '', '', '', '0', '265000', NULL, NULL, NULL, '00012700'),
(76, 'vn', 'N;', '', '', NULL, 'Sữa Tắm Hoa Hồng 300ml ', '', '<p>Gel tắm hương nước hoa giúp lưu lại mùi thơm nồng nàn quyến rũ trọn ngày dài của hương nước hoa được cô đọng trong những viên nang nước hoa nhỏ li ti màu hồng đáng yêu<br />\r\n<strong>Thành phần</strong><br />\r\nChiết xuất từ tinh dầu nụ tầm xuân của hoa hồng Andean, giúp da giữ được sự&nbsp; ẩm mượt sau khi sử dụng mang đến làn da mềm mịn như nhung.</p>\r\n', '', '', '', '0', '265000', NULL, NULL, NULL, '000127001'),
(77, 'vn', 'N;', '', '', NULL, 'Sữa Tăm hoa Peony Trắng 300ml ', '', '<p>White Peony - Hoa mẫu đơn trắng, loài hoa vương giả, được tầng lớp thượng lưu Trung Quốc đặc biệt ưa chuộng. Hương thơm ngan ngát, White Peony xinh đẹp thanh tao thường được dùng làm hương liệu chăm sóc nhan sắc của các tiểu thư quyền quý ngày xưa. PERFUME SEED WHITE PEONY BODY WASH với công thức siêu bọt mịn sẽ mang đến cảm giác vô&nbsp; cùng dễ chịu đồng thời làn da sẽ trở nên mịn màng mà không khô da, giúp thư giãn cơ thể cực hiệu quả, đào thải độc tố, loại bỏ bụi bẩn, tạp chất trên da.<br />\r\n<strong>Thành phần</strong><br />\r\nChiết xuất từ hạt mầm hoa lupine trắng và hoa mẫu đơn trắng mang đến hiệu quả làm trắng mịn da.<br />\r\nHương nước hoa thơm mát với khả năng lưu giữ hương thơm lâu dài.</p>\r\n', '', '', '', '0', '265000', NULL, NULL, NULL, '000127002'),
(78, 'vn', 'N;', '', '', NULL, 'Dưỡng thể làm trắng da 300ml ', '', '<p>Sữa dưỡng thể PERFUME SEED WHITE PEONY BODY MILK hương nước hoa làm trắng da thật tự nhiên, với công nghệ tiên tiến của Hàn Quốc mang lại hiệu quả làm trắng nhờ vào các dưỡng chất từ hoa mẫu đơn trắng giúp loại bỏ những sắc tố da sạm màu trên da mang lại cho bạn làn da sáng trắng, mềm mịn và khoẻ mạnh. Với kết cấu dạng sữa, các dưỡng chất sẽ được hấp thụ sâu và nhanh hơn vì vậy mà bạn sẽ cảm thấy thật thoải mái và dễ chịu bởi sản phẩm không hề gây nhờn rít.<br />\r\n<strong>Thành phần</strong><br />\r\nChiết xuất từ hạt mầm hoa lupine trắng và hoa mẫu đơn trắng mang đến hiệu quả làm trắng mịn da. Công thức 5 free lành tính, không gây kích ứng, tuyệt đối êm dịu trên da.</p>\r\n', '', '', '', '0', '265000', NULL, NULL, NULL, '000127004'),
(79, 'vn', 'N;', '', '', NULL, 'Dưỡng da toàn thân hoa hồng 300ml ', '', '<p>Sữa dưỡng thể hương nước hoa, kết cấu dạng sữa tác động lên da một cách nhẹ nhàng và ngay lập tức, để lại cho bạn một làn da khô ráo nhưng vẫn sáng mịn tuyệt đối. Dòng dưỡng thể chứa tinh dầu thực vật tự nhiên siêu mịn sẽ làm làn da của bạn mềm mại và tỏa hương thơm dịu nhẹ.<br />\r\n<strong>Thành phần</strong><br />\r\nChiết xuất từ tinh dầu nụ tầm xuân của hoa hồng Andean, giúp da giữ được sự&nbsp; ẩm mượt sau khi sử dụng mang đến làn da mềm mịn như nhung.</p>\r\n', '', '', '', '0', '265000', NULL, NULL, NULL, '000127005'),
(80, 'vn', 'N;', '', '', NULL, 'Dưỡng da toàn thân hương hoa ly 300ml ', '', '<p>Sữa dưỡng thể mang đến hiệu quả làm sáng và săn mịn da với khả năng lưu hương lâu dài nhờ công thức bổ sung tinh chất nước hoa. Đồng thời bổ sung hàm lượng dưỡng chất cao để hỗ trợ chống lão hóa cho làn da.<br />\r\n<strong>Thành phần</strong><br />\r\nChiết xuất tinh túy từ hoa nhài giúp cải thiện sự săn mịn cho làn da và lưu giữ hương thơm lâu dài. Kết hợp với chiết xuất từ tinh dầu jojoba giúp bổ sung độ ẩm sâu.</p>\r\n', '', '', '', '0', '265000', NULL, NULL, NULL, '000127006'),
(81, 'vn', 'N;', '', '', NULL, 'Nước Hoa Hồng Làm Trắng Da White Seed 130ml ', '', '<p>Nước hoa hồng mang đến hiệu quả làm trắng sáng da. Sử dụng sau bước làm sạch da để phục hồi độ ẩm thiết yếu cho làn da của bạn. Làm săn mịn lỗ chân lông và là bước dẫn xuất để các bước dưỡng tiếp theo hấp thụ vào da hiệu quả nhất. WHITE SEED&nbsp;là dòng sản phẩm làm trắng, chống oxy hóa - ức chế sự tổng hợp melanin. Với công thức làm trắng được sáng chế và phát triển bởi Viện Nghiên Cứu THEFACESHOP,&nbsp;WHITE SEED&nbsp;mang khả năng làm trắng hiệu quả gấp 1000 lần vitamin C thông thường, vì vậy tăng khả năng ức chế hình thành sắc tố melanin hiệu quả gấp 15 lần so với arbutin.</p>\r\n\r\n<p>WHITE SEED&nbsp;không chỉ là giải pháp dưỡng trắng sáng da hiệu quả, mà còn trả lại vẻ tưới tắn và hồng hào cho làn da nhờ ba bước cải thiện chuyên sâu từ lớp tế bào bên trong da:</p>\r\n\r\n<p>Bước 1: Với chiết xuất phức hợp từ tinh dầu hạt mầm hoa Lupin và hoa cúc trắng,&nbsp;WHITE SEED&nbsp;làm sáng và cải thiện tông da lên từng ngày.</p>\r\n\r\n<p>Bước 2: Với chiết xuất từ tinh dầu cây liễu,&nbsp;WHITE SEED&nbsp;còn làm mờ và đánh bay các đốm nâu lâu ngày trên bề mặt da.</p>\r\n\r\n<p>Bước 3: Niacinamide trong&nbsp;WHITE SEED&nbsp;còn hỗ trợ cải thiện sắc tố từ sâu bên trong tế bào da, giúp chống oxy hóa, ức chế sự tổng hợp melanin, ngăn ngừa sự hình thành và phát triển đốm nâu, tàn nhang trên bề mặt da.</p>\r\n\r\n<p><strong>Thành phần</strong><br />\r\nCông thức làm trắng được sáng chế và phát triển bởi viện nghiên cứu THE FACE SHOP mang đến khả năng làm trắng hiệu quả gấp 1000 lần vitamin C, và khả năng ức chế hình thành melanin gấp 15 lần so với arbutin.Trong đó, phức hợp làm trắng từ hạt mầm hoa Lupin giàu Niacinamide và vitamin C giúp làm trắng và mang đến làn da sáng, rạng rỡ; kết hợp với hoa cúc trắng giúp làm trắng và tái tạo da từ bên trong nhờ khả năng kiểm soát melanin. Bổ sung chiết xuất từ cây liễu giàu Salicylic Acid giúp làn da mịn mượt, cải thiện hiệu quả cho làn da tối màu.</p>\r\n\r\n<p><strong>Công dụng</strong>: WHITE SEED BRIGHTENING TONER&nbsp;là sản phẩm nước cân bằng vừa cung cấp và duy trì độ ẩm cho da vừa bổ sung phức hợp làm trắng được chiết xuất từ các loại hoa,&nbsp;WHITE SEED BRIGHTENING TONER&nbsp;mang đến giải pháp dưỡng trắng da, giúp làn da trở nên đều màu, là bước dẫn xuất kích hoạt để quá trình hấp thụ các dưỡng chất ở bước kế tiếp trở nên dễ dàng và hiệu quả.&nbsp; Bên cạnh áp dụng công nghệ GMO – free,&nbsp;WHITE SEED BRIGHTENING TONER&nbsp;còn sử dụng công thức 7 không của THEFACESHOP: không Paraben, không chất tạo màu, không chưa thành phần động vật, không Paraffin, không bột Taic, không Polyacrylamide.&nbsp; Tinh chất từ hạt mầm hoa Lupin giàu Niacinamide và Vitamin C giúp làn da trắng và ngày càng sáng bừng, rạng rỡ kết hợp cùng tinh dầu từ hoa cúc trắng giúp làm trắng và tái tạo tế bào da từ sâu bên trong nhờ khả năng kiểm soát melanin một cách hiệu quả, và cuối cùng không thể thiếu chiết xuất từ cây liễu giàu Salicylic Acid,&nbsp;WHITE SEED BRIGHTENING TONER&nbsp;thật sự là sản phẩm cần thiết và tiên quyết cho các cô nàng đang có làn da không đều màu, giúp cải thiện và mang lại một làn da mịn màng và không còn tối màu nữa.</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng</strong></p>\r\n\r\n<p>-Dùng sau bước làm sạch da&nbsp;<a href=\"http://thefaceshop.com.vn/collections/cleansing-foam\" target=\"_blank\">(Sữa rửa mặt)</a>.</p>\r\n\r\n<p>-Cho 1 lượng vừa đủ trên bông cotton và lau nhẹ nhàng theo chiều cấu tạo da; sau đó dùng các ngón tay vỗ nhẹ lên bề mặt da.</p>\r\n\r\n<p>-Sử dụng mỗi ngày 2 lần: buổi sáng và buổi tối.</p>\r\n\r\n<p>﻿Quy trình dưỡng da tốt nhất</p>\r\n\r\n<p><img src=\"/data/upload/image(12).png\" style=\"height:376px; width:605px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '0', '310000', NULL, NULL, NULL, '00012800'),
(82, 'vn', 'N;', '', '', NULL, 'Sữa dưỡng da White Seed 110ml ', '', '<p>Sữa dưỡng WHITE SEED BRIGHTENING LOTION cung cấp chất dinh dưỡng làm trắng sáng da và giúp cân bằng lượng dầu và nước cho bề mặt da, đồng thời cung cấp đầy đủ chất dinh dưỡng cho làn da sáng hồng, mịn màng. Kết cấu dạng sữa lỏng dịu nhẹ và thẩm thấu nhanh vào da, hoàn toàn không gây cảm giác nhờn rít. Nếu yêu thích các sản phẩm làm trắng từ thiên nhiên, an toàn với mức giá vừa phải thì bạn hoàn toàn không thể bỏ qua bộ sản phẩm WHITE SEED. Mang đến giải pháp dưỡng trắng sáng da hiệu quả, trả lại vẻ tươi tắn và hồng hào cho làn da nhờ 3 bước cải thiện chuyên sâu từ bên trong da như sau:<br />\r\n- Bước 1: Làm sáng, cải thiện tông da nhờ phức hợp làm trắng da từ hạt mầm hoa lupin và hoa cúc trắng.<br />\r\n- Bước 2: Chiết xuất cây liễu làm mờ đốm nâu trên bề mặt da.<br />\r\n- Bước 3: Cải thiện sắc tố từ sâu bên trong nhờ niacinamide.<br />\r\nBên cạnh đó, công thức làm trắng độc quyền được sáng chế và phát triển bởi viện nghiên cứu THEFACESHOP: HR - Hexylresorcinol mang đến khả năng làm trắng hiệu quả gấp 1000 lần vitamin C, gấp 15 lần so với arbutin giúp chống oxy hóa, ức chế sự tổng hợp melanin giúp ngăn ngừa sự hình thành và phát triển các đốm nâu trên bề mặt da.</p>\r\n\r\n<p><strong>Thành phần</strong><br />\r\nPhức hợp làm trắng từ hạt mầm hoa lupin và hoa cúc giúp làm trắng sáng da. Bên cạnh đó, thành phần dưỡng ẩm được chắt lọc vô cùng công phu từ những bông hoa trắng trên đỉnh núi Alps Valais, Thụy Sĩ giúp tăng cường hàng rào bảo vệ da và lưu giữ độ ẩm suốt ngày dài</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng:</strong>Sử dụng sau bước tinh chất. Dùng lượng vừa đủ và thoa đều khắp bề mặt da.&nbsp;Quy trình dưỡng da tốt nhất</p>\r\n\r\n<p><img src=\"/data/upload/image(13).png\" style=\"height:376px; width:605px\" /></p>\r\n', '', '', '', '0', '310000', NULL, NULL, NULL, '000128001'),
(83, 'vn', 'N;', '', '', NULL, 'Kem Dưỡng Da White Seed 50ml ', '', '<p>Kem dưỡng trắng sáng da, làm mềm mịn da và tạo hàng rào độ ẩm bảo vệ da khỏi tác hại của môi trường bên ngoài.Kết cấu dịu nhẹ và mềm mịn như làn mây giúp thẩm thấu nhanh, không gây nhờn rít và cùng với khả năng làm trắng sáng hiệu quả chắc ch ắn sẽ là sự lựa chọn đúng đắn của các bạn</p>\r\n\r\n<p><strong>Thành phần</strong></p>\r\n\r\n<p>Phức hợp làm trắng từ hạt mầm hoa lupin và hoa cúc giúp làm trắng sáng da. Bên cạnh đó, thành phần dưỡng ẩm được chắt lọc vô cùng công phu từ những bông hoa trắng trên đỉnh núi Alps Valais, Thụy Sĩ giúp tăng cường hàng rào bảo vệ da và lưu giữ độ ẩm suốt ngày dài.</p>\r\n\r\n<p><strong>Công dụng</strong></p>\r\n\r\n<p>Giúp làm mềm mịn da và tạo hàng rào độ ẩm bảo vệ da khỏi tác hại của môi trường bên ngoài.</p>\r\n\r\n<p>Đặc biệt, kết cấu dịu nhẹ và mềm mịn như làn mây giúp thẩm thấu nhanh, không gây nhờn rít và cùng với khả năng làm trắng sáng hiệu quả chắc chắn sẽ là sự lựa chọn đúng đắn của các bạn.</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng Kem Dưỡng Trắng White Seed Blanclouding Moisture Cream</strong></p>\r\n\r\n<p>Sử dụng vào bước cuối cùng trong quy trình dưỡng da.</p>\r\n\r\n<p>Lấy một lượng sản phẩm vừa đủ ra tay và dàn trải đều khắp bề mặt da.&nbsp;Sau đó áp nhẹ lòng bàn tay lên khắp bề mặt da để tăng khả năng thẩm thấu sản phẩm.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"/data/upload/image(14).png\" style=\"height:376px; width:605px\" /></p>\r\n', '', '', '', '0', '410000', NULL, NULL, NULL, '000128003'),
(84, 'vn', 'N;', '', '', NULL, 'Tinh Chất Làm Trắng Da White Seed 50ml ', '', '<p><strong>Thành phần</strong> :&nbsp; Phức hợp làm trắng từ hạt mầm hoa lupin và hoa cúc mang đến hiệu quả tối ưu cho việc làm mờ đốm nâu và làm trắng sáng da.</p>\r\n\r\n<p><strong>Công dụng</strong> : Khí hậu vùng nhiệt đới nắng nóng nên việc hình thành sạm nám, tàn nhang luôn là nỗi lo lắng của phái đẹp. Tinh chất dòng WHITE SEED BRIGHTENING SERUM giúp cải thiện cấu trúc da và dưỡng trắng chuyên sâu.</p>\r\n\r\n<p>Đặc biệt, sản phẩm mang đến hiệu quả rõ rệt trong việc làm mờ đốm nâu và làm trắng sáng làn da nhưng vẫn rất an toàn, không làm bào mòn làn da. Giờ đây, một làn da trắng sáng rạng rỡ đã ngay trong tầm tay bạn!</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng</strong> : Sử dụng sau bước nước hoa hồng. Dùng một lượng vừa đủ, thoa đều nhẹ nhàng khắp mặt từ trong ra ngoài.</p>\r\n\r\n<p><img src=\"/data/upload/image(15).png\" style=\"height:376px; width:605px\" /></p>\r\n', '', '', '', '0', '410000', NULL, NULL, NULL, '000128004'),
(85, 'vn', 'N;', '', '', NULL, 'Nước Hoa Hồng Chia Seed 130ml ', '', '<p><strong>Nước Cân Bằng Chia Seed Hydrating Toner</strong>&nbsp;chiết xuất từ&nbsp;<strong>hạt Chia nguyên chất.&nbsp;</strong>Giúp dưỡng ẩm, cân bằng, làm sạch da, hỗ trợ se khít lỗ chân lông. Sản phẩm hấp thụ nhanh vào da, hoàn toàn không gây nhờn rít. Sản phẩm cung cấp nước, vitamin và khoáng chất để phục hồi làn da. Giúp da săn chắc, giảm quá trình lão hóa. Giúp da mềm mịn và trắng sáng hơn.</p>\r\n\r\n<p>Sản phẩm mới được áp dụng công nghệ&nbsp;<strong>GMO-free với 7 không.</strong>&nbsp;Phù hợp với cả làn da nhạy cảm nhất. Không Paraben, không chất tạo màu, không chứa thành phần động vật, không dầu, không paraffin, không chứa bột Talc, không Polyacrylamide.</p>\r\n\r\n<p><strong>Hạt Chia</strong>&nbsp;là một loại hạt thực vật giàu dinh dưỡng thuộc họ bạc hà. Có xuất xứ từ Mexico và Guatemela. Hạt Chia giúp cơ thể hấp thụ và tận dụng tối đa các khoáng chất. Với đặc tính có khả năng lưu giữ ẩm gấp 10 lần trọng lượng của hạt khi ở trong nước. Loại hạt này có thể giúp làn da của bạn lưu giữ độ ẩm tối ưu.</p>\r\n\r\n<p>– Hạt chia làm đẹp da: trong hạt chia chứa hàm lượng omega 6 ALA. Chống lại sự phát triển của các gốc tự do, làm đẹp da.</p>\r\n\r\n<p>– Hạt chia chống lão hóa: Lượng chất chống oxy hóa trong 100g hạt chia cung cấp 1 lượng ORAC gấp 7 lần nhu cầu trong cơ thể, chống lão hóa hiệu quả hơn.</p>\r\n\r\n<p>Hướng dẫn sử dụng Nước Cân Bằng Chia Seed Hydrating Toner</p>\r\n\r\n<p>Sử dụng sau bước làm sạch da.</p>\r\n\r\n<p>Lấy một lượng Chia Seed Hydrating Toner vừa đủ ra bông cotton.</p>\r\n\r\n<p>Thoa nhẹ nhàng khắp mặt và cổ vào mỗi buổi sáng và tối.</p>\r\n\r\n<p>Sữa dưỡng Chia Seed</p>\r\n\r\n<p>Sữa dưỡng giúp tập trung cân bằng lượng dầu và nước cho bề mặt da, đồng thời cung cấp đầy đủ chất dinh dưỡng cho làn da sáng khỏe, mịn màng. Với kết cấu dạng sữa lỏng dịu nhẹ, sữa dưỡng thẩm thấu nhanh vào da, hoàn toàn không gây cảm giác dính rít. Sử dụng đều đặn mỗi ngày để cải thiện bề mặt da sáng khỏe và mịn màng hơn</p>\r\n\r\n<p><strong>Chia Seed Hydrating Emulsion TheFaceShop</strong>&nbsp;là sữa dưỡng chiết xuất từ hạt Chia. Giúp làm mềm và cung cấp độ ẩm với thành phần dưỡng chất cao. Phục hồi vấn đề làn da, giúp làn da săn chắc, se lỗ chân lông. Mang lại làn da tươi sáng, mềm mại, mịn màng, trải rộng vùng da mượt. Mang đến độ ẩm tối ưu, góp phần ngăn ngừa quá trình lão hoá da. Làm chậm quá trình tạo nếp nhăn ở khoé mắt. Làm trắng sáng da vùng mắt và không gây nhờn rít khi sử dụng. Sản phẩm phù hợp sử dụng cho khách hàng từ 20 tuổi trở lên. Cho mọi loại da kể cả làn da nhạy cảm.</p>\r\n\r\n<p><strong>Thành phần:</strong>&nbsp;hạt Chia – một loại thực phẩm từ họ bạc hà rất giàu chất dinh dưỡng giúp cơ thể hấp thụ nhanh chóng và tận dụng tối đa các khoáng chất. Hạt Chia Seed có khả năng giữ ẩm gấp 10 lần trọng lượng của hạt, dòng sản phẩm Chia Seed có thể đem lại một làn da ẩm mịn mượt mà, đồng thời giúp ngăn ngừa lão hóa và làm trắng sáng da.</p>\r\n\r\n<p><img src=\"/data/upload/image(16).png\" style=\"height:475px; width:605px\" /></p>\r\n', '', '', '', '0', '280000', NULL, NULL, NULL, '000128005'),
(86, 'vn', 'N;', '', '', NULL, 'Sữa Dưỡng Làm Mịn Da Chia Seed 110ml ', '', '<p>Hạt Chia là một loại siêu thực phẩm có nguồn gốc lâu đời được các thổ dân Châu Mỹ sử dụng. Ngày nay, hạt Chia được giới y học và dinh dưỡng học xếp loại là một trong những thực phẩm giá trị bậc nhất cho sức khỏe con người, với các đặc điểm nổi trội là giàu omega 3 và canxi cũng như các vitamin và khoáng chất có lợi khác không chỉ cho cơ thể mà còn mang đến hiệu quả chăm sóc làm đẹp da.</p>\r\n\r\n<p>Dòng sản phẩm&nbsp;<strong>CHIA SEED</strong>&nbsp;giúp chăm sóc dịu nhẹ, bổ sung và lưu giữ độ ẩm lâu dài cho da. Đồng thời giúp làm sáng&nbsp; da thật nhẹ nhàng và tự nhiên, ngăn ngừa hình thành gốc tự do để mang đến hiệu quả chống lão hóa da tuyệt vời.</p>\r\n\r\n<p><strong>Thành phần</strong> : Hạt chia là một loại hạt rất giàu dinh dưỡng, một thực phẩm rất giàu axit béo Omega – 3. Đồng thời, hạt chia có thể hấp thụ nước gấp 10 lần so với trọng lượng của hạt giúp tập trung lưu giữ lượng nước cho làn da.&nbsp;<br />\r\nNgoài ra, hạt chia còn có hàm lượng protein, chất xơ, chất béo và chất chống oxy hóa cao giúp hỗ trợ ngăn ngừa lão hóa sớm cho làn da.</p>\r\n\r\n<p><img src=\"/data/upload/image(17).png\" style=\"height:475px; width:605px\" /></p>\r\n', '', '', '', '0', '285000', NULL, NULL, NULL, '000128006'),
(87, 'vn', 'N;', '', '', NULL, 'Kem Dưỡng Làm Mịn Da Chia Seed 50ml ', '', '<p>Sản phẩm kem dưỡng chiết xuất 100% từ hạt Chia và hạt Cotton, hoàn toàn không chứa dầu, giúp cung cấp nước, vitamin, khoáng chất, lấy đi dầu thừa trên da và cân bằng quá trình tiết dầu&nbsp;của da, phục hồi vấn đề làn da, cho da luôn tươi sáng, mềm mại, mịn màng.&nbsp;The Face Shop Chia Seed No Shine Hydrating Cream là dòng sản phẩm dưỡng da đứng đầu trong top best seller của hãng The Face Shop hiện nay, dùng được cho mọi loại da, đặc biệt là làn da dầu.</p>\r\n\r\n<p><strong>Chia Seed No Shine Hydrating Cream</strong>&nbsp;là sản phẩm kem dưỡng chiết xuất 100% từ&nbsp;<strong>hạt Chia và hạt Cotton.</strong>&nbsp;Hoàn toàn không chứa dầu, giúp cung cấp nước, vitamin, khoáng chất. Lấy đi dầu thừa trên da và cân bằng quá trình tiết dầu&nbsp;của da. Phục hồi vấn đề làn da, cho da luôn tươi sáng, mềm mại, mịn màng.</p>\r\n\r\n<p>Chia Seed No Shine Hydrating Cream là dòng sản phẩm dưỡng da đứng đầu trong&nbsp;<strong>top best seller</strong>&nbsp;của hãng The Face Shop hiện nay. Dùng được cho mọi loại da, đặc biệt là làn da dầu.</p>\r\n\r\n<p><strong>Kem Dưỡng Ẩm Chia Seed No Shine Hydrating Cream</strong>&nbsp;còn có công dụng cung cấp nước tối ưu cho da. Với công thức 0% Oil vừa hữu hiệu trong việc làm mát dịu da, lại vừa kiểm soát bã nhờn hiệu quả. Sản phẩm thích hợp cho da hỗn hợp, da dầu, da thừa dầu thiếu nước.</p>\r\n\r\n<p>Sản phẩm mới được áp dụng công nghệ&nbsp;<strong>GMO-free và 7 không.</strong>&nbsp;Phù hợp với cả làn da nhạy cảm nhất. Không Paraben, không chất tạo màu, không chứa thành phần động vật, không dầu, không paraffin, không chứa bột Talc, không Polyacrylamide.</p>\r\n\r\n<p>Với&nbsp;<strong>thành phần tự nhiên trong suốt, thẩm thấu nhanh.</strong>&nbsp;Hoàn toàn không kết dính. Hạt cotton kiểm soát bã nhờn tuyệt đối. Đem lại làn da không bị bóng nhờn. Luôn tươi tắn rạng ngời suốt cả ngày trời với cảm giác rất dễ chịu.</p>\r\n\r\n<p>Hướng dẫn sử dụng Kem Dưỡng Ẩm Chia Seed No Shine Hydrating Cream</p>\r\n\r\n<p>Dùng ở bước chăm sóc da cuối cùng.</p>\r\n\r\n<p>Lấy một lượng sản phẩm vừa đủ.</p>\r\n\r\n<p>Thoa nhẹ nhàng khắp mặt và cổ vào mỗi buổi sáng và tối</p>\r\n\r\n<p><img src=\"/data/upload/image(18).png\" style=\"height:624px; width:590px\" /></p>\r\n', '', '', '', '0', '380000', NULL, NULL, NULL, '000128009'),
(88, 'vn', 'N;', '', '', NULL, 'Xịt Khoáng Dưỡng Ẩm Chia Seed 170ml', '', '<h2>Xịt Khoáng Chia Seed Soothing Mist Toner TheFaceShop</h2>\r\n\r\n<p><strong>Xịt khoáng</strong><strong>&nbsp;dưỡng ẩm chi</strong><strong>ế</strong><strong>t xuất từ hạt Chia – Chia Seed Soothing Mist toner The Faceshop</strong>&nbsp;là xịt khoáng 2 trong 1 chiết xuất từ hạt Chia cung cấp nước, vitamin, khoáng chất phục hồi vấn đề làn da, giúp làn da săn chắc, se lỗ chân lông, mang lại làn da tươi sáng, mềm mại, mịn màng.</p>\r\n\r\n<p>Sản phẩm mới được áp dụng công nghệ&nbsp;<strong>GMO-free và 7 không</strong>, phù hợp với cả làn da nhạy cảm nhất: Không Paraben, không chất tạo màu, không chứa thành phần động vật, không dầu, không paraffin, không chứa bột Talc, không Polyacrylamide.</p>\r\n\r\n<p><strong>Hạt Chia</strong>&nbsp;là một loại hạt thực vật giàu dinh dưỡng thuộc họ bạc hà. Có xuất xứ từ Mexico và Guatemela, hạt Chia giúp cơ thể hấp thụ và tận dụng tối đa các khoáng chất. Với đặc tính có khả năng lưu giữ ẩm gấp 10 lần trọng lượng của hạt khi ở trong nước, loại hạt này có thể giúp làn da của bạn lưu giữ độ ẩm tối ưu.</p>\r\n\r\n<p>Được chiết xuất từ hạt Chia tươi với độ ẩm dồi dào bên trong, dòng sản phẩm&nbsp;<a href=\"https://thefaceshop360.com/tags-tu-khoa/chia-seed/\" target=\"_blank\"><strong>Chia Seed</strong></a>&nbsp;mang đến cho người sử dụng một làn da ẩm mịn mượt mà, đồng thời góp phần ngăn ngừa lão hóa và làm trắng sáng da.</p>\r\n\r\n<p><strong>Xịt khoáng</strong><strong>&nbsp;dưỡng ẩm chi</strong><strong>ế</strong><strong>t xuất từ hạt Chia – Chia seed soothing mist toner</strong>&nbsp;là một giải pháp hoàn hảo mang đến độ ẩm tối ưu cho làn da suốt cả ngày. Góp phần ngăn ngừa lão hóa da, làm trắng sáng da và không gây nhờn rít khi sử dụng. Sản phẩm phù hợp sử dụng cho khách hàng từ 20 tuổi trở lên. Cho mọi loại da kể cả làn da nhạy cảm.</p>\r\n\r\n<p><strong>Chia Seed Soothing Mist Toner</strong>&nbsp;được thiết kế dạng xịt tiện dụng. Vòi xịt nhẹ, êm, đều, phun sương mịn. Có thể dùng thay thế xịt khoáng, cung cấp độ ẩm và dưỡng chất cho da mềm mại, căng mịn.</p>\r\n\r\n<h3><strong>Hướng&nbsp;</strong><strong>dẫn sử dụng Xịt Khoáng Chia Seed Soothing Mis</strong><strong>t&nbsp;</strong><strong>Toner TheFaceShop</strong></h3>\r\n\r\n<p>Đặt chai cách mặt 20cm. Nhắm mắt, ấn xịt, sau đó dùng tay vỗ đều cho thấm hết vào da.</p>\r\n\r\n<p>Dùng bất kỳ lúc nào khi thấy da khô/nhờn, thiếu sức sống. Dùng trước và sau khi trang điểm (sau khi trang điểm xịt&nbsp;và để khô, không vỗ)</p>\r\n\r\n<p><img src=\"/data/upload/image(19).png\" style=\"height:525px; width:602px\" /></p>\r\n', '', '', '', '0', '260000', NULL, NULL, NULL, '000128010'),
(89, 'vn', 'N;', '', '', NULL, 'Tinh chất Dưỡng Da Chia Seed 50ml ', '', '<p>Sản phẩm được chiết xuất từ hạt Chia nguyên chất và được cô đặc. Cung cấp độ ẩm cho da, bảo về da hoàn hảo và phục hồi các vấn đề về da, giảm được các nốt đỏ do dị ứng. Sản phẩm giúp loại bỏ bớt lượng da chết và ngăn ngừa quá trình lão hóa da, mang lại một làn da mịn màng và trắng sáng.</p>\r\n\r\n<p><strong>Chia Seed Moisture Recharge Serum&nbsp;</strong>là tinh chất dưỡng da, được chiết xuất từ hạt CHIA nguyên chất và cô đặc. Cung cấp độ ẩm cho da, bảo về da hoàn hảo và phục hồi các vấn đề về da. Giảm được các nốt đỏ do dị ứng. Sản phẩm giúp loại bỏ bớt lượng da chết. Ngăn ngừa quá trình lão hóa da, mang lại một làn da mịn màng, trắng sáng.</p>\r\n\r\n<p>Sản phẩm phù hợp với&nbsp;<strong>mọi loại da, đặc biệt là da khô, thô, sần, thiếu nước</strong>.</p>\r\n\r\n<p>Sản phẩm mới được áp dụng công nghệ&nbsp;<strong>GMO-free và 7 không</strong>. Phù hợp với cả làn da nhạy cảm nhất. Không Paraben, không chất tạo màu, không chứa thành phần động vật, không dầu, không paraffin, không chứa bột Talc, không Polyacrylamide.</p>\r\n\r\n<p>&nbsp;Thành phần: 100% từ hạt CHIA và hạt COTTON</p>\r\n\r\n<p>Được chiết xuất từ hạt Chia tươi với độ ẩm dồi dào bên trong. Dòng sản phẩm&nbsp;<a href=\"https://thefaceshop360.com/tags-tu-khoa/chia-seed/\" target=\"_blank\"><strong>Chia Seed</strong></a>&nbsp;mang đến cho người sử dụng một làn da ẩm mịn mượt mà. Đồng thời góp phần ngăn ngừa lão hóa và làm trắng sáng da.</p>\r\n\r\n<p>Hạt Chia là một loại hạt thực vật giàu dinh dưỡng thuộc họ bạc hà. Có xuất xứ từ Mexico và Guatemela. Hạt Chia giúp cơ thể hấp thụ và tận dụng tối đa các khoáng chất. Với đặc tính có khả năng lưu giữ ẩm gấp 10 lần trọng lượng của hạt khi ở trong nước. Loại hạt này có thể giúp làn da của bạn lưu giữ độ ẩm tối ưu.</p>\r\n\r\n<p>– Hạt chia làm đẹp da: trong hạt chia chứa hàm lượng Omega 6 ALA. Chống lại sự phát triển của các gốc tự do, làm đẹp da.</p>\r\n\r\n<p>– Hạt chia chống lão hóa: Lượng chất chống oxy hóa trong 100g hạt chia cung cấp 1 lượng ORAC gấp 7 lần nhu cầu trong cơ thể, chống lão hóa hiệu quả hơn.</p>\r\n\r\n<h2>&nbsp;Hướng dẫn sử dụng Tinh Chất Dưỡng Chia Seed Moisture Recharge Serum TheFaceShop</h2>\r\n\r\n<p>Lấy một lượng sản phẩm vừa đủ.</p>\r\n\r\n<p>Thoa nhẹ nhàng khắp mặt</p>\r\n\r\n<p>Massage đều vào mỗi buổi sáng và tối.</p>\r\n\r\n<p><img src=\"/data/upload/image(20).png\" style=\"height:474px; width:605px\" /></p>\r\n', '', '', '', '0', '330000', NULL, NULL, NULL, '');
INSERT INTO `bakcodt_content_ln` (`id`, `ln`, `ln_fields_extra`, `ln_icon`, `ln_image`, `sef_url`, `name`, `intro`, `content`, `title`, `desc`, `keyword`, `priceSale`, `priceBuy`, `status`, `mobilePhone`, `link`, `codePro`) VALUES
(91, 'vn', 'N;', '', '', NULL, 'Kem Chống Nắng Longlash 50ml ', '', '<p>Sản phẩm chống nắng đa chức năng, vừa có khả năng bảo vệ da khỏi tác hại của ánh nắng mặt trời, giúp ngăn ngừa tình trạng sạm đen và lão hóa sớm cho da của bạn; đồng thời kem có màu da tự nhiên có thể sử dụng làm kem lót trang điểm. Kết cấu nhẹ nhàng, tự nhiên và khi thoa lên da bạn sẽ hoàn toàn không gây cảm giác dính rít.<br />\r\n<strong>Thành phần</strong>: Bổ sung thành phần dưỡng da chống oxy hóa từ mầm hoa hướng dương giúp tăng cường rào chắn bảo vệ da khỏi tác hại của ánh nắng mặt trời và môi trường.<br />\r\n<strong>Hướng dẫn sử dụng: </strong>&nbsp;Sử dụng sau các bước dưỡng da và trước khi trang điểm. Lấy một lượng sản phẩm vừa đủ và dàn trải khắp vùng da mặt và vùng da cổ.</p>\r\n\r\n<p><img src=\"/data/upload/image(21).png\" style=\"height:627px; width:587px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;<img src=\"/data/upload/image(24).png\" style=\"height:565px; width:296px\" /></p>\r\n', '', '', '', '0', '250000', NULL, NULL, NULL, '000128012'),
(92, 'vn', 'N;', '', '', NULL, 'Kem Chống Nắng Dạng Xịt 100ml ', '<p>Sữa chống nắng duy nhất có khả năng hạ nhiệt 5 độ C ngay lập tức cho làn da, giúp làm dịu da bạn và mang đến cho bạn cảm giác mát lạnh. Khi sử dụng để dặm lại vào giữa ngày, kết cấu mát lạnh của sản phẩm sẽ mang lại cảm giác dễ chịu và thư giãn cho da vừa khi chuẩn bị tiếp xúc với nhiệt độ cao vào buổi trưa.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src=\"/data/upload/image(25).png\" style=\"height:727px; width:523px\" /></p>\r\n', '<p>Sữa chống nắng duy nhất có khả năng hạ nhiệt 5 độ C ngay lập tức cho làn da, giúp làm dịu da bạn và mang đến cho bạn cảm giác mát lạnh. Khi sử dụng để dặm lại vào giữa ngày, kết cấu mát lạnh của sản phẩm sẽ mang lại cảm giác dễ chịu và thư giãn cho da vừa khi chuẩn bị tiếp xúc với nhiệt độ cao vào buổi trưa.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src=\"/data/upload/image(26).png\" style=\"height:727px; width:523px\" /></p>\r\n', '', '', '', '0', '350000', NULL, NULL, NULL, '000128013'),
(93, 'vn', 'N;', '', '', NULL, 'Dầu Trang Gạo 200ml ', '', '<p>Dầu tẩy trang làm sáng da với kết cấu giàu ẩm, phù hợp cho làn da thường và khô. Đây là dạng dầu dịu nhẹ làm sạch hoàn hảo các lớp kem chống nắng cũng như trang điểm trên bề mặt da. Với kết cấu dạng dầu và được nhũ hóa có thể hòa tan trong nước, dầu tẩy trang còn có thể làm sạch sâu trong lỗ chân lông, dễ dàng làm sạch với nước ấm mà không gây nhờn bóng. Thích hợp da dầu và hỗn hợp.<br />\r\n<strong>Thành phần: </strong>&nbsp;Công thức chiết xuất từ nước gạo, tinh dầu cám gạo giúp làm sạch lớp trang điểm, đồng thời lưu lại cảm giác mềm mượt cho da.<br />\r\n<strong>Hướng dẫn sử dụng: Lấy một miếng bông tẩy trang, cho 1 lượng vừa đủ lên bống sau đó lau sạch toàn khuôn mặt . Lưu ý nên lau vùng mắt và khóe mũi 2 lần để cho sạch sâu hơn. Cho dù không trang điểm cũng nên tẩy trang 2 lần 1 tuần để giúp lấy đi những bụi bẩn khó sạch khi dùng sữa rửa mặt thông thường. </strong><br />\r\n<br />\r\n<br />\r\n&nbsp;</p>\r\n', '', '', '', '0', '180000', NULL, NULL, NULL, '00012900'),
(94, 'vn', 'N;', '', '', NULL, 'Tẩy Trang Gạo Mắt Môi 120ml ', '', '<p>Nước gạo tẩy trang Rice Water Bright Lip &amp; Eye Remover chiết xuất từ gạo chứa nhiều dưỡng chất giúp nuôi dưỡng và bảo vệ mi mắt, tẩy trang nhẹ nhàng, không cay vùng mắt</p>\r\n\r\n<p>Mắt và môi là những vùng da mỏng và nhạy cảm nhưng thường hay bị bỏ quên khi chúng ta tẩy trang. Dòng sản phẩm tẩy trang mới của The Face Shop Rice Water Bright Lip &amp; Eye Remover chuyên tẩy trang vùng mắt, môi và làm sạch các lớp gel, liner, mascara lâu trôi trên mặt.</p>\r\n\r\n<p>Bên cạnh đó, Rice Water Bright Lip &amp; Eye Remover còn giữ cho mắt và vùng môi chống mất nước khi trang điểm mà không bị kích ứng.</p>\r\n\r\n<p><em>Hướng dẫn sử dụng Nước Gạo Tẩy Trang Mắt Môi Rice Water Bright Lip &amp; Eye Remover</em></p>\r\n\r\n<p>– Lắc đều để trước khi sử dụng.</p>\r\n\r\n<p>– Dùng bông thấm một lượng vừa đủ, sau đó lau nhẹ vùng mắt và môi.</p>\r\n\r\n<p><em>Khuyến cáo:</em></p>\r\n\r\n<p>– Để xa tầm tay trẻ em</p>\r\n\r\n<p>– Không lưu trữ ở những nơi nóng hoặc lạnh và ở những nơi tiếp xúc trực tiếp với ánh sáng mặt trời</p>\r\n\r\n<p>– Đóng nắp sau khi sử dụng</p>\r\n\r\n<p>– Ngừng sử dụng hoặc hỏi bác sĩ da liễu nếu xuất xuất hiện các hiện tượng sau: đốm đỏ, sưng, ngứa, kích ứng.</p>\r\n\r\n<p>– Không sử dụng khi có vết thương hở.</p>\r\n', '', '', '', '0', '150000', NULL, NULL, NULL, '00012901 '),
(95, 'vn', 'N;', '', '', NULL, 'Tẩy TRang Chia Seed Dạng Nước 300ml ', '', '<p>Dung dịch tẩy trang chiết xuất từ hạt Chia nhẹ nhàng tẩy sạch lớp kem chống nắng, lớp trang điểm trên khuôn mặt bạn mà da vẫn mềm mại không bị khô, kể cả vùng da nhạy cảm. Đồng thời sản phẩm còn giúp cân bằng độ ẩm cho da, mang lại cho bạn làn da sáng và giảm thiểu các tình trạng kích ứng da.</p>\r\n\r\n<p><em>Hạt Chia</em>&nbsp;là một loại hạt thực vật giàu dinh dưỡng thuộc họ bạc hà. Có xuất xứ từ Mexico và Guatemela. Hạt Chia giúp cơ thể hấp thụ và tận dụng tối đa các khoáng chất. Với đặc tính có khả năng lưu giữ ẩm gấp 10 lần trọng lượng của hạt khi ở trong nước, loại hạt này có thể giúp làn da của bạn lưu giữ độ ẩm tối ưu.</p>\r\n\r\n<p><em>Chia Seed Fresh Cleansing Water</em>&nbsp;là sản phẩm dung dịch tẩy trang chiết xuất từ hạt Chia. Nhẹ nhàng tẩy sạch lớp kem chống nắng hoặc trang điểm trên khuôn mặt bạn mà da vẫn mềm mại không bị khô, kể cả vùng da nhạy cảm. Đồng thời, sản phẩm còn giúp cân bằng độ ẩm cho da. Mang lại cho bạn làn da sáng và giảm thiểu các tình trạng kích ứng da. Sản phẩm phù hợp cho mọi loại da, kể cả da nhạy cảm.</p>\r\n\r\n<p><em>Thành phần</em><strong>:</strong>&nbsp;100% từ hạt CHIA và hạt COTTON</p>\r\n\r\n<p>Sản phẩm mới được áp dụng công nghệ GMO-free và 7 không, phù hợp với cả làn da nhạy cảm nhất. Không Paraben, không chất tạo màu, không chứa thành phần động vật, không dầu, không paraffin, không chứa bột Talc, không Polyacrylamide.</p>\r\n\r\n<p><em>Hướng dẫn sử dụng Chia Seed Fresh Cleansing Water</em></p>\r\n\r\n<p>Đặt bông cotton lên vòi, ấn 2-3 lần để làm ướt bông cotton và dùng bông cotton lau sạch khắp bề mặt da.</p>\r\n', '', '', '', '0', '270000', NULL, NULL, NULL, '000129002'),
(96, 'vn', 'N;', '', '', NULL, 'Tẩy Trang Gạo Dạng Nước 150ml ', '', '<p>Dầu tẩy trang làm sáng da, giàu ẩm, phù hợp cho làn da thường và khô. Đây là dạng dầu dịu nhẹ làm sạch hoàn hảo các lớp kem chống nắng cũng như trang điểm trên bề mặt da. Với kết cấu dạng dầu và được nhũ hóa có thể hòa tan trong nước, dầu tẩy trang còn có thể làm sạch sâu trong lỗ chân lông, dễ dàng làm sạch với nước ấm mà không gây nhờn bóng.&nbsp;Thích hợp làn da dầu<strong>.</strong></p>\r\n\r\n<p>Tẩy trang là bước đầu tiên không thể thiếu để có một làn da đẹp hoàn hảo. Nó là bước nền tảng cho các bước làm sạch và dưỡng da tiếp theo.</p>\r\n\r\n<p>Các sản phẩm tẩy trang ngày nay có rất nhiều tính ưu việt. Bên cạnh chức năng tẩy trang, nó còn giúp da bạn trở nên mềm mại hơn. Tinh dầu tẩy trang Rice Water Bright Light Cleansing Oil là gợi ý tuyệt vời cho bạn.</p>\r\n\r\n<p>Rice Water Bright Light Cleansing Oil là sản phẩm tẩy trang dạng tinh dầu giàu dưỡng chất. Chiết xuất cực kì lành tính từ thiên nhiên từ nước gạo – làm sáng da, dầu thực vật Moringa, Oliu – có công dụng làm sạch sâu và mềm mịn da, dưỡng ẩm.</p>\r\n\r\n<p>Với kết cấu dạng dầu và được nhũ hóa có thể hòa tan trong nước, dầu tẩy trang còn có thể làm sạch sâu trong lỗ chân lông, dễ dàng làm sạch với nước ấm mà không gây nhờn bóng.</p>\r\n', '', '', '', '0', '180000', NULL, NULL, NULL, '000129003'),
(97, 'vn', 'N;', '', '', NULL, 'Tẩy Trang Gạo Dạng Nước Big Size 320ml ', '', '<p>Dầu tẩy trang làm sáng da, giàu ẩm, phù hợp cho làn da thường và khô. Đây là dạng dầu dịu nhẹ làm sạch hoàn hảo các lớp kem chống nắng cũng như trang điểm trên bề mặt da. Với kết cấu dạng dầu và được nhũ hóa có thể hòa tan trong nước, dầu tẩy trang còn có thể làm sạch sâu trong lỗ chân lông, dễ dàng làm sạch với nước ấm mà không gây nhờn bóng.&nbsp;Thích hợp làn da dầu<strong>.</strong></p>\r\n\r\n<p>Tẩy trang là bước đầu tiên không thể thiếu để có một làn da đẹp hoàn hảo. Nó là bước nền tảng cho các bước làm sạch và dưỡng da tiếp theo.</p>\r\n\r\n<p>Các sản phẩm tẩy trang ngày nay có rất nhiều tính ưu việt. Bên cạnh chức năng tẩy trang, nó còn giúp da bạn trở nên mềm mại hơn. Tinh dầu tẩy trang Rice Water Bright Light Cleansing Oil là gợi ý tuyệt vời cho bạn.</p>\r\n\r\n<p>Rice Water Bright Light Cleansing Oil là sản phẩm tẩy trang dạng tinh dầu giàu dưỡng chất. Chiết xuất cực kì lành tính từ thiên nhiên từ nước gạo – làm sáng da, dầu thực vật Moringa, Oliu – có công dụng làm sạch sâu và mềm mịn da, dưỡng ẩm.</p>\r\n\r\n<p>Với kết cấu dạng dầu và được nhũ hóa có thể hòa tan trong nước, dầu tẩy trang còn có thể làm sạch sâu trong lỗ chân lông, dễ dàng làm sạch với nước ấm mà không gây nhờn bóng.</p>\r\n\r\n<p>Dầu tẩy trang làm sáng da, giàu ẩm, phù hợp cho làn da thường và khô. Đây là dạng dầu dịu nhẹ làm sạch hoàn hảo các lớp kem chống nắng cũng như trang điểm trên bề mặt da. Với kết cấu dạng dầu và được nhũ hóa có thể hòa tan trong nước, dầu tẩy trang còn có thể làm sạch sâu trong lỗ chân lông, dễ dàng làm sạch với nước ấm mà không gây nhờn bóng.&nbsp;Thích hợp làn da dầu<strong>.</strong></p>\r\n\r\n<p>Tẩy trang là bước đầu tiên không thể thiếu để có một làn da đẹp hoàn hảo. Nó là bước nền tảng cho các bước làm sạch và dưỡng da tiếp theo.</p>\r\n\r\n<p>Các sản phẩm tẩy trang ngày nay có rất nhiều tính ưu việt. Bên cạnh chức năng tẩy trang, nó còn giúp da bạn trở nên mềm mại hơn. Tinh dầu tẩy trang Rice Water Bright Light Cleansing Oil là gợi ý tuyệt vời cho bạn.</p>\r\n\r\n<p>Rice Water Bright Light Cleansing Oil là sản phẩm tẩy trang dạng tinh dầu giàu dưỡng chất. Chiết xuất cực kì lành tính từ thiên nhiên từ nước gạo – làm sáng da, dầu thực vật Moringa, Oliu – có công dụng làm sạch sâu và mềm mịn da, dưỡng ẩm.</p>\r\n\r\n<p>Với kết cấu dạng dầu và được nhũ hóa có thể hòa tan trong nước, dầu tẩy trang còn có thể làm sạch sâu trong lỗ chân lông, dễ dàng làm sạch với nước ấm mà không gây nhờn bóng.</p>\r\n', '', '', '', '0', '250000', NULL, NULL, NULL, '000129004'),
(98, 'vn', 'N;', '', '', NULL, 'Tẩy Trang Gạo Dạng Sữa 200ml ', '', '<p>Sữa tẩy trang Rice Water Bright Cleansing Milk dành cho làn da trang điểm nhẹ hoặc không trang điểm chiết xuất từ gạo. Giảm tình trạng bị kích ứng da, mang lại độ ẩm cần có giúp cân bằng độ ẩm cho da, mang lại cho bạn làn da trắng sáng, mềm mịn.</p>\r\n\r\n<p>Mỗi lần các bạn gái hoạt động mạnh, hoặc thời tiết oi bức làm da tiết da dầu nhờn hay sau mỗi buỗi party bạn cần rửa sạch hoàn toàn các phần trang điểm còn lại. Nếu không rửa sạch thì đó là những nguyên nhân bịt kín lỗ chân lông, tạo môi trường cho vi khuẩn trú ngụ và gây ra các bệnh về da. Vì thế, sản phẩm tẩy trang Rice water bright cleansing milk với những tính năng hoàn toàn mới sẽ nhanh chóng giải quyết vấn đề trên.</p>\r\n\r\n<p>Rice water bright cleansing milk là sản phẩm nước tẩy trang dạng sữa giàu dưỡng chất, chiết xuất từ nước gạo, dầu thực vật Moringa, Oliu và sữa, nhẹ nhàng tẩy sạch lớp trang điểm trên khuôn mặt bạn mà da vẫn mềm mại không bị khô, kể cả vùng da nhạy cảm.</p>\r\n\r\n<p>Ngoài ra, tẩy trang Rice water bright cleansing milk TheFaceShop còn giảm tình trạng bị kích ứng da, mang lại độ ẩm cần có giúp cân bằng độ ẩm cho da, mang lại cho bạn làn da trắng sáng, mềm mịn.</p>\r\n\r\n<p>Nước gạo có chứa Vitamin B5 rất có lợi cho da, vì thế bạn có thể dùng nước gạo rửa mặt hay tắm thường xuyên để ngăn chặn sự lão hóa và giúp da trở nên bóng đẹp hồng hào. Do đó nhiều người dùng nước vo gạo đã lắng trong để rửa mặt vào buổi sáng và buổi tối trước khi đi ngủ cho da sáng đẹp, mịn màng.</p>\r\n\r\n<p><em>Hướng dẫn sử dụng:</em></p>\r\n\r\n<p>– Thoa một lượng vừa đủ và thấm một ít nước.</p>\r\n\r\n<p>– Massage đều da mặt và rửa sạch bằng nước (ấm).</p>\r\n\r\n<p><em>Khuyến cáo:</em></p>\r\n\r\n<p>–&nbsp; Sử dụng trực tiếp trên da.</p>\r\n\r\n<p>– Tránh trúng vào vùng mắt. Tránh xa tầm tay của trẻ em.</p>\r\n\r\n<p>– Ngưng sử dụng khi thấy có dấu hiệu kích ứng da.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '0', '160000', NULL, NULL, NULL, '000129005'),
(99, 'vn', 'N;', '', '', NULL, 'Tẩy Trang Mắt Môi Chia Seed 110ml ', '', '<p>Đôi mắt là cửa sổ của tâm hồn và thể hiện sự lôi cuốn đặc biệt của phái đẹp. Tuy nhiên, mắt và môi luôn nhạy cảm hơn những vùng da khác và cần sự chăm sóc đặc biệt. Đối với tẩy trang cũng như thế, cần có một sản phẩm chuyên biệt dùng để tẩy trang cho vùng mắt và môi. Với CHIA SEED FRESH LIP&amp;EYE MAKE-UP REMOVER sẽ đáp ứng được mong đợi này của bạn, sản phẩm sẽ nhẹ nhàng làm sạch hiệu quả lớp trang điểm ở vùng da mắt và màu son môi, đồng thời lưu lại cảm giác tươi mát, dễ chịu cho làn da.<br />\r\n<strong><strong>Thành phần</strong> :</strong>Hạt chia là một loại hạt rất giàu dinh dưỡng, một thực phẩm rất giàu axit béo Omega – 3. Đồng thời, hạt chia có thể hấp thụ nước gấp 10 lần so với trọng lượng của hạt giúp tập trung lưu giữ lượng nước tối ưu cho làn da.&nbsp;<br />\r\nHạt cotton giúp hạn chế và kiểm soát dầu thừa trên da giúp da không bị bóng nhờn<br />\r\n<strong><strong>Hướng dẫn sử dụng</strong> : </strong>Lắc đều sản phẩm. Thấm nước tẩy trang ra bông cotton và áp nhẹ lên vùng da mắt và môi. Sau đó, lau nhẹ nhàng vùng da mắt và môi rồi rửa sạch với nước.</p>\r\n', '', '', '', '0', '280000', NULL, NULL, NULL, '000129006'),
(100, 'vn', 'N;', '', '', NULL, 'Tẩy Trang Gạo Dạng Kem 300ml ', '', '<p>Rice Water Bright Cleansing Cream&nbsp;là sản phẩm kem&nbsp;tẩy trang dạng đặc giàu dưỡng chất nhẹ nhàng tẩy sạch lớp trang điểm trên khuôn mặt bạn mà da vẫn mềm mại không bị khô,&nbsp;kể cả vùng&nbsp;da nhạy cảm. Đồng thời sản phẩm còn giúp cân bằng độ ẩm cho da, mang lại cho bạn làn da trắng sáng và giảm thiểu các tình trạng kích ứng da. Thích hợp với những bạn trang điểm dày, hoặc da khô.<br />\r\n<strong>Thành phần</strong> : Công thức chiết xuất từ nước gạo, tinh dầu cám gạo giúp làm sạch lớp trang điểm, đồng thời lưu lại cảm giác mềm mượt cho da.<br />\r\n<strong>Hướng dẫn sử dụng</strong> : Lấy sản phẩm và mát xa đều khắp bề mặt da theo hướng từ trong ra ngoài. Dùng khăn giấy hoặc bọt biển lau sạch và hoàn tất quy trình làm sạch da với bước sữa rửa mặt.</p>\r\n', '', '', '', '0', '200000', NULL, NULL, NULL, '000129007'),
(101, 'vn', 'N;', '', '', NULL, 'Tẩy Da Chết Chiết Xuất Từ Đường Đen Mật Ong 120ml ', '<p>Sống trong môi trường ô nhiễm, nhiều khói bụi làm da bạn thêm lão hóa nhanh, thiếu sức sống, và khả năng hấp thụ chất dinh dưỡng kém đi rất nhiều do các tế bào chết, bã nhờn tích tụ và các độc tố trên bề mặt da.</p>\r\n\r\n<p>Sở hữu một làn da sáng khỏe, mịn màng luôn là mơ ước của hầu hết phái nữ. Để có được một làn da hoàn hảo, tươi trẻ thì việc tầy tế bào chết da hàng tuần chính là bước chăm sóc da không thể thiếu.</p>\r\n\r\n<p>Tẩy tế bào chết là sản phẩm chuyên biệt giúp làm sạch và nhẹ nhàng loại bỏ tế bào chết trên da mặt, thúc đẩy vòng tuần hoàn máu ngăn chặn các tác nhân gây sạm nám da, cung cấp dưỡng chất giúp tái tạo làn da mới, cho bạn làn da sáng hồng tự nhiên và rạng rỡ, giúp loại bỏ mụn đầu đen, mụn trứng cá, làm sạch bã nhờn tích tụ trên bề mặt da.</p>\r\n\r\n<p><strong>Thành phần</strong> : Thành phần chiết xuất từ mật ong và đường đen. Kết cấu sản phẩm chứa hạt cát mịn giúp làm mịn mượt da.</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng</strong> : Làm sạch da và lau khô. Lấy một lượng sản phẩm vừa đủ và mát xa nhẹ nhàng lên da mặt trong khoảng 1-2 phút, tránh vùng da mắt và môi. Hoàn tất bằng bước rửa mặt sạch với nước.</p>\r\n', '<p>Sống trong môi trường ô nhiễm, nhiều khói bụi làm da bạn thêm lão hóa nhanh, thiếu sức sống, và khả năng hấp thụ chất dinh dưỡng kém đi rất nhiều do các tế bào chết, bã nhờn tích tụ và các độc tố trên bề mặt da.</p>\r\n\r\n<p>Sở hữu một làn da sáng khỏe, mịn màng luôn là mơ ước của hầu hết phái nữ. Để có được một làn da hoàn hảo, tươi trẻ thì việc tầy tế bào chết da hàng tuần chính là bước chăm sóc da không thể thiếu.</p>\r\n\r\n<p>Tẩy tế bào chết là sản phẩm chuyên biệt giúp làm sạch và nhẹ nhàng loại bỏ tế bào chết trên da mặt, thúc đẩy vòng tuần hoàn máu ngăn chặn các tác nhân gây sạm nám da, cung cấp dưỡng chất giúp tái tạo làn da mới, cho bạn làn da sáng hồng tự nhiên và rạng rỡ, giúp loại bỏ mụn đầu đen, mụn trứng cá, làm sạch bã nhờn tích tụ trên bề mặt da.</p>\r\n\r\n<p><strong>Thành phần</strong> : Thành phần chiết xuất từ mật ong và đường đen. Kết cấu sản phẩm chứa hạt cát mịn giúp làm mịn mượt da.</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng</strong> : Làm sạch da và lau khô. Lấy một lượng sản phẩm vừa đủ và mát xa nhẹ nhàng lên da mặt trong khoảng 1-2 phút, tránh vùng da mắt và môi. Hoàn tất bằng bước rửa mặt sạch với nước.</p>\r\n', '', '', '', '0', '180000', NULL, NULL, NULL, '000129008'),
(102, 'vn', 'N;', '', '', NULL, 'Tẩy Da Chết Chiết Xuất Từ Ngọc Trai  120ml ', '', '<p>Sống trong môi trường ô nhiễm, nhiều khói bụi làm da bạn thêm lão hóa nhanh, thiếu sức sống, và khả năng hấp thụ chất dinh dưỡng kém đi rất nhiều do các tế bào chết, bã nhờn tích tụ và các độc tố trên bề mặt da.</p>\r\n\r\n<p>Sở hữu một làn da trắng sáng, mịn màng luôn là mơ ước của hầu hết phái nữ. Để có được một làn da hoàn hảo, tươi trẻ thì&nbsp;tẩy da chết ngọc trai WHITE JEWEL PEELING chính là giải pháp mà bạn đừng quên bỏ qua bước tẩy tế bào chết.&nbsp;</p>\r\n\r\n<p>Sản phẩm giúp làm sạch và nhẹ nhàng loại bỏ tế bào chết trên da mặt, thúc đẩy vòng tuần hoàn máu ngăn chặn các tác nhân gây sạm nám da, cung cấp dưỡng chất giúp tái tạo làn da mới, cho bạn làn da sáng hồng tự nhiên và rạng rỡ, giúp loại bỏ hoàn toàn mụn đầu đen, mụn trứng cá, làm sạch bã nhờn giúp se khít lỗ chân lông. Đặc biệt, khả năng ngăn ngừa lão hoá làm săn chắc cơ mặt sẽ làm giảm vết nhăn trên da hiệu quả, kích hoạt sự hoạt động của da để dễ dàng hấp thu các sản phẩm dưỡng da, và giúp khuôn mặt khi trang điểm bắt phấn tốt hơn.</p>\r\n', '', '', '', '0', '180000', NULL, NULL, NULL, '000129009'),
(103, 'vn', 'N;', '', '', NULL, 'Kem Chống Nắng Hạ Nhiệt Nature Republic 150ml ', '', '<p>Xịt chống nắng toàn thân Nature Republic Provence Calendula Aqua Cooling Sun Pray&nbsp;chứa thành phần chiết xuất Kim Chẩn Thảo từ Bắc Địa Trung Hải nhẹ dịu cho da, hoa Cúc La Mã của Pháp giúp thư giãn da, cùng với nước băng tinh khiết núi Whisler từ Canada giàu khoáng chất cân bằng độ ẩm và làm mát da.</p>\r\n\r\n<p>Thiết kế sản phẩm dạng phun giúp tỏa đều. Với kết cấu nhẹ và dưỡng ẩm, phù hợp với mọi loại da, sử dụng dễ dàng mọi nơi mọi lúc, giúp che phủ lên da tốt hơn, rất tiện lợi khi sử dụng.</p>\r\n\r\n<p>Chỉ số chống nắng SPF50, PA +++ bảo vệ tối đa làn da của bạn dưới tác động của ánh nắng mặt trời, ngăn ngừa nguy cơ&nbsp;viêm da, ung thư da, da sạm đen… Đặc biệt với hương thơm dịu nhẹ, độ che phủ tốt, bảo vệ da tối đa 12 tiếng, thấm rút nhanh, không gây nhờn, dính.</p>\r\n\r\n<p>Sản phẩm có thể sử dụng cùng lớp trang điểm, tác dụng như một loại xịt khoáng, vừa giữ lớp trang điểm lâu trôi, vừa giữ cho lớp trang điểm ko bị xuống màu.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '0', '220000', NULL, NULL, NULL, '0006009'),
(104, 'vn', 'N;', '', '', NULL, 'Mặt Nạ BamBoo 20gr ', '', '<p>Đắp mặt nạ là một trong những bước chăm sóc đặc biệt cho da để bổ sung thêm dinh dưỡng nuôi dưỡng da kéo dài tuổi thanh xuân. Mặt nạ REAL NATURE MASK SHEET BAMBOO là mặt nạ dạng miếng cotton với chiết xuất từ tre giúp cung cấp nước và chống oxy hóa cho làn da.</p>\r\n\r\n<p><strong>Thành phần</strong> : Chiết xuất từ tre giúp cung cấp nước và chống oxy hóa cho làn da của bạn, mang lại cho bạn làn da mềm mịn và sáng khỏe.<br />\r\n<strong>Hướng dẫn sử dụng</strong> : Sử dụng sau bước làm sạch da và thoa nước cân bằng. Đắp khoảng 15 đến 20 phút. Sau khi lấy mặt nạ, vỗ nhẹ để hấp thụ hoàn toàn dưỡng chất.</p>\r\n', '', '', '', '0', '20000', NULL, NULL, NULL, '000121000'),
(105, 'vn', 'N;', '', '', NULL, 'Mặt Nạ Lotus 20gr ', '', '<p>Đắp mặt nạ là một trong những bước chăm sóc đặc biệt cho da để bổ sung thêm dinh dưỡng nuôi dưỡng da kéo dài tuổi thanh xuân.</p>\r\n\r\n<p>Mặt nạ THEFACESHOP REAL NATURE LOTUS FACE MASK sẽ nhanh chóng phục hồi vẻ tươi trẻ cho làn da nhờ cung cấp đầy đủ dưỡng chất vào sâu bên trong làn da, giúp cung cấp nước và phục hồi năng lượng cho làn da mệt mỏi.</p>\r\n\r\n<p>Bạn sẽ cảm nhận một làn da hoàn toàn khác biệt sau khi sử dụng.</p>\r\n\r\n<p><strong>Thành phần</strong>:Tinh chất hoa sen giúp cung cấp nước, phục hồi năng lượng và vẻ sáng khỏe cho làn da mệt mỏi, thiếu sức sống.</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng</strong></p>\r\n\r\n<p>Sử dụng sau bước làm sạch da và thoa nước cân bằng. Đắp khoảng 10 đến 15 phút. Sau khi lấy mặt nạ, vỗ nhẹ để hấp thụ hoàn toàn dưỡng chất.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '0', '200000', NULL, NULL, NULL, '000121001'),
(106, 'vn', 'N;', '', '', NULL, 'Mặt Nạ Calendula  20gr ', '', '<p>Đắp mặt nạ là một trong những bước chăm sóc đặc biệt cho da để bổ sung thêm dinh dưỡng nuôi dưỡng da kéo dài tuổi thanh xuân.</p>\r\n\r\n<p>Mặt nạ THEFACESHOP REAL NATURE CALENDULA FACE MASK sẽ nhanh chóng phục hồi vẻ tươi trẻ cho làn da nhờ cung cấp đầy đủ dưỡng chất vào sâu bên trong làn da, cải thiện bề mặt da.</p>\r\n\r\n<p>Bạn sẽ cảm nhận một làn da hoàn toàn khác biệt sau khi sử dụng.</p>\r\n\r\n<p><strong>Thành phần</strong> : Tinh chất hoa cúc Calendula giúp cải thiện tình trạng thô sần và phục hồi sự mềm mại, mịn màng cho làn da.</p>\r\n', '', '', '', '0', '20000', NULL, NULL, NULL, '000121002'),
(107, 'vn', 'N;', '', '', NULL, 'Mặt Nạ Việt Quất 20g ', '', '<p>Đắp mặt nạ là một trong những bước chăm sóc đặc biệt cho da để bổ sung thêm dinh dưỡng nuôi dưỡng da kéo dài tuổi thanh xuân. Mặt nạ Blueberry là mặt nạ dạng miếng cotton cùng tinh chất việt quất. Trong mỗi miếng mặt nạ chứa tới 1150mg tinh chất việt quất tươi giúp phòng chống oxi hóa và cải thiện độ đàn hồi đem lại vẻ mịn màng và trẻ trung cho làn da bạn.<br />\r\n<strong>Thành phần</strong> : Tinh chất trái việt quất giàu vitamin C, vitamin E giúp nuôi dưỡng da ngăn ngừa các dấu hiệu lão hóa, ngoài ra trái việt quất còn có chứa acid Salicilic giúp làm mềm và loại bỏ các tế bào da chết dày bì trên bề mặt da lão hóa, giúp da mềm mại, mịn màng.<br />\r\n<strong>Hướng dẫn sử dụng</strong> : Sử dụng sau bước làm sạch da và thoa nước cân bằng. Đắp khoảng 15 đến 20 phút. Sau khi lấy mặt nạ, vỗ nhẹ để hấp thụ hoàn toàn dưỡng chất.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '0', '20000', NULL, NULL, NULL, '000121004'),
(108, 'vn', 'N;', '', '', NULL, 'Mặt Nạ Olive 20g', '', '<p>Mặt nạ giấy là một trong những loại mặt nạ rất được yêu thích. Với hiệu quả cao, tiện lợi, dễ sử dụng nên mặt đã giấy vẫn luôn được đông đảo các bạn phụ nữ tin tưởng lựa chọn.&nbsp;<br />\r\nChỉ cần từ 15-20 thư giãn tận hưởng khi đắp mặt nạ giấy da bạn sẽ có một sự thay đổi và cải thiện đến bất ngờ trong khoảng thời gian ngắn nhất.&nbsp;<br />\r\nVới thành phần từ tinh dầu oliu sẽ giúp phục hồi độ ẩm hiệu quả cho làn da, ngăn ngừa tình trạng làn da khô, thô ráp.<br />\r\n<strong>Thành phần</strong><br />\r\nDưỡng chất từ oliu từ lâu nổi tiếng với khả năng phục hồi ẩm, mang đến làn da mềm mại và mịn mượt sau khi sử dụng.<br />\r\n<strong>Hướng dẫn sử dụng</strong><br />\r\nSử dụng sau bước làm sạch da và thoa nước cân bằng. Đắp khoảng 10 đến 15 phút. Sau khi lấy mặt nạ, vỗ nhẹ để hấp thụ hoàn toàn dưỡng chất.v</p>\r\n', '', '', '', '0', '20000', NULL, NULL, NULL, '000121005'),
(109, 'vn', 'N;', '', '', NULL, 'Mặt Nạ Aloe 20g', '', '<p>Đắp mặt nạ là một trong những bước chăm sóc đặc biệt cho da để bổ sung thêm dinh dưỡng nuôi dưỡng da kéo dài tuổi thanh xuân. Mặt nạ THEFACESHOP REAL NATURE ALOE FACE MASK được dành cho những làn da thiếu nước hoặc cần bổ sung nước tức thì.</p>\r\n\r\n<p><strong>Thành phần</strong><br />\r\nChiết xuất lô hội cung cấp nước cho làn da khô, bong tróc<br />\r\n<strong>Hướng dẫn sử dụng</strong><br />\r\nSử dụng sau bước làm sạch da và thoa nước cân bằng. Đắp khoảng 15 đến 20 phút. Sau khi lấy mặt nạ, vỗ nhẹ để hấp thụ hoàn toàn dưỡng chất.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '0', '20000', NULL, NULL, NULL, '000121007'),
(110, 'vn', 'N;', '', '', NULL, 'Mặt Nạ Bơ 20g', '', '<p>Mặt nạ giấy dưỡng mềm mịn da THE<strong>FACE</strong>SHOP Real Natural Mask&nbsp;Avocado được chiết xuất từ quả bơ có công dụng dưỡng mềm mượt da. Cung cấp độ ẩm cho da tối ưu, ngoài ra còn giúp làm sáng da. Mặt nạ Bơ thích hợp dành cho những làn da khô, nếp nhăn li ti xuất hiện nhiều.<br />\r\n<strong>Thành phần</strong><br />\r\nThành phần quả bơ có công dụng tuyệt vời trong việc làm đẹp và bảo vệ sức khoẻ, ở mỗi quả bơ có một lượng dinh dưỡng rất cao với con số Protêin và chất béo chưa bão hoà lên đến hơn 15%. Chính vì vậy bơ có khả năng cung độ ẩm cho làn da khô rất lý tưởng.<br />\r\n<strong>Hướng dẫn sử dụng</strong><br />\r\nSử dụng sau bước làm sạch da và thoa nước cân bằng. Đắp khoảng 15 đến 20 phút. Sau khi lấy mặt nạ, vỗ nhẹ để hấp thụ hoàn toàn dưỡng chất.</p>\r\n', '', '', '', '0', '20000', NULL, NULL, NULL, '00012108'),
(111, 'vn', 'N;', '', '', NULL, 'Mặt Nạ Mật Ong 20g', '', '<p>Đắp mặt nạ là một trong những bước chăm sóc đặc biệt cho da để bổ sung thêm dinh dưỡng nuôi dưỡng da kéo dài tuổi thanh xuân. Mặt nạ REAL NATURE MASK HONEY&nbsp; dạng miếng cotton giàu tinh chất dưỡng ẩm giúp làm sáng da và giúp da khỏe mạnh, ngăn ngừa tình trạng sạm da do các yếu tố cả bên trong và bên ngoài tác động lên.<br />\r\n<strong>Thành phần</strong><br />\r\nThành phần mật ong bổ sung độ ẩm và làm sáng da, cải thiện da từ sâu bên trong giúp bảo vệ da tránh các tác động có hại cho da.<br />\r\n<strong>Hướng dẫn sử dụng</strong><br />\r\nSử dụng sau bước làm sạch da và thoa nước cân bằng. Đắp khoảng 15 đến 20 phút. Sau khi lấy mặt nạ, vỗ nhẹ để hấp thụ hoàn toàn dưỡng chất.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '0', '20000', NULL, NULL, NULL, '000121009'),
(112, 'vn', 'N;', '', '', NULL, 'Mặt Nạ Nhân Sâm 20g', '', '<p>Mặt nạ giấy là một trong những loại mặt nạ rất được yêu thích. Với hiệu quả cao, tiện lợi, dễ sử dụng nên mặt đã giấy vẫn luôn được đông đảo các bạn phụ nữ tin tưởng lựa chọn.&nbsp;<br />\r\nChỉ cần từ 15-20 thư giãn tận hưởng khi đắp mặt nạ giấy da bạn sẽ có một sự thay đổi và cải thiện đến bất ngờ trong khoảng thời gian ngắn nhất.&nbsp;<br />\r\nChiết xuất từ hồng sâm sẽ giúp tái sinh da, phục hồi năng lượng và cung cấp chấ<br />\r\n<strong>Thành phần</strong><br />\r\nChiết xuất từ hồng sâm sẽ giúp tái sinh làn da, mang đến làn da tươi mới và tràn đầy sức sống sau khi được phục hồi năng lượng và cung cấp chất dinh dưỡng.<br />\r\n<strong>Hướng dẫn sử dụng</strong><br />\r\nSử dụng sau bước làm sạch da và thoa nước cân bằng. Đắp khoảng 10 đến 15 phút. Sau khi lấy mặt nạ, vỗ nhẹ để hấp thụ hoàn toàn dưỡng chất.</p>\r\n', '', '', '', '0', '20000', NULL, NULL, NULL, '000121010'),
(113, 'vn', 'N;', '', '', NULL, 'Mặt Nạ Trà Xanh 20g', '', '<p>Đắp mặt nạ là một trong những bước chăm sóc đặc biệt cho da để bổ sung thêm dinh dưỡng nuôi dưỡng da kéo dài tuổi thanh xuân. Mặt nạ REAL NATURE MASK GREEN TEA được dành cho những làn da nhạy cảm nhờ chức năng kháng khuẩn và tăng đề kháng cho da, giúp da tránh những tác nhân có thể gây mụn, nhanh chóng phục hồi vẻ tươi trẻ cho làn da nhờ cung cấp đầy đủ nước vào sâu cho da.<br />\r\n<strong>Thành phần</strong><br />\r\nChiết xuất trà xanh giúp kháng viêm, tăng đề kháng, ngăn ngừa hình thành mụn và chống oxi hóa cho da.<br />\r\n<strong>Hướng dẫn sử dụng</strong><br />\r\nSử dụng sau bước làm sạch da và thoa nước cân bằng. Đắp khoảng 15 đến 20 phút. Sau khi lấy mặt nạ, vỗ nhẹ để hấp thụ hoàn toàn dưỡng chất.v</p>\r\n', '', '', '', '0', '20000', NULL, NULL, NULL, '000121011'),
(114, 'vn', 'N;', '', '', NULL, 'Mặt Nạ Tảo Biển 20g', '', '<p>Mặt nạ giấy là một trong những loại mặt nạ rất được yêu thích. Với hiệu quả cao, tiện lợi, dễ sử dụng nên mặt đã giấy vẫn luôn được đông đảo các bạn phụ nữ tin tưởng lựa chọn.&nbsp;<br />\r\nChỉ cần từ 15-20 thư giãn tận hưởng khi đắp mặt nạ giấy da bạn sẽ có một sự thay đổi và cải thiện đến bất ngờ trong khoảng thời gian ngắn nhất.&nbsp;<br />\r\nChiết xuất từ rong biển giúp thanh lọc và làm dịu mát da, lưu lại cảm giác mịn màng cho bề mặt da.<br />\r\n<strong>Thành phần</strong><br />\r\nChiết xuất từ rong biển giúp thanh lọc và làm dịu mát da, lưu lại cảm giác mịn màng cho bề mặt da sau khi sử dụng.<br />\r\n<strong>Hướng dẫn sử dụng</strong><br />\r\nSử dụng sau bước làm sạch da và thoa nước cân bằng. Đắp khoảng 10 đến 15 phút. Sau khi lấy mặt nạ, vỗ nhẹ để hấp thụ hoàn toàn dưỡng chất</p>\r\n', '', '', '', '0', '20000', NULL, NULL, NULL, '000121012'),
(115, 'vn', 'N;', '', '', NULL, 'Mặt Nạ Gạo 20g', '', '<p>Đắp mặt nạ là một trong những bước chăm sóc đặc biệt cho da để bổ sung thêm dinh dưỡng nuôi dưỡng da kéo dài tuổi thanh xuân. Mặt nạ THEFACESHOP REAL NATURE RICE FACE MASK là mặt nạ dạng miếng cotton với chiết xuất từ gạo giúp làm sáng da.</p>\r\n\r\n<p><strong>Thành phần</strong><br />\r\nChiết xuất từ gạo giàu vitamin và độ ẩm giúp làm sáng mịn da.</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng</strong><br />\r\nSử dụng sau bước làm sạch da và thoa nước cân bằng. Đắp khoảng 15 đến 20 phút. Sau khi lấy mặt nạ, vỗ nhẹ để hấp thụ hoàn toàn dưỡng chất.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '0', '20000', NULL, NULL, NULL, '000121013'),
(116, 'vn', 'N;', '', '', NULL, 'Mặt Nạ Tea Tree 20g', '', '<p>Đắp mặt nạ là một trong những bước chăm sóc đặc biệt cho da để bổ sung thêm dinh dưỡng nuôi dưỡng da kéo dài tuổi thanh xuân. Mặt nạ&nbsp;REAL NATURE TEA TREE FACE MASK là mặt nạ dạng miếng cotton cùng cùng tinh dầu tràm giúp thanh lọc da.&nbsp;</p>\r\n\r\n<p><strong>Thành phần</strong></p>\r\n\r\n<p>Tinh dầu tràm với khả năng kháng khuẩn cao, giúp thanh lọc làn da bạn để bạn luôn có làn da khỏe và sạch mụn</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng</strong><br />\r\nSử dụng sau bước làm sạch da và thoa nước cân bằng. Đắp khoảng 15 đến 20 phút. Sau khi lấy mặt nạ, vỗ nhẹ để hấp thụ hoàn toàn dưỡng chất.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '0', '20000', NULL, NULL, NULL, '000121014'),
(117, 'vn', 'N;', '', '', NULL, 'Mặt Nạ Dưa Leo 20g', '', '<p>Đắp mặt nạ là một trong những bước chăm sóc đặc biệt cho da để bổ sung thêm dinh dưỡng nuôi dưỡng da kéo dài tuổi thanh xuân.</p>\r\n\r\n<p>Mặt nạ THEFACESHOP REAL NATURE CUCUMBER FACE MASK sẽ nhanh chóng phục hồi vẻ tươi trẻ cho làn da nhờ cung cấp đầy đủ dưỡng chất vào sâu bên trong làn da và giúp thanh lọc da.</p>\r\n\r\n<p>Bạn sẽ cảm nhận một làn da hoàn toàn khác biệt sau khi sử dụng.</p>\r\n\r\n<p><strong>Thành phần</strong></p>\r\n\r\n<p>Chiết xuất từ quả dưa leo giúp cung cấp nước và bổ sung độ ẩm cho làn da.</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng</strong></p>\r\n\r\n<p>Sử dụng sau bước làm sạch da và thoa nước cân bằng. Đắp khoảng 10 đến 15 phút. Sau khi lấy mặt nạ, vỗ nhẹ để hấp thụ hoàn toàn dưỡng chất.</p>\r\n', '', '', '', '0', '20000', NULL, NULL, NULL, '000121015'),
(118, 'vn', 'N;', '', '', NULL, 'Mặt Nạ Linh Chi 20g', '', '<p>Đắp mặt nạ là một trong những bước chăm sóc đặc biệt cho da để bổ sung thêm dinh dưỡng nuôi dưỡng da kéo dài tuổi thanh xuân.</p>\r\n\r\n<p>Mặt nạ THEFACESHOP REAL NATURE LINGZHI FACE MASK sẽ nhanh chóng phục hồi vẻ tươi trẻ cho làn da nhờ cung cấp đầy đủ dưỡng chất vào sâu bên trong làn da, giúp nâng cơ và cải thiện sự săn chắc.</p>\r\n\r\n<p>Bạn sẽ cảm nhận một làn da hoàn toàn khác biệt sau khi sử dụng.</p>\r\n\r\n<p><strong>Thành phần</strong></p>\r\n\r\n<p>Tinh chất nấm linh chi giúp nâng cơ và cải thiện sự săn chắc cho làn da chảy xệ.</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng</strong></p>\r\n\r\n<p>Sử dụng sau bước làm sạch da và thoa nước cân bằng. Đắp khoảng 10 đến 15 phút. Sau khi lấy mặt nạ, vỗ nhẹ để hấp thụ hoàn toàn dưỡng chất.</p>\r\n', '', '', '', '0', '20000', NULL, NULL, NULL, '000121016'),
(119, 'vn', 'N;', '', '', NULL, 'Mặt Nạ Lựu 20g', '', '<p>Đắp mặt nạ là một trong những bước chăm sóc đặc biệt cho da để bổ sung thêm dinh dưỡng nuôi dưỡng da kéo dài tuổi thanh xuân.</p>\r\n\r\n<p>Mặt nạ THEFACESHOP REAL NATURE POMEGRANATE FACE MASK sẽ nhanh chóng phục hồi vẻ tươi trẻ cho làn da nhờ cung cấp đầy đủ dưỡng chất vào sâu bên trong làn da và giúp thanh lọc da.</p>\r\n\r\n<p>Bạn sẽ cảm nhận một làn da hoàn toàn khác biệt sau khi sử dụng.</p>\r\n\r\n<p><strong>Thành phần</strong></p>\r\n\r\n<p>Chiết xuất từ quả lựu giúp phục hồi sự săn chắc và bổ sung độ ẩm cho làn da.</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng</strong></p>\r\n\r\n<p>Sử dụng sau bước làm sạch da và thoa nước cân bằng. Đắp khoảng 10 đến 15 phút. Sau khi lấy mặt nạ, vỗ nhẹ để hấp thụ hoàn toàn dưỡng chất.v</p>\r\n', '', '', '', '0', '20000', NULL, NULL, NULL, '000121017'),
(120, 'vn', 'N;', '', '', NULL, 'Mặt Nạ Shea Butter 20g', '', '<p>Đắp mặt nạ là một trong những bước chăm sóc đặc biệt cho da để bổ sung thêm dinh dưỡng nuôi dưỡng da kéo dài tuổi thanh xuân</p>\r\n\r\n<p>Mặt nạ THEFACESHOP REAL NATURE SHEA BUTTER FACE MASK sẽ nhanh chóng phục hồi vẻ tươi trẻ cho làn da nhờ cung cấp đầy đủ dưỡng chất vào sâu bên trong làn da và giúp thanh lọc da.</p>\r\n\r\n<p>Bạn sẽ cảm nhận một làn da hoàn toàn khác biệt sau khi sử dụng.</p>\r\n\r\n<p><strong>Thành phần</strong></p>\r\n\r\n<p>Chiết xuất từ bơ hạt mỡ giúp nuôi dưỡng sâu và phục hồi độ đàn hồi cho làn da.</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng</strong></p>\r\n\r\n<p>Sử dụng sau bước làm sạch da và thoa nước cân bằng. Đắp khoảng 10 đến 15 phút. Sau khi lấy mặt nạ, vỗ nhẹ để hấp thụ hoàn toàn dưỡng chất.</p>\r\n', '', '', '', '0', '20000', NULL, NULL, NULL, '000121018'),
(121, 'vn', 'N;', '', '', NULL, 'BVL Pour Homme Atlantiqve  /// 불가리 아쿠아 뿌르옴므 아틀란틱 ★테스터★ 100ml (뚜껑있음)', '', '<p style=\"margin-left:18.0pt\">Nhãn hiệu:&nbsp;Bvlgari</p>\r\n\r\n<p style=\"margin-left:18.0pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Giới tính:&nbsp;Nam</p>\r\n\r\n<p style=\"margin-left:18.0pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Xuất xứ:&nbsp;Ý</p>\r\n\r\n<p style=\"margin-left:18.0pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nồng độ:&nbsp;Eau de Toilette</p>\r\n\r\n<p style=\"margin-left:18.0pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Phát hành:2017</p>\r\n\r\n<p style=\"margin-left:18.0pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nhà pha chế:&nbsp;Jacques Cavallier</p>\r\n\r\n<p style=\"margin-left:18.0pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nhóm hương:&nbsp;Hương gỗ biển - Woody Aquatic</p>\r\n\r\n<p style=\"margin-left:18.0pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Phong cách:&nbsp;Lịch lãm, nhã nhặn, hiền hòa, thu hút</p>\r\n\r\n<p style=\"margin-left:18.0pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hương đặc trưng</p>\r\n\r\n<p style=\"margin-left:18.0pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hương đầu: Quả chanh vàng sicili, cam bergamot calabria, hương nước.</p>\r\n\r\n<p style=\"margin-left:18.0pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hương giữa: Long diên hương, hương nước biển.</p>\r\n\r\n<p style=\"margin-left:18.0pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hương cuối: Cây hoắc hương, gỗ đàn hương, cỏ hương bài, an tức hương.</p>\r\n\r\n<p>Aqva Atlantiqve mang một màu xanh rất khác so với “đàn anh” như Aqva Pour Homme hay Aqva Marine, màu xanh Atlantiqve mang hơi thở của đại dương bao la, tượng trưng cho hi vọng và sức sống căng tràn.&nbsp;</p>\r\n\r\n<p>Không chỉ có thiết kế bắt mắt mà hương thơm của nó rất “nịnh mũi”. Ngay từ note hương đầu tiên, Atlantiqve hút hồn người dùng bằng sự mát lành tươi mới của quả chanh vàng Sicili, cam bergamot Calabria hòa chút hương nước thanh khiết. Hương giữa vẫn mát rượi bởi hương nước biển nhưng pha thêm chút lôi cuốn của long diên hương. Điểm nhấn cuối tạo sự nam tính đầy mê hoặc đó chính là hương cuối nồng nàn, thu hút bởi sự góp mặt của các nốt hương như cây hoắc hương, gỗ đàn hương, cỏ hương bài, an tức hương.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '0', '0', NULL, NULL, NULL, '00018300'),
(122, 'vn', 'N;', '', '', NULL, 'Versace Eros  /// 베르사체 에로스 맨 (EDT)★테스터★100ml (뚜껑있음)', '', '<p>Nhãn hiệu:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Versace</p>\r\n\r\n<p>Giới tính :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nam</p>\r\n\r\n<p>Xuất xứ :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ý</p>\r\n\r\n<p>Nồng độ :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Eau de Toilette</p>\r\n\r\n<p>Phát hành :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2012</p>\r\n\r\n<p>Nhà pha chế :&nbsp;Aurelien Guichard, Silvia Monti</p>\r\n\r\n<p>Nhóm hương: Hương thơm Dương xỉ - Aromatic Fougere</p>\r\n\r\n<p>Phong cách :&nbsp;&nbsp;Nam tính, gợi cảm, thu hút.</p>\r\n\r\n<p>Hương đặc trưng</p>\r\n\r\n<p style=\"margin-left:18.0pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hương đầu: Cây bạc hà, Táo xanh, Quả chanh vàng.</p>\r\n\r\n<p style=\"margin-left:18.0pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hương giữa: Đậu Tonka, Hoa phong lữ, Hương Ambroxan.</p>\r\n\r\n<p style=\"margin-left:18.0pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hương cuối: Hương Va ni Madagascar, Cỏ hương bài, Rêu sồi, Gỗ tuyết tùng Virginia 2, Gỗ tuyết tùng Atlas.</p>\r\n\r\n<p>Vera Wang&nbsp;là một hãng&nbsp;thời trang nước Mỹ nổi tiếng. Chai nước hoa đầu tiên của hãng&nbsp;Vera Wang&nbsp;được ra mắt vào năm 2002 và hãng có hơn 20 chai nước hoa tính tới thời điểm hiện tại.&nbsp;Versace&nbsp;đã tung ra một loại nước hoa mới dành cho nam giới mang tên là&nbsp;Eros, được &nbsp;lấy cảm hứng và kết nối sâu sắc với thần thoại Hy Lạp. Mục đích của dòng nước hoa này là khơi gợi và thể hiện sự mạnh mẽ và đam mê. Nước hoa được đặt theo tên của vị thần tình yêu và cũng là con của vị thần Aphrodite là&nbsp;Eros. Eros&nbsp;được sáng tạo bởi Aurelen Guichard</p>\r\n\r\n<p>Eros&nbsp;thể hiện sự mạnh mẽ nam tính thông qua sự kết hợp tinh tế của hương lá bạc hà tươi, vỏ chanh và táo xanh. Hương giữa&nbsp;gây nghiện bởi sự pha trộn của một số thành phần hương hoa phương Đông hấp dẫn như đậu tonka, hổ phách, hoa phong lữ , vani cùng với một chút thành phần hương đặc trưng của hương gỗ như gỗ tuyết tùng từ Atlas và Virginia. Trong khi ở lớp hương cuối hương hoa cỏ lau và rêu sồi làm tăng thêm sự quyến rũ, tinh tế và đam mê cho phái mạnh.</p>\r\n\r\n<p>Với thiết kế màu xanh ngọc đầy ấn tượng, chai nước hoa mang đến sự tươi mát và gợi cảm. Hình dáng của chai nước hoa như một mê cung, như muốn nhấn mạnh lên sự bí ấn của nó.&nbsp;Versace Eros&nbsp;là mùi thơm dành cho người đàn ông mạnh mẽ, là người làm chủ được bản thân và luôn đứng ra đấu tranh bảo vệ ý tượng và mục đích của mình</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '00018337'),
(123, 'vn', 'N;', '', '', NULL, 'BVL – AQVA AMARA  /// 불가리 아쿠아 아마라 (EDT)★테스터★100ml (뚜껑일체형)', '', '<p>Nhóm nước hoa:&nbsp;Hương gỗ biển</p>\r\n\r\n<p>Giới tính: Nam</p>\r\n\r\n<p>Độ tuổi khuyên dùng:&nbsp;Trên 25</p>\r\n\r\n<p>Năm ra mắt:&nbsp;2014</p>\r\n\r\n<p>Nồng độ:&nbsp;EDT</p>\r\n\r\n<p>Nhà pha chế:&nbsp;Jacques Cavallier</p>\r\n\r\n<p>Độ lưu hương:&nbsp;Lâu - 7 giờ đến 12 giờ</p>\r\n\r\n<p>Độ toả hương:&nbsp;Xa - Toả hương trong vòng bán kính 2 mét</p>\r\n\r\n<p>Thời điểm khuyên dùng:&nbsp;Ngày, Đêm, Xuân, Hạ</p>\r\n\r\n<p>Phong cách:&nbsp;Sang trọng, Nam tính, Tự tin</p>\r\n\r\n<p style=\"margin-left:18.0pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hương Đầu:&nbsp;Quả quýt hồng Sicili</p>\r\n\r\n<p style=\"margin-left:18.0pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hương giữa:&nbsp;Hoa cam Neroli, Hương của nước</p>\r\n\r\n<p style=\"margin-left:18.0pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hương cuối:&nbsp;Trầm hương, Lá cây hoắc hương Indo</p>\r\n\r\n<p>Mùi hương nam tính, gợi cảm mang lại cảm giác tươi mát và sang trọng vô cùng hòa quyện với mùi hương thuộc nhóm hương gỗ biển dành cho phái mạnh vô cùng thu hút. Mẫu thiết kế chai độc đáo và tiện với việc mang theo bên mình. Độ lưu hương lâu cũng là điểm mạnh của chai nước hoa này.</p>\r\n\r\n<p>Tổng quan:&nbsp;Được ra mắt vào năm 2004, sản phẩm nước hoa dành riêng cho nam giới với tên gọi Aqva Amara của thương hiệu Bvlgari đã tạo nên một bước ngoặt mới trong thế giới các loại nước hoa mùi vị biển. Chuyên gia Jacques Cavallier đã mang đến những nguyện liệu sang trọng và đẳng cấp để làm nên một Aqva Amara nổi bật nhưng vẫn lưu giữ được nét cá tính riêng của vùng đất Địa Trung Hải đầy hấp dẫn.</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000183003'),
(124, 'vn', 'N;', '', '', NULL, 'BVLGARI Pour Homme /// 불가리 뿌르옴므 (EDT)★테스터★100ml (뚜껑없음)', '', '', '', '', '', '', '0', NULL, NULL, NULL, '00018305'),
(125, 'vn', 'N;', '', '', NULL, 'Versace Eros Mini ///  베르사체 에로스 맨 (EDT) ★미니어쳐★ 5ml', '', '', '', '', '', '0', '150000', NULL, NULL, NULL, '00018306'),
(126, 'vn', 'N;', '', '', NULL, '212 Vip ///  캐롤리나 헤레라 212 VIP(브이아이피) 우먼 (EDP) 50ml', '', '<div style=\"margin-left:-18.0pt;\">\r\n<p style=\"margin-left:18pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Giới tính:Nữ</p>\r\n\r\n<p style=\"margin-left:18pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Xuất xứ:Mỹ</p>\r\n\r\n<p style=\"margin-left:18pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nồng độ:Eau de Parfum</p>\r\n\r\n<p style=\"margin-left:18pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phát hành:2010</p>\r\n\r\n<p style=\"margin-left:18pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nhà pha chế:Alberto Morillas</p>\r\n\r\n<p style=\"margin-left:18pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nhóm hương:Hương va-ni phương đông - Oriental Vanilla</p>\r\n\r\n<p style=\"margin-left:18pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phong cách:Trẻ trung, quyến rũ, nữ tính</p>\r\n</div>\r\n\r\n<ul>\r\n	<li><strong>Hương đặc trưng</strong></li>\r\n	<li>Hương đầu: Quả chanh dây, Rượu Rum.</li>\r\n	<li>Hương giữa: Xạ hương, Hoa sơn chi.</li>\r\n	<li>Hương cuối: Đậu Tonka, Hương Vani</li>\r\n</ul>\r\n\r\n<p><strong>Carolina Herrera 212 VIP</strong>&nbsp;được ra mắt vào tháng 9 năm 2010, với khẩu hiệu \"Bạn có là một phần&nbsp;của bữa tiệc?\",&nbsp;<strong>212 VIP</strong>&nbsp;thể hiện phong cách của những bạn trẻ thích là trung tâm của sự chú ý. Nguồn cảm hứng được tìm thấy từ các bạn trẻ của thành phố New York, đó là những người trẻ trung, phong cách lôi cuốn, hiện đại và không ngừng sáng tạo, luôn luôn sẵn sàng cho bất cứ cuộc vui nào.Trên tất cả đó, chính là cảm hứng được tìm thấy giữa các thanh niên New York - những người trẻ, phong cách và sáng tạo, luôn sẵn sàng để vui và tận hưởng niềm vui.</p>\r\n\r\n<p><strong>212 VIP</strong>&nbsp;thật sự hấp dẫn và độc quyền ngay trong chính các thành phần của nó. Lấy cảm hứng từ cuộc sống năng động của đô thị New York, thành phố không bao giờ ngủ. Hương thơm đầy tươi mát, quyến rũ của rượu rum và quả lạc tiên ở lớp hương đầu, dẫn dắt bạn đến với lớp hương giữa với hương thơm ấm áp của xạ hương và hoa dành dành. Lớp hương cuối nhẹ nhàng hương vani và hương đậu tonka&nbsp;ngon ngọt.</p>\r\n\r\n<p>212 chai VIP&nbsp;là biểu tượng cho niềm đam mê, khát khao cháy bỏng, với sắc vàng rực rỡ, tinh tế và nữ tính, được thiết kế với nắp từ tính dễ sử dụng. Nước hoa&nbsp;212 Vip&nbsp;của nhãn hiệu Carolina Herrera, dành cho các bạn trẻ năng động, nhưng không kém phần tinh tế.&nbsp;212 Vip&nbsp;sẽ làm gợi lên những niềm vui mới, với vẻ sang trọng và hoạt bát sẽ góp phần làm khơi gợi tinh thần trẻ trung của bạn.</p>\r\n', '', '', '', '0', '0', NULL, NULL, NULL, '00018307'),
(127, 'vn', 'N;', '', '', NULL, 'Versace Bright Crystal  /// 베르사체 브라이트 크리스탈 (EDT) ★테스터★ 90ml (뚜껑있음)', '', '<p style=\"margin-left:18.0pt\">Nhãn hiệu:&nbsp;Versace</p>\r\n\r\n<p style=\"margin-left:18.0pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Giới tính:&nbsp;Nữ</p>\r\n\r\n<p style=\"margin-left:18.0pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Xuất xứ:&nbsp;Ý</p>\r\n\r\n<p style=\"margin-left:18.0pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nồng độ:&nbsp;Eau de Toilette</p>\r\n\r\n<p style=\"margin-left:18.0pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Phát hành:&nbsp;2006</p>\r\n\r\n<p style=\"margin-left:18.0pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nhà pha chế:&nbsp;Alberto Morillas</p>\r\n\r\n<p style=\"margin-left:18.0pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nhóm hương:&nbsp;Hương Hoa cỏ Trái cây - Floral Fruity</p>\r\n\r\n<p style=\"margin-left:18.0pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Phong cách:&nbsp;Nữ tính, gần gũi, năng động.</p>\r\n\r\n<p style=\"margin-left:18.0pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hương đặc trưng</p>\r\n\r\n<p style=\"margin-left:18.0pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hương đầu: Quả Yuzu, Quả lựu, Hương nước.</p>\r\n\r\n<p style=\"margin-left:18.0pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hương giữa: Hoa sen, Hoa mộc lan, Hoa mẫu đơn.</p>\r\n\r\n<p style=\"margin-left:18.0pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hương cuối: Xạ hương, Gỗ gụ, Hổ phách.</p>\r\n\r\n<p>Lấy cảm hứng từ sự kết hợp các hương hoa yêu thích của dòng&nbsp;Donatella Versace’s, chai nước hoa&nbsp;Bright Crystal&nbsp;mang đến một mùi hương tươi mát và sảng khoái với sự kết hợp hài hòa của các thành phần hương như hương quýt nhật yuzu, hương hoa mộc lan, hoa sen và hoa mẫu đơn, bên cạnh đó còn có thành phần hương ấm áp của xạ hương và cổ phách. Chai nước hoa này được tại ra bởi Alberto Morillas vào năm 2006.</p>\r\n\r\n<p>Bright Crystal Absolu&nbsp;đem đến một&nbsp;khởi đầu khá tươi mát với hỗn hợp trái thanh yên và lưu đông lạnh. Tiếp đến, hoa mẫu đơn, hoa linh lan, hoa sen và trái mâm xôi dần được đưa vào cuộc chơi. Khi dần kết thúc, hỗn hợp gỗ mahoganu, hổ phách thực vật và xạ hương trắng cùng hòa quyện, mang tới những&nbsp;trải nghiệm đầy ấm áp và quyến rũ.</p>\r\n\r\n<p>Mẫu chai được thiết kế với tông màu hồng trong suốt cùng những đường nét đầy tinh tế, gợi lên nét gợi cảm và ngọt ngào giống như mùi hương. Một&nbsp;sự sáng tạo tuyệt vời dành riêng cho phái đẹp đến từ biểu tượng thời trang đương đại – Ngài Gianni Versace.&nbsp;Bright Crystal&nbsp;mang đến&nbsp;mùi hương cực kỳ gợi cảm và thu hút, và chắc chắn sẽ không bao giờ phải làm bạn thất vọng.&nbsp;Chai nước hoa sẽ là một món quà tuyệt vời và tinh tế vì hương thơm tươi mát, sảng khoái, có chút cổ điển pha lẫn bí ẩn mà chính bạn có thể “tự thưởng” cho bản thân mình.</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '00018308'),
(128, 'vn', 'N;', '', '', NULL, 'VERSACE Bright Crystal Absolu EDP /// 베르사체 브라이트 크리스탈 앱솔루 ★테스터★ 90ml (뚜껑있음)', '', '<p>Bright Crystal Absolu&nbsp;được thiết kế với chai thủy tinh sáng sang trọng hòa lẫn tông hồng tươi sáng nhưng không kém phần mê hoặc.</p>\r\n\r\n<p>Hình ảnh cho chiến dịch quảng cáo được chụp bởi Mario Testino, và khuôn mặt của phiên bản mới này là Candice Swanepoel, đã được trình bày trên một chiếc ghế sofa sang trọng trong trang phục dạ hội lấp lánh trên tay cầm một chai nước hoa Versace mới.</p>\r\n\r\n<p>THÔNG TIN CHI TIẾT</p>\r\n\r\n<p>Nhóm hương: Sản phẩm thuộc nhóm hương hoa cỏ.</p>\r\n\r\n<p>Phong cách: Hiện đại và sang trọng.</p>\r\n\r\n<p>Các lớp hương:</p>\r\n\r\n<p style=\"margin-left:18.0pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lớp hương đầu: Yuzu, lựu.</p>\r\n\r\n<p style=\"margin-left:18.0pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lớp hương giữa: Mâm xôi, hoa mẫu đơn, hoa mộc lan, hoa sen.</p>\r\n\r\n<p style=\"margin-left:18.0pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lớp hương cuối: Hổ phách, xạ hương.</p>\r\n\r\n<p>Cách dùng</p>\r\n\r\n<p>Chấm sản phẩm lên những vùng da có nhiều mạch máu như gáy, sau tai, cổ tay. Có thể xịt ra khoảng không trước mặt và bước tới trước để mùi hương tỏa đều và lưu lại lâu hơn. Chú ý không sử dụng quá nhiều.</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '00018310'),
(129, 'vn', 'N;', '', '', NULL, 'Versace Eros Pour Femme Mini /// 베르사체 에로스 뿌르팜므 ★EDP★미니어쳐★ 5ml', '', '', '', '', '', '', '180000', NULL, NULL, NULL, '00018311'),
(130, 'vn', 'N;', '', '', NULL, 'Versace Eros Pour Femme  /// 베르사체 에로스 뿌르팜므 ★EDP★테스터★ 100ml (뚜껑있음)', '', '', '', '', '', '', '0', NULL, NULL, NULL, '00018312'),
(131, 'vn', 'N;', '', '', NULL, 'Versace Vanitas Mini  /// 베르사체 바니타스 (EDT)★미니어쳐★ 4.5ml', '', '', '', '', '', '', '150000', NULL, NULL, NULL, '00018339'),
(132, 'vn', 'N;', '', '', NULL, 'Burberry  Women  /// 버버리 클래식 우먼 (EDP) ★테스터★ 100ml (뚜껑없음)', '', '', '', '', '', '', '0', NULL, NULL, NULL, '00018313'),
(133, 'vn', 'N;', '', '', NULL, 'BVL Jasmin Noir /// 불가리 몽 자스민 느와 로 엑스퀴즈 (EDT)★테스터★75ml (뚜껑있음)', '', '', '', '', '', '', '0', NULL, NULL, NULL, '00018314'),
(134, 'vn', 'N;', '', '', NULL, 'Versace Yellow Diamond /// 베르사체 옐로우 다이아몬드 (EDT)★테스터★90ml (뚜껑있음)', '', '', '', '', '', '', '0', NULL, NULL, NULL, '00018315'),
(135, 'vn', 'N;', '', '', NULL, 'Versace Vanitas // 베르사체 바니타스 (EDT)★테스터★ 100ml (뚜껑있음)', '', '', '', '', '', '', '0', NULL, NULL, NULL, '00018316'),
(136, 'vn', 'N;', '', '', NULL, 'Paco Rabanne Mini /// 파코라반 레이디 밀리언 (EDP) ★미니어쳐★ 5ml', '', '', '', '', '', '', '180000', NULL, NULL, NULL, '00018317'),
(137, 'vn', 'N;', '', '', NULL, 'Lavin Marry Me Mini  /// 랑방 메리미 (EDP)★미니어쳐★ 4.5ml', '', '', '', '', '', '', '170000', NULL, NULL, NULL, '00018318'),
(138, 'vn', 'N;', '', '', NULL, 'Versace Yellow Diamond Mini   ///베르사체 옐로우 다이아몬드 (EDT)★미니어쳐★ 5ml', '', '', '', '', '', '', '170000', NULL, NULL, NULL, '00018319');
INSERT INTO `bakcodt_content_ln` (`id`, `ln`, `ln_fields_extra`, `ln_icon`, `ln_image`, `sef_url`, `name`, `intro`, `content`, `title`, `desc`, `keyword`, `priceSale`, `priceBuy`, `status`, `mobilePhone`, `link`, `codePro`) VALUES
(139, 'vn', 'N;', '', '', NULL, 'Phấn Nén Gold Collagen  SPF 50', '', '<p>GOLD COLLAGEN AMPOULE TWO-WAY PACT là phấn nền che khuyết điểm và chăm sóc làn da lão hóa.</p>\r\n\r\n<p>Bổ&nbsp;sung 10% tinh chất&nbsp;dưỡng&nbsp;da&nbsp;từ collagen và vàng giúp làm sáng, cải thiện nếp nhăn và làm săn chắc da.</p>\r\n\r\n<p>Khả&nbsp;năng&nbsp;che&nbsp;khuyết điểm&nbsp;vượt&nbsp;trội&nbsp;mang lại lớp nền trang điểm hoàn hảo nhưng vẫn nhẹ nhàng, tự nhiên.</p>\r\n\r\n<p>Chống&nbsp;nắng&nbsp;bảo&nbsp;vệ&nbsp;da&nbsp;SPF30+ PA+++ khỏi tác hại của ánh nắng mặt trời</p>\r\n\r\n<p>Công thức cải tiến giúp mang đến hạt phấn siêu mịn, có độ bám và che phủ tốt nhưng không hề gây bí da, tạo lên lớp màng phấn mỏng nhẹ. Hãy cùng cảm nhận sản phẩm phấn nền mới với hiệu quả căng mượt và mịn màng.</p>\r\n\r\n<p><strong>Thành phần</strong></p>\r\n\r\n<p><strong>Tinh chất vàng:</strong>&nbsp;Thúc đẩy tái tạo tế bào da, chống lão hóa. Cải thiện sức sống cho làn da thiếu dưỡng chất, làm sáng mịn da.</p>\r\n\r\n<p><strong>Tinh chất collagen:</strong>&nbsp;Bổ sung và thúc đẩy sự tổng hợp collagen giúp da săn chắc, mịn màng. Chống lão hóa, cải thiện nếp nhăn.</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng</strong></p>\r\n\r\n<p>Dùng bông mút dặm nhẹ phấn khắp bề mặt da.</p>\r\n\r\n<p>TFS GOLD COLLAGEN AMPOULE TWO-WAY PACT SPF30 PA+++ phù hợp cho các bạn trang điểm nhẹ khi đến văn phòng hàng ngày hoặc trong các bữa tiệc cần trang điểm chuyên nghiệp</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"/data/upload/image(27).png\" style=\"height:591px; width:605px\" /></p>\r\n', '', '', '', '', '390000', NULL, NULL, NULL, '0001803100'),
(140, 'vn', 'N;', '', '', NULL, 'Phấn Nén Bright  spf50', '', '<p>Phấn phủ khoáng giúp nâng màu da trắng sáng suốt nhiều giờ, đồng thời hỗ trợ hút nhờn để duy trì lớp phấn sáng mịn lâu dài. Lớp phấn dàn trải mỏng nhẹ, tự nhiên vào ráo mịn trên da.<br />\r\n&nbsp;</p>\r\n\r\n<p>Skin Brightening UV Pact SPF 50 PA+++ TheFaceShop giúp&nbsp;<strong>kiềm dầu, cân bằng và nâng màu da trắng sáng suốt nhiều giờ</strong><strong>.</strong><br />\r\n<strong>Thành phần</strong><br />\r\n<br />\r\nThành phần chiết xuất từ quả cloudberry giàu chất chống oxy hóa giúp bổ sung dưỡng chất cho làn da và duy trì độ sáng lâu dài cho lớp nền trang điểm</p>\r\n\r\n<p>Phấn phủ nén Skin Brightening UV Pact SPF 50 PA+++&nbsp;là sản phẩm phù hợp với những bạn&nbsp;da ít khuyết điểm, thích&nbsp;trang điểm&nbsp;tự nhiên</p>\r\n\r\n<p><br />\r\nTích hợp 3 công nghệ hàng đầu</p>\r\n\r\n<p>–&nbsp;<strong>Brightening</strong>: hạt phấn bắt sáng làm trắng da.</p>\r\n\r\n<p>–&nbsp;<strong>Long-wearing:</strong>&nbsp;giữ lớp phấn lâu trôi suốt hàng giờ đồng hồ hoạt động.</p>\r\n\r\n<p>–&nbsp;<strong>Smart Seed</strong>: công nghệ che khuyết điểm và cân bằng màu da, làm sáng da độc đáo từ TFS.</p>\r\n\r\n<p><br />\r\n<strong>Hướng dẫn sử dụng</strong></p>\r\n\r\n<p>Sau các bước dưỡng và lớp nền, dùng bông phấn kèm theo sản phẩm tán nhẹ đều khắp mặt.</p>\r\n\r\n<div>\r\n<p>Có thể xịt khoáng sau khi dùng phấn để thêm phần mịn màng hơn.</p>\r\n\r\n<p><img src=\"/data/upload/image(28).png\" style=\"height:548px; width:605px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n', '', '', '', '', '300000', NULL, NULL, NULL, '000183101'),
(141, 'vn', 'N;', '', '', NULL, 'Kem Nền Đa Năng Oil Control SPF 50 ', '', '<p>Mềm mịn với những hạt phấn nước siêu mịn theo miếng mút như tưới mát làn da mỗi khi sử dụng.&nbsp;Đó chính là ma thuật điểm trang - MIRACLE FINISH OIL CONTROL WATER CUSHION.- Giữ ẩm rất tốt và khả năng kiềm dầu tối ưu</p>\r\n\r\n<p>- Hạn chế tình trạng bóng nhờn<br />\r\n- Phấn siêu mềm và mịn<br />\r\n- Khả năng chống trôi khi tiếp xúc với nước rất cao<br />\r\n- Độ chống nắng đạt tới Độ SPF50+PA+++<br />\r\nSau sử dụng MIRACLE FINISH OIL CONTROL WATER CUSHION, nhiều giờ làm việc trong môi trường điều hoà, làn da của bạn cũng không hề thấy khô, và đặc biệt tiết rất ít dầu. Sản phẩm có hai màu chính là V201 (tone trắng sáng) và V203 (tone tự nhiên).&nbsp;</p>\r\n\r\n<p><strong>Thành phần</strong> : BLOOMING ROSE POWDER: Cấu trúc bột phấn tựa cánh hoa hồng giúp hút nhờn và mang đến hiệu ứng mờ mịn da<br />\r\nNƯỚC TINH KHIẾT TASMANIA NƯỚC OXY TINH KHIẾT và NƯỚC OXY TINH KHIẾT: Nguồn nước sạch nhất trên thế giới được sử dụng vào thành phần của sản phẩm, hạn chế tối đa tình&nbsp; trạng thiếu oxy cho da có thể dẫn đến giảm khả năng tái tạo tế bào và làm suy yếu các hoạt động miễn dịch&nbsp;<br />\r\n<strong>Hướng dẫn sử dụng</strong> : Dùng bông ấn lên miếng đệm để lấy lượng kem vừa đủ, dùng bông mút dàn trải kem đều khắp bề mặt da. Đậy kín nắp sau khi sử dụng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"/data/upload/image(29).png\" style=\"height:528px; width:605px\" /></p>\r\n', '', '', '', '', '340000', NULL, NULL, NULL, '000183012'),
(142, 'vn', 'N;', '', '', NULL, 'CC  Aura Color Control Cream  SPF30', '', '<p>Làm sạch da mặt, thoa một lượng vừa đủ lên các vùng trên khuôn mặt và vỗ nhẹ cho dưỡng chất thẩm thấu vào da và giúp che đi khuyết điểm trên da, mang lại một làn da tự nhiên và mịn màng.</p>\r\n\r\n<p>Có thể sử dụng thêm phấn phủ để lớp che phủ hoàn hảo và mịn đẹp nhất khi trang điểm đi làm hay đi tiệc.</p>\r\n\r\n<p>Khuyến cáo</p>\r\n\r\n<p>Để xa tầm tay trẻ em</p>\r\n\r\n<p>Không lưu trữ ở&nbsp;những nơi nóng hoặc lạnh và ở những nơi tiếp xúc trực tiếp với ánh sáng mặt trời</p>\r\n\r\n<p>Đóng nắp sau khi sử dụng</p>\r\n\r\n<p>Ngừng sử dụng hoặc hỏi bác sĩ da liễu nếu xuất xuất hiện các hiện tượng sau: đốm đỏ, sưng, ngứa, kích ứng.</p>\r\n\r\n<p>Không sử dụng khi có vết thương hở.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '390000', NULL, NULL, NULL, '000183013'),
(143, 'vn', 'N;', '', '', NULL, 'Phấn Nước Anti- Darkening Cushion  SPF 50', '', '<p>Để đáp ứng nhu cầu làm đẹp của các nàng, THE<strong>FACE</strong>SHOP luôn không ngừng sáng tạo để cho ra đời các sản phẩm làm đẹp mới, đáp ứng mọi nhu cầu của các nàng và giúp các nàng xinh đẹp và tự tin hơn.</p>\r\n\r\n<p>Sản phẩm trang điểm nền đa năng mới nhất&nbsp;THE FACE SHOP ANTI-DARKENING CUSHION&nbsp;giúp duy trì lớp nền trang điểm tươi sáng tự nhiên suốt 12 giờ.</p>\r\n\r\n<p>Công thức bột phấn HD với hạt phấn siêu nhẹ và ôm khít vào da, giúp tăng độ bám phấn trên da, tạo độ che phủ hiệu quả các đốm nâu.</p>\r\n\r\n<p>Bảo vệ da khỏi tác hại của ánh nắng mặt trời với SPF50</p>\r\n\r\n<p>Màu sắc đa dạng, phù hợp với nhiều sắc diện da khác nhau, đáp ứng mọi nhu cầu của phái đẹp</p>\r\n\r\n<p><strong>Thành phần</strong></p>\r\n\r\n<p>Tinh chất lá bạc hà chanh, hoa cúc chamomile và chiết xuất vỏ quýt giúp dịu mát da, duy trì độ tươi sáng cho da, tránh xỉn màu.</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng</strong></p>\r\n\r\n<p>Sử dụng sau bước Makeup Base/ Primer. Dùng bông ấn lên miếng đệm để lấy lượng kem vửa đủ, dùng bông mút dàn trải kem đều khắp bề mặt da.</p>\r\n\r\n<p>Đậy nắp kín sau khi sử dụng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"/data/upload/image(30).png\" style=\"height:566px; width:606px\" /></p>\r\n', '', '', '', '', '335000', NULL, NULL, NULL, '000183014'),
(144, 'vn', 'N;', '', '', NULL, 'BB Water Proof SPF 50', '', '<p>Kem nền đa năng WATER PROOF BB SPF50+PA++&nbsp;là&nbsp;kem trang điểm đa chức năng với khả năng chống trôi khi tiếp xúc với nước cùng khả năng chống nắng tối ưu với độ&nbsp;<a href=\"https://thefaceshop.com.vn/blogs/goc-lam-dep/1000090023-hieu-ve-chong-nang\" target=\"_blank\">SPF</a>&nbsp;lên đến 50+ giúp lớp nền tươi sáng suốt cả ngày.</p>\r\n\r\n<p><strong>Công dụng</strong><br />\r\nKem nền đa năng WATER PROOF BB SPF50+PA++&nbsp;của THEFACESHOP là dòng BB Cream chống thấm nước, vừa có tác dụng trang điểm, vừa có tác dụng chống nắng cao với&nbsp;<a href=\"https://thefaceshop.com.vn/blogs/goc-lam-dep/1000090023-hieu-ve-chong-nang\" target=\"_blank\">SPF50/PA+++</a>, tạo lớp màng bảo vệ bạn khỏi tác hại của tia UV trong ánh nắng mặt trời.<br />\r\nSản phẩm rất thích hợp sử dụng khi bạn đi bơi, đi biển, hay ra mồ hôi trên da hoặc phải hoạt động nhiều ngoài trời.<br />\r\n<strong>Hướng dẫn sử dụng</strong></p>\r\n\r\n<p style=\"margin-left:38.0pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lắc đều trước khi sử dụng.</p>\r\n\r\n<p style=\"margin-left:38.0pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Làm sạch da mặt, thoa một lượng vừa đủ lên các vùng trên khuôn mặt và vỗ nhẹ cho dưỡng chất thẩm thấu vào da. Nên thoa thêm 1 lớp nữa cho những mảng da bị khuyết điểm, mang lại một làn da tự nhiên và mịn màng.</p>\r\n\r\n<p>Có thể sử dụng thêm phấn phủ để lớp che phủ hoàn hảo và mịn đẹp nhất.</p>\r\n\r\n<p>Phấn phủ khoáng giúp nâng màu da trắng sáng suốt nhiều giờ, đồng thời hỗ trợ hút nhờn để duy trì lớp phấn sáng mịn lâu dài. Lớp phấn dàn trải mỏng nhẹ, tự nhiên vào ráo mịn trên da.</p>\r\n\r\n<p>Skin Brightening UV Pact SPF 50 PA+++ TheFaceShop giúp&nbsp;kiềm dầu, cân bằng và nâng màu da trắng sáng suốt nhiều giờ<strong>.</strong><br />\r\n<strong>Thành phần</strong>: Thành phần chiết xuất từ quả cloudberry giàu chất chống oxy hóa giúp bổ sung dưỡng chất cho làn da và duy trì độ sáng lâu dài cho lớp nền trang điểm</p>\r\n\r\n<p>Phấn phủ nén Skin Brightening UV Pact SPF 50 PA+++&nbsp;là sản phẩm phù hợp với những bạn&nbsp;da ít khuyết điểm, thích&nbsp;trang điểm&nbsp;tự nhiên<br />\r\nTích hợp 3 công nghệ hàng đầu</p>\r\n\r\n<p>–&nbsp;<strong>Brightening</strong>: hạt phấn bắt sáng làm trắng da.</p>\r\n\r\n<p>–&nbsp;<strong>Long-wearing:</strong>&nbsp;giữ lớp phấn lâu trôi suốt hàng giờ đồng hồ hoạt động.</p>\r\n\r\n<p>–&nbsp;<strong>Smart Seed</strong>: công nghệ che khuyết điểm và cân bằng màu da, làm sáng da độc đáo từ TFS.<br />\r\n<strong>Hướng dẫn sử dụng</strong> : Sau các bước dưỡng và lớp nền, dùng bông phấn kèm theo sản phẩm tán nhẹ đều khắp mặt.</p>\r\n\r\n<p>Có thể xịt khoáng sau khi dùng phấn để thêm phần mịn màng hơn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '290000', NULL, NULL, NULL, '00018316'),
(145, 'vn', 'N;', '', '', NULL, 'BB Cream Cover SPF 50 ', '', '<p>Một lớp nền trang điểm tự nhiên luôn dẫn đầu xu hướng &amp; được các cô nàng đặc biệt ưu ái ưa chuộng - nhất là dưới tiết trời oi ả của cái nắng Việt Nam sẽ nhanh chóng làm da mặt bạn bị đổ nhờn, bóng dầu dẫn đến sự loang lổ trên gương mặt...</p>\r\n\r\n<p>Nhưng! Đã đến lúc xóa bỏ nỗi sợ hãi \"khủng khiếp\" ấy đi và hãy tự tin với&nbsp;<strong>Kem nền đa năng</strong>&nbsp;<strong>MAGIC COVER BB CREAM<a href=\"https://thefaceshop.com.vn/blogs/goc-lam-dep/1000090023-hieu-ve-chong-nang\">SPF20 PA++&nbsp;</a></strong>;&nbsp;một trong những lựa chọn hàng đầu hiện nay cho sản phẩm trang điểm nền, những khuyết điểm đáng ghét như thâm do mụn, nám hay tàn nhang sẽ không còn là vấn đề nữa nhé</p>\r\n\r\n<p><img src=\"/data/upload/image(31).png\" style=\"height:489px; width:551px\" /></p>\r\n', '', '', '', '', '315000', NULL, NULL, NULL, '00018317'),
(146, 'vn', 'N;', '', '', NULL, 'BB Power Cream SPF 37 20gr ', '', '<p>Sở hữu làn da trắng sáng, mịn màng luôn là niềm ước mơ của mọi cô gái. Nhưng không phải ai sinh ra, cũng may mắn có được làn da không tỳ vết ấy. Đôi lúc, kể cả khi bạn đã trang điểm hoàn chỉnh với đầy đủ các bước nền cơ bản cũng&nbsp;không thể che hết những khuyết điểm không mong muốn. Thế nhưng,&nbsp;“phù thủy”&nbsp;<a href=\"https://thefaceshop.com.vn/products/kem-nen-da-nang-power-perfection-bb-cream-spf37-pa\"><strong>Kem nền đa năng POWER PERFECTION BB CREAM SPF37 PA++</strong></a>&nbsp;có thể giúp bạn thực hiện điều này.</p>\r\n\r\n<p><strong>Công dụng</strong></p>\r\n\r\n<p><strong><a href=\"https://thefaceshop.com.vn/products/kem-nen-da-nang-power-perfection-bb-cream-spf37-pa\">Kem nền đa năng POWER PERFECTION BB CREAM SPF37 PA++</a></strong>&nbsp;là sản phẩm trang điểm cao cấp của thương hiệu<a href=\"https://thefaceshop.com.vn/\">THEFACESHOP</a>&nbsp;- Hàn Quốc. Chỉ cần nhắc đến thương hiệu là các nàng đều háo hức, mong chờ vì đã có quá nhiều sản phẩm của THEFACESHOP đến tay người tiêu dùng và chưa một lần làm họ thất vọng.</p>\r\n\r\n<p>Với&nbsp;<strong>Kem nền đa năng POWER PERFECTION BB CREAM SPF37 PA++</strong>,&nbsp;được xem như liệu pháp tổng hợp cho làn da như:</p>\r\n\r\n<p>- Kem trang điểm 3 trong 1 (<em>chống nhăn da, làm trắng, chống nắng</em>) sẽ mang đến lớp phủ hoàn hảo.</p>\r\n\r\n<p>- Lớp trang điểm đẹp hơn (<em>lớp phủ hoàn mỹ + độ bám tốt + lâu trôi</em>) tạo cảm giác mịn màng, không bóng nhờn hay dày phấn.</p>\r\n\r\n<p>Đặc biệt, Kem nền đa năng còn chứa lớp bột phủ trông giống như các tế bào da tạo nên độ bám tốt cho da bạn cảm giác thoải mái với lớp trang điểm mịn màng lâu trôi.<br />\r\nVới kết cấu thoáng khí kỳ diệu: Cấu trúc nhẹ nhàng như không khí, nhanh chóng thẩm thấu vào da ngay sau khi thoa lên da, vì thế bạn sẽ không phải lo lắng bận tâm cho làn da bị bít tắc lỗ chân lông khi trang điểm nhé.<br />\r\nVà điều quan trọng giúp các chị em Phụ Nữ yên tâm &amp; tự tin làm đẹp với sản phẩm&nbsp;<strong>Kem nền đa năng POWER PERFECTION BB CREAM SPF37 PA++</strong>&nbsp;vì đã được kiểm nghiệm lâm sàng (Thí nghiệm lâm sàng kiểm tra mức độ săn chắc, tính giữ ẩm, độ phủ, và khả năng lâu trôi của sản phẩm)<br />\r\n<strong>Thành phần</strong><br />\r\nThành phần chính tạo nên nét độ đáo cho sản phẩm:<br />\r\n* Omega 3 - Làm mềm da, nhẹ nhàng hồi phục da và giữ ẩm da.<br />\r\n* Phức hợp Vita - Thúc đẩy sản sinh Collagen, chống oxy hóa.<br />\r\n<strong>Hướng dẫn sử dụng</strong><br />\r\nSử dụng sau bước kem chống nắng. Lấy lượng kem vừa đủ và dàn trải đều khắp bề mặt da.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '245000', NULL, NULL, NULL, '00018318'),
(147, 'vn', 'N;', '', '', NULL, 'BB Power Cream SPF 37 PA +++  40gr ', '', '<p>Sở hữu làn da trắng sáng, mịn màng luôn là niềm ước mơ của mọi cô gái. Nhưng không phải ai sinh ra, cũng may mắn có được làn da không tỳ vết ấy. Đôi lúc, kể cả khi bạn đã trang điểm hoàn chỉnh với đầy đủ các bước nền cơ bản cũng&nbsp;không thể che hết những khuyết điểm không mong muốn. Thế nhưng,&nbsp;“phù thủy”&nbsp;<a href=\"https://thefaceshop.com.vn/products/kem-nen-da-nang-power-perfection-bb-cream-spf37-pa\"><strong>Kem nền đa năng POWER PERFECTION BB CREAM SPF37 PA++</strong></a>&nbsp;có thể giúp bạn thực hiện điều này.</p>\r\n\r\n<p><strong>Công dụng</strong></p>\r\n\r\n<p><strong><a href=\"https://thefaceshop.com.vn/products/kem-nen-da-nang-power-perfection-bb-cream-spf37-pa\">Kem nền đa năng POWER PERFECTION BB CREAM SPF37 PA++</a></strong>&nbsp;là sản phẩm trang điểm cao cấp của thương hiệu<a href=\"https://thefaceshop.com.vn/\">THEFACESHOP</a>&nbsp;- Hàn Quốc. Chỉ cần nhắc đến thương hiệu là các nàng đều háo hức, mong chờ vì đã có quá nhiều sản phẩm của THEFACESHOP đến tay người tiêu dùng và chưa một lần làm họ thất vọng.</p>\r\n\r\n<p>Với&nbsp;<strong>Kem nền đa năng POWER PERFECTION BB CREAM SPF37 PA++</strong>,&nbsp;được xem như liệu pháp tổng hợp cho làn da như:</p>\r\n\r\n<p>- Kem trang điểm 3 trong 1 (<em>chống nhăn da, làm trắng, chống nắng</em>) sẽ mang đến lớp phủ hoàn hảo.</p>\r\n\r\n<p>- Lớp trang điểm đẹp hơn (<em>lớp phủ hoàn mỹ + độ bám tốt + lâu trôi</em>) tạo cảm giác mịn màng, không bóng nhờn hay dày phấn.</p>\r\n\r\n<p>Đặc biệt, Kem nền đa năng còn chứa lớp bột phủ trông giống như các tế bào da tạo nên độ bám tốt cho da bạn cảm giác thoải mái với lớp trang điểm mịn màng lâu trôi.<br />\r\nVới kết cấu thoáng khí kỳ diệu: Cấu trúc nhẹ nhàng như không khí, nhanh chóng thẩm thấu vào da ngay sau khi thoa lên da, vì thế bạn sẽ không phải lo lắng bận tâm cho làn da bị bít tắc lỗ chân lông khi trang điểm nhé.<br />\r\nVà điều quan trọng giúp các chị em Phụ Nữ yên tâm &amp; tự tin làm đẹp với sản phẩm&nbsp;<strong>Kem nền đa năng POWER PERFECTION BB CREAM SPF37 PA++</strong>&nbsp;vì đã được kiểm nghiệm lâm sàng (Thí nghiệm lâm sàng kiểm tra mức độ săn chắc, tính giữ ẩm, độ phủ, và khả năng lâu trôi của sản phẩm)<br />\r\n<strong>Thành phần</strong><br />\r\nThành phần chính tạo nên nét độ đáo cho sản phẩm:<br />\r\n* Omega 3 - Làm mềm da, nhẹ nhàng hồi phục da và giữ ẩm da.<br />\r\n* Phức hợp Vita - Thúc đẩy sản sinh Collagen, chống oxy hóa.<br />\r\n<strong>Hướng dẫn sử dụng</strong><br />\r\nSử dụng sau bước kem chống nắng. Lấy lượng kem vừa đủ và dàn trải đều khắp bề mặt da.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '365000', NULL, NULL, NULL, '00018319'),
(148, 'vn', 'N;', '', '', NULL, 'Kem Dưỡng Da Trắng Da OSHIAREE PST-CellTM Pure White Cream 50gr ', '', '<p>Thông tin sản phẩm</p>\r\n\r\n<p>Xuất Xứ: Hàn Quốc</p>\r\n\r\n<p>Dung lượng: 50ml&nbsp;</p>\r\n\r\n<p>Thành phần: Nước, Caprylic/Capric Triglyceride, Butylene Glycol, Beeswax, Glycerin…</p>\r\n\r\n<p><strong>Công dụng:&nbsp;</strong></p>\r\n\r\n<p><a name=\"m_-3564076160311730430__Hlk509882438\">OSHIAREE PST-CellTM Pure White Cream</a>&nbsp;- kem dưỡng được chiết xuất tế bào gốc đậu xanh cùng các chiết xuất thực vật cung cấp dưỡng chất và độ ẩm thiết yếu cho da, cải thiện làn da sần sùi và thô ráp. Đặc biệt, thành phần Niacinamide trong sản phẩm còn có tác dụng dưỡng trắng da, mang đến làn da tươi sáng, rạng rỡ</p>\r\n\r\n<p><strong>HƯỚNG DẪN SỬ DỤNG</strong><br />\r\nSau khi sử dụng emulsion (sữa dưỡng), thoa đều một lượng kem dưỡng vừa đủ lên toàn bộ mặt và cổ, dùng đầu ngón tay vỗ nhẹ nhàng để tăng độ thẩm thấu.</p>\r\n\r\n<p><strong><u>ĐIỂM ĐẶC BIỆT </u></strong></p>\r\n\r\n<p>Giúp tái cấu trúc sâu tế bào&nbsp;dưới bề mặt da, chống lão hóa.</p>\r\n\r\n<p>Làm trắng mịn và loại bỏ các đốm đen, mụn trứng cá, sẹo và sự đổi màu da.</p>\r\n\r\n<p>Bảo vệ da khỏi dấu hiệu lão hóa, mệt mỏi, rối loạn sắc tố gây ra bởi các yếu tố bên ngoài và tia UV.</p>\r\n\r\n<p>Bảo vệ da chống lại sự biến đổi khí hậu và tia cực tím với độ&nbsp;SPF 20</p>\r\n\r\n<p>Thích hợp cho phái đẹp tuổi từ 18 - 45.</p>\r\n\r\n<p>Thành phần: Tế bào gốc thực vật, Niaciamide.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '320000', NULL, NULL, NULL, '00018320'),
(149, 'vn', 'N;', '', '', NULL, 'Serum Bergamo Luxury Gold Collagen & Caviar  /// 베르가모 럭셔리 골드 콜라겐 골드 캐비어 앰플 4EA', '', '<p>Nguồn dưỡng chất phong phú được chiết xuất từ&nbsp;<strong>trứng cá hồi và collagen</strong>&nbsp;là điều cần thiết cho làn da dầu, nhiều đốm đen, thiếu sức sống và dễ bị tổn thương bởi mụn và các tác nhân kích thích của môi trường.</p>\r\n\r\n<p>Xuất xứ: Hàn Quốc - hãng Bergamo</p>\r\n\r\n<p>-&nbsp;&nbsp;Serum BERGAMO Luxury Gold được tạo thành từ một công thức mới độc đáo với tinh chất collagen, tinh thể vàng và trứng cá tầm nuôi dưỡng và làm trắng da , phục hồi da tổn thương , sẹo do mụn để lại . Ngoài tác dụng dưỡng ẩm và tăng độ đàn hồi cho da, tinh chất collagen còn tái tạo làn da già nua do tuổi tác, làm trẻ hoá làn da. Sau 7 ngày sử dụng, các nàng sẽ thấy 1 làn da mềm mịn, trắng sáng và căng tràn sức sống.</p>\r\n\r\n<p>-&nbsp;&nbsp;Khi thoa tinh chất lên da,&nbsp;các tinh chất này sẽ cơ cấu và cung cấp chất dưỡng ẩm cho da làm cho da mềm mịn, giảm đỏ da, se khít lỗ chân lông, xóa mờ nếp nhăn, nuôi dưỡng và tái tạo lại làn da lão hóa. Phục hồi lại các tế bào da bị hư tổn do điều kiện môi trường như ánh nắng mặt trời, bức xạ tia cực tím, ô nhiễm, căng thẳng ảnh hưởng đến làn da - da khỏe, sáng dần lên và trắng mịn chỉ trong 7&nbsp;ngày.</p>\r\n\r\n<p>* Có 2 loại:</p>\r\n\r\n<p>+&nbsp;&nbsp;Serum Luxury Gold bergamo caviar (&nbsp;chai vàng đậm&nbsp;) : có tác dụng trị mụn cám , mụn đầu đen , se khít lỗ chân lông , dưỡng mịn da , làm da căng bóng .</p>\r\n\r\n<p>+ Serum Luxury Gold bergamo collagen ( chai vàng nhạt ) : bổ sung collagen có tác dụng làm căng da , mịn da , mờ nếp nhăn.</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng</strong></p>\r\n\r\n<p>Sau khi rửa mặt cho 1-3 giọt thoa đều trên mặt và cổ của bạn,sau đó mát xa nhẹ nhàng để tinh chất hấp thu vào sâu bên trong da sau khi làm sạch mặt. Để có kết quả tốt nhất, sử dụng vào buổi sáng và buổi tối,&nbsp;có thể dùng kết hợp với kem dưỡng để giúp tăng sức mạnh của làn da tái sinh,&nbsp;cho bạn nhanh chóng lấy lại được những phẩm chất tốt nhất của da trẻ,&nbsp;ngay lập tức da được biến đổi được mịn màng,&nbsp;chỉ sau 1tuần da được hồi sinh,&nbsp;làn da trắng mịn rõ ràng trẻ hơn.&nbsp;Bảo quản sản phẩm ở môi trường nhiệt độ mát.tránh lưu trữ ở nhiệt độ nóng sau khi đã lưu trữ trong tủ lạnh .</p>\r\n\r\n<p><img src=\"/data/upload/image(32).png\" style=\"height:367px; width:606px\" /></p>\r\n', '', '', '', '', '360000', NULL, NULL, NULL, '00018322'),
(150, 'vn', 'N;', '', '', NULL, 'High Potency Vitamin Ampoule ( Yellow )- High Potence Ampoule (Red)  ///베르가모 캐비어 하이 포텐시 앰플 세트 4EA', '', '<p>Serum BERGAMO Luxury Gold được tạo thành từ một công thức mới độc đáo với tinh chất collagen, tinh thể vàng và trứng cá tầm nuôi dưỡng và làm trắng da , phục hồi da tổn thương , sẹo do mụn để lại . Ngoài tác dụng dưỡng ẩm và tăng độ đàn hồi cho da, tinh chất collagen còn tái tạo làn da già nua do tuổi tác, làm trẻ hoá làn da. Sau 7 ngày sử dụng, các nàng sẽ thấy 1 làn da mềm mịn, trắng sáng và căng tràn sức sống.</p>\r\n\r\n<p>-&nbsp;&nbsp;Khi thoa tinh chất lên da,&nbsp;các tinh chất này sẽ cơ cấu và cung cấp chất dưỡng ẩm cho da làm cho da mềm mịn, giảm đỏ da, se khít lỗ chân lông, xóa mờ nếp nhăn, nuôi dưỡng và tái tạo lại làn da lão hóa. Phục hồi lại các tế bào da bị hư tổn do điều kiện môi trường như ánh nắng mặt trời, bức xạ tia cực tím, ô nhiễm, căng thẳng ảnh hưởng đến làn da - da khỏe, sáng dần lên và trắng mịn chỉ trong 7&nbsp;ngày.</p>\r\n\r\n<p></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p></p>\r\n', '', '', '', '', '360000', NULL, NULL, NULL, '00018323'),
(151, 'vn', 'N;', '', '', NULL, 'Serum bergamo snow white whitening perfection ampoule/ 베르가모 스노우 화이트 비타 화이트닝 앰플 4EA', '', '<p>Serum BERGAMO Luxury Gold được tạo thành từ một công thức mới độc đáo với tinh chất collagen, tinh thể vàng và trứng cá tầm nuôi dưỡng và làm trắng da , phục hồi da tổn thương , sẹo do mụn để lại . Ngoài tác dụng dưỡng ẩm và tăng độ đàn hồi cho da, tinh chất collagen còn tái tạo làn da già nua do tuổi tác, làm trẻ hoá làn da. Sau 7 ngày sử dụng, các nàng sẽ thấy 1 làn da mềm mịn, trắng sáng và căng tràn sức sống.</p>\r\n\r\n<p>-&nbsp;&nbsp;Khi thoa tinh chất lên da,&nbsp;các tinh chất này sẽ cơ cấu và cung cấp chất dưỡng ẩm cho da làm cho da mềm mịn, giảm đỏ da, se khít lỗ chân lông, xóa mờ nếp nhăn, nuôi dưỡng và tái tạo lại làn da lão hóa. Phục hồi lại các tế bào da bị hư tổn do điều kiện môi trường như ánh nắng mặt trời, bức xạ tia cực tím, ô nhiễm, căng thẳng ảnh hưởng đến làn da - da khỏe, sáng dần lên và trắng mịn chỉ trong 7&nbsp;ngày.</p>\r\n\r\n<p><img src=\"/data/upload/image(34).png\" style=\"height:366px; width:605px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"/data/upload/image(36).png\" style=\"height:372px; width:605px\" /></p>\r\n', '', '', '', '', '360000', NULL, NULL, NULL, '00018324'),
(152, 'vn', 'N;', '', '', NULL, 'Kem Dưỡng Trắng Da Bergamo Whitening EX Cream 50gr ', '', '<p>Kem dưỡng da BERGAMO Luxury Gold được tạo thành từ một công thức mới độc đáo với tinh chất collagen, tinh thể vàng và trứng cá tầm nuôi dưỡng và làm trắng da , phục hồi da tổn thương , sẹo do mụn để lại . Ngoài tác dụng dưỡng ẩm và tăng độ đàn hồi cho da, tinh chất collagen còn tái tạo làn da già nua do tuổi tác, làm trẻ hoá làn da. Sau 7 ngày sử dụng, các nàng sẽ thấy 1 làn da mềm mịn, trắng sáng và căng tràn sức sống.</p>\r\n\r\n<p>-&nbsp;&nbsp;Khi thoa tinh chất lên da,&nbsp;các tinh chất này sẽ cơ cấu và cung cấp chất dưỡng ẩm cho da làm cho da mềm mịn, giảm đỏ da, se khít lỗ chân lông, xóa mờ nếp nhăn, nuôi dưỡng và tái tạo lại làn da lão hóa. Phục hồi lại các tế bào da bị hư tổn do điều kiện môi trường như ánh nắng mặt trời, bức xạ tia cực tím, ô nhiễm, căng thẳng ảnh hưởng đến làn da - da khỏe, sáng dần lên và trắng mịn chỉ trong 7&nbsp;ngày.</p>\r\n', '', '', '', '', '170000', NULL, NULL, NULL, '00018325'),
(153, 'vn', 'N;', '', '', NULL, 'Kem trị nám Bergamo Luxury Caviar Wrinkle Care Cream 50gr ', '', '<p>Kem dưỡng da BERGAMO &nbsp;được tạo thành từ một công thức mới độc đáo với tinh chất collagen, tinh thể vàng và trứng cá tầm nuôi dưỡng và làm trắng da , phục hồi da tổn thương , sẹo do mụn để lại . Ngoài tác dụng dưỡng ẩm và tăng độ đàn hồi cho da, tinh chất collagen còn tái tạo làn da già nua do tuổi tác, làm trẻ hoá làn da. Sau 7 ngày sử dụng, các nàng sẽ thấy 1 làn da mềm mịn, trắng sáng và căng tràn sức sống.</p>\r\n\r\n<p>-&nbsp;&nbsp;Khi thoa tinh chất lên da,&nbsp;các tinh chất này sẽ cơ cấu và cung cấp chất dưỡng ẩm cho da làm cho da mềm mịn, giảm đỏ da, se khít lỗ chân lông, xóa mờ nếp nhăn, nuôi dưỡng và tái tạo lại làn da lão hóa. Phục hồi lại các tế bào da bị hư tổn do điều kiện môi trường như ánh nắng mặt trời, bức xạ tia cực tím, ô nhiễm, căng thẳng ảnh hưởng đến làn da - da khỏe, sáng dần lên và trắng mịn chỉ trong 7&nbsp;ngày.</p>\r\n', '', '', '', '', '170000', NULL, NULL, NULL, '00018326'),
(154, 'vn', 'N;', '', '', NULL, 'Serum Bergamo Luxury Caviar 30ml – Serum xóa tàn nhang mờ vết nám', '<h4><strong>Serum Bergamo Luxury Caviar Wrinkle Care Ampoule 30ml – Serum trị nám Hàn Quốc</strong></h4>\r\n\r\n<p>- Serum Bergamo Luxury Caviar với thành phần chiết xuất từ&nbsp;nhiều loại vitamin, tinh thể vàng, trứng cá tầm và chiết&nbsp;xuất nhân sâm, có thể thấm nhanh vào sâu bên trong lớp hạ bì da, tác động trực tiếp lên tế bào để điều trị các vấn đề của da như nếp nhăn do tuổi tác, đốm nâu, nám, tàn nhang, vết thâm do mụn… Với khả năng chữa trị các vấn đề của da từ trong tế bào, tức là từ phần gốc của vấn đề.</p>\r\n\r\n<p>- Khi thoa tinh chất lên da, các tinh chất này sẽ cơ cấu và cung cấp chất dưỡng ẩm cho da làm cho da mềm mịn, nuôi dưỡng và tái tạo lại làn da lão hóa. Ngoài tác dụng dưỡng ẩm và tăng độ đàn hồi cho da, tinh chất vitamin còn tái tạo làn da già nua do tuổi tác, làm trẻ hóa làn da. Sau một thời gian&nbsp;sử dụng, các nàng sẽ thấy 1 làn da căng, mịn màng và các nếp nhăn mờ đi trông thấy.</p>\r\n\r\n<p><strong>* Công dụng:</strong></p>\r\n\r\n<p>- Giúp se khít lỗ chân lông, giảm mụn trúng cá, tăng đàn hồi cho da, làm mờ nếp nhăn, vết thâm nám.</p>\r\n\r\n<p>- Chống lại các tác hại do quá trình lão hóa trên da.</p>\r\n\r\n<p>- Bổ sung collagen&nbsp;có tác dụng làm căng da, mịn da.</p>\r\n\r\n<p>* Lưu ý: Tác dụng của sản phẩm có thể thay đổi tùy theo tình trạng cơ địa của mỗi người.</p>\r\n\r\n<p><strong>* Thành phần:</strong></p>\r\n\r\n<p>Aqua, Glycerin, PEG-32, Phenoxyethanol, PEG-60 Hydrogenated Castor Oil, carbomer, Triethanolamine, hydroxyetylxenlulo, Chiết xuất trứng cá tầm (300ppm), Disodium EDTA, Allantoin, Adenosine, Fragrance, Yellow 5, Blue l, Saccharomyces / Leuconostoc / chiết xuất táo / cà rốt / củ cải / bắp cải / Cần tây / dưa chuột / Chuối / Onion / Arctium Lappa root / lá Rau bina / vỏ cam / trái cà chua / mầm Phaseolus radiatus / Pumpkin Extract Ferment Phần lọc.</p>\r\n\r\n<p><strong>* Hướng dẫn sử dụng:</strong></p>\r\n\r\n<p>- Sau khi&nbsp;<a href=\"http://gili.vn/56-rua-mat-tay-te-bao\" target=\"_blank\">rửa mặt</a>&nbsp;cho 1-2&nbsp;giọt thoa đều trên mặt và cổ của bạn, sau đó mát xa nhẹ nhàng để tinh chất hấp thu vào sâu bên trong da sau khi làm sạch mặt.</p>\r\n\r\n<p>- Để có kết quả tốt nhất, sử dụng vào buổi sáng và buổi tối, có thể dùng kết hợp với&nbsp;<a href=\"http://gili.vn/kem-duong-da/138-kem-tri-nam-bergamo-luxury-caviar-wrinkle-care-50gr.html\" target=\"_blank\">kem trị nám Bergamo Luxury Caviar</a>&nbsp;để giúp đạt hiệu quả nhanh hơn,&nbsp;giúp bạn nhanh chóng lấy lại được làn da tươi trẻ, trắng sáng mịn màng&nbsp;chỉ sau 1 tuần sử dụng.</p>\r\n\r\n<p>- Bảo quản&nbsp;sản phẩm nơi thoáng mát, tránh lưu trữ ở nhiệt độ cao.</p>\r\n', '<h4><strong>Serum Bergamo Luxury Caviar Wrinkle Care Ampoule 30ml – Serum trị nám Hàn Quốc</strong></h4>\r\n\r\n<p>- Serum Bergamo Luxury Caviar với thành phần chiết xuất từ&nbsp;nhiều loại vitamin, tinh thể vàng, trứng cá tầm và chiết&nbsp;xuất nhân sâm, có thể thấm nhanh vào sâu bên trong lớp hạ bì da, tác động trực tiếp lên tế bào để điều trị các vấn đề của da như nếp nhăn do tuổi tác, đốm nâu, nám, tàn nhang, vết thâm do mụn… Với khả năng chữa trị các vấn đề của da từ trong tế bào, tức là từ phần gốc của vấn đề.</p>\r\n\r\n<p>- Khi thoa tinh chất lên da, các tinh chất này sẽ cơ cấu và cung cấp chất dưỡng ẩm cho da làm cho da mềm mịn, nuôi dưỡng và tái tạo lại làn da lão hóa. Ngoài tác dụng dưỡng ẩm và tăng độ đàn hồi cho da, tinh chất vitamin còn tái tạo làn da già nua do tuổi tác, làm trẻ hóa làn da. Sau một thời gian&nbsp;sử dụng, các nàng sẽ thấy 1 làn da căng, mịn màng và các nếp nhăn mờ đi trông thấy.</p>\r\n\r\n<p><strong>* Công dụng:</strong></p>\r\n\r\n<p>- Giúp se khít lỗ chân lông, giảm mụn trúng cá, tăng đàn hồi cho da, làm mờ nếp nhăn, vết thâm nám.</p>\r\n\r\n<p>- Chống lại các tác hại do quá trình lão hóa trên da.</p>\r\n\r\n<p>- Bổ sung collagen&nbsp;có tác dụng làm căng da, mịn da.</p>\r\n\r\n<p>* Lưu ý: Tác dụng của sản phẩm có thể thay đổi tùy theo tình trạng cơ địa của mỗi người.</p>\r\n\r\n<p><strong>* Thành phần:</strong></p>\r\n\r\n<p>Aqua, Glycerin, PEG-32, Phenoxyethanol, PEG-60 Hydrogenated Castor Oil, carbomer, Triethanolamine, hydroxyetylxenlulo, Chiết xuất trứng cá tầm (300ppm), Disodium EDTA, Allantoin, Adenosine, Fragrance, Yellow 5, Blue l, Saccharomyces / Leuconostoc / chiết xuất táo / cà rốt / củ cải / bắp cải / Cần tây / dưa chuột / Chuối / Onion / Arctium Lappa root / lá Rau bina / vỏ cam / trái cà chua / mầm Phaseolus radiatus / Pumpkin Extract Ferment Phần lọc.</p>\r\n\r\n<p><strong>* Hướng dẫn sử dụng:</strong></p>\r\n\r\n<p>- Sau khi&nbsp;<a href=\"http://gili.vn/56-rua-mat-tay-te-bao\" target=\"_blank\">rửa mặt</a>&nbsp;cho 1-2&nbsp;giọt thoa đều trên mặt và cổ của bạn, sau đó mát xa nhẹ nhàng để tinh chất hấp thu vào sâu bên trong da sau khi làm sạch mặt.</p>\r\n\r\n<p>- Để có kết quả tốt nhất, sử dụng vào buổi sáng và buổi tối, có thể dùng kết hợp với&nbsp;<a href=\"http://gili.vn/kem-duong-da/138-kem-tri-nam-bergamo-luxury-caviar-wrinkle-care-50gr.html\" target=\"_blank\">kem trị nám Bergamo Luxury Caviar</a>&nbsp;để giúp đạt hiệu quả nhanh hơn,&nbsp;giúp bạn nhanh chóng lấy lại được làn da tươi trẻ, trắng sáng mịn màng&nbsp;chỉ sau 1 tuần sử dụng.</p>\r\n\r\n<p>- Bảo quản&nbsp;sản phẩm nơi thoáng mát, tránh lưu trữ ở nhiệt độ cao.</p>\r\n', '', '', '', '', '360000', NULL, NULL, NULL, '00018327'),
(155, 'vn', 'N;', '', '', NULL, 'Serum Bergamo Premium Gold Wrinkle Care Ampoule 30ml – Collagen căng da sáng mịn / 베르가모 프리미엄 골드 링클케어 앰플 30ml', '', '<p>Là một loại serum đặc biệt gồm tinh thể 99,9% vàng nguyên chất giúp làm dịu da bị hư tổn do ô nhiễm, giúp làm săn chắc làn da, làm giảm nếp nhăn, mang lại làn da tươi trẻ.</p>\r\n\r\n<p>- Qua hàng ngàn năm tổ tiên chúng ta nhanh chóng nhận ra những tác dụng chữa bệnh của kim loại quý tộc lấp lánh này. Do vậy, Serum<strong>&nbsp;</strong>Bergamo Luxury Premium Gold đã kết hợp đặc biệt các tinh thể vàng và các hoạt chất nuôi dưỡng, tái tạo làn da.</p>\r\n\r\n<p>* Lưu ý: Tác dụng của sản phẩm có thể thay đổi tùy theo tình trạng cơ địa của mỗi người.</p>\r\n\r\n<p><strong>* Công dụng:</strong></p>\r\n\r\n<p>- Kích thích sự tái tạo tế bào da.</p>\r\n\r\n<p>- Tăng sản xuất collagen, tăng độ săn chắc và độ đàn hồi của da, làm mờ vết nhăn, vết thâm.</p>\r\n\r\n<p>- Làm sáng quầng thâm dưới mắt</p>\r\n\r\n<p>- Thúc đẩy quá trình giải độc của da, máu và bạch huyết lưu thông</p>\r\n\r\n<p>- Hỗ trợ điều trị mụn, kháng viêm.</p>\r\n\r\n<p>- Đem lại làn da tươi trẻ, mịn màng và căng tràn sức sống.</p>\r\n\r\n<p><strong>* Thành phần:</strong></p>\r\n\r\n<p>Aqua, Glycerin, PEG-32, Phenoxyethanol, PEG-60 Hydrogenated Castor Oil, Carbomer, Triethanolamine, Hydroxyethylcellulose, Caramel, Disodium EDTA, Allantoin, Adenosine, Fragrance, Gold(9000ppb), Tissue Cultured Ginseng Adventitious Roots Extract, Saccharomyces/ Leuconostoc/Apple fruit/ Carrot root/ Radish root/ Cabbage leaf/ Cucumber fruit/ Banana fruit/ Onion bulb/ Arctium lappa root/ Spinach leaf/ Orange peel/ Tomato fruit/ Phaseolus radiatus sprout/ Pumpkin fruit Extract Ferment Filtrate.</p>\r\n\r\n<p><strong>* Hướng dẫn sử dụng:</strong></p>\r\n\r\n<p>- Sau khi&nbsp;<a href=\"http://gili.vn/56-rua-mat-tay-te-bao\" target=\"_blank\">rửa mặt</a>&nbsp;cho 1-2&nbsp;giọt thoa đều trên mặt và cổ của bạn, sau đó mát xa nhẹ nhàng để tinh chất hấp thu vào sâu bên trong da sau khi làm sạch mặt.</p>\r\n\r\n<p>- Để có kết quả tốt nhất, sử dụng vào buổi sáng và buổi tối, có thể dùng kết hợp với&nbsp;<a href=\"http://gili.vn/kem-duong-da/139-kem-duong-trang-bergamo-coenzyme-q10-wrinkle-care-cream-50gr.html\" target=\"_blank\">kem dưỡng da Bergamo Coenzyme Q10</a>&nbsp;để giúp đạt hiệu quả nhanh hơn,&nbsp;giúp bạn nhanh chóng lấy lại được làn da tươi trẻ, trắng sáng mịn màng&nbsp;chỉ sau 1 tuần sử dụng.</p>\r\n\r\n<p>- Bảo quản&nbsp;sản phẩm nơi thoáng mát, tránh lưu trữ ở nhiệt độ cao.</p>\r\n', '', '', '', '', '', NULL, NULL, NULL, ''),
(156, 'vn', 'N;', '', '', NULL, 'Becamo Bringhtening EX  whitening Ampoule  dưỡng trắng hồng da // 베르가모 브라이트닝 이엑스 화이트닝 앰플 30m', '', '<p>Dưỡng chất từ thiên nhiên thấm sâu vào da, giúp nuôi dưỡng làn da từ sâu bên trong.</p>\r\n\r\n<p>- Cân bằng độ ẩm, cho bạn làn da tươi sáng, mịn màng không tì vết.</p>\r\n\r\n<p>- Làm trắng hồng tự nhiên, làm mờ đốm nâu chống lại quá trình lão hóa sớm.</p>\r\n\r\n<p>- Ngoài ra, serum Bergamo còn làm giảm thiểu tối đa những nếp nhăn xuất hiện do các nguyên nhân gây lão hóa, khoanh vùng và cắt đứt ngăn ngừa sự hội tụ liên kết của sắc tố melanin là nguyên nhân gây sạm nám, tàn nhang, đồi mồi. Làm mềm, căng mịn và trắng sáng làn da của bạn.</p>\r\n\r\n<p>- Giúp ngăn chặn sự xuất hiện của sắc tố melanin là nguyên nhân gây nám da, sạm da, giúp bạn có được làn da trắng hồng, đẹp không tỳ vết.</p>\r\n\r\n<p>- Phù hợp ngay cả với da nhạy cảm, tổn thương. Không chứa dầu khoáng và Paraben gây hại cho da, không gây nhờn rít, không gây kích ứng da.</p>\r\n\r\n<p>* Lưu ý: Tác dụng của sản phẩm có thể thay đổi tùy theo tình trạng cơ địa của mỗi người.</p>\r\n\r\n<p><strong>* Thành phần:</strong></p>\r\n\r\n<p>Chiết xuất trứng cá tầm (100ppm), Protein, PEG-100, Adenosine Aqua, Glycerin, PEG-32, Phenoxyethanol, PEG-60 Hydrogenated Castor Oil, Carbomer, Triethanolamine, Hydroxyethylcellulose, Caramel, Disodium EDTA, Allantoin, Adenosine, Fragrance, Gold(9000ppb), Tissue Cultured Ginseng Adventitious Roots Extract, Saccharomyces/ Leuconostoc/Apple fruit/ Carrot root/ Radish root/ Cabbage leaf/ Cucumber fruit/ Banana fruit/ Onion bulb/ Arctium lappa root/ Spinach leaf/ Orange peel/ Tomato fruit/ Phaseolus radiatus sprout/ Pumpkin fruit Extract Ferment Filtrate.</p>\r\n\r\n<p><strong>* Hướng dẫn sử dụng:</strong></p>\r\n\r\n<p>- Sau khi&nbsp;<a href=\"http://gili.vn/56-rua-mat-tay-te-bao\" target=\"_blank\">rửa mặt</a>&nbsp;cho 1-2&nbsp;giọt thoa đều trên mặt và cổ của bạn, sau đó mát xa nhẹ nhàng để tinh chất hấp thu vào sâu bên trong da sau khi làm sạch mặt.</p>\r\n\r\n<p>- Để có kết quả tốt nhất, sử dụng vào buổi sáng và buổi tối, có thể dùng kết hợp với&nbsp;<a href=\"http://gili.vn/kem-duong-da/142-kem-duong-trang-bergamo-whitening-ex-50gr.html\" target=\"_blank\">kem dưỡng trắng&nbsp;Bergamo Whitening Ex</a>&nbsp;để giúp đạt hiệu quả nhanh hơn,&nbsp;giúp bạn nhanh chóng lấy lại được làn da tươi trẻ, trắng sáng mịn màng&nbsp;chỉ sau 1 tuần sử dụng.</p>\r\n\r\n<p>- Bảo quản&nbsp;sản phẩm nơi thoáng mát, tránh lưu trữ ở nhiệt độ cao.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '360000', NULL, NULL, NULL, '00018328'),
(157, 'vn', 'N;', '', '', NULL, 'Serum Bergamo Luxury Cavia Set /// 베르가모 캐비어 하이 포텐시 앰플세트 20EA', '', '<p>Serum Bergamo Luxury Caviar với thành phần chiết xuất từ&nbsp;nhiều loại vitamin, tinh thể vàng, trứng cá tầm và chiết&nbsp;xuất nhân sâm, có thể thấm nhanh vào sâu bên trong lớp hạ bì da, tác động trực tiếp lên tế bào để điều trị các vấn đề của da như nếp nhăn do tuổi tác, đốm nâu, nám, tàn nhang, vết thâm do mụn… Với khả năng chữa trị các vấn đề của da từ trong tế bào, tức là từ phần gốc của vấn đề.</p>\r\n\r\n<p>- Khi thoa tinh chất lên da, các tinh chất này sẽ cơ cấu và cung cấp chất dưỡng ẩm cho da làm cho da mềm mịn, nuôi dưỡng và tái tạo lại làn da lão hóa. Ngoài tác dụng dưỡng ẩm và tăng độ đàn hồi cho da, tinh chất vitamin còn tái tạo làn da già nua do tuổi tác, làm trẻ hóa làn da. Sau một thời gian&nbsp;sử dụng, các nàng sẽ thấy 1 làn da căng, mịn màng và các nếp nhăn mờ đi trông thấy.</p>\r\n\r\n<p><strong>* Công dụng:</strong></p>\r\n\r\n<p>- Giúp se khít lỗ chân lông, giảm mụn trúng cá, tăng đàn hồi cho da, làm mờ nếp nhăn, vết thâm nám.</p>\r\n\r\n<p>- Chống lại các tác hại do quá trình lão hóa trên da.</p>\r\n\r\n<p>- Bổ sung collagen&nbsp;có tác dụng làm căng da, mịn da.</p>\r\n\r\n<p>* Lưu ý: Tác dụng của sản phẩm có thể thay đổi tùy theo tình trạng cơ địa của mỗi người.</p>\r\n\r\n<p><strong>* Thành phần:</strong></p>\r\n\r\n<p>Aqua, Glycerin, PEG-32, Phenoxyethanol, PEG-60 Hydrogenated Castor Oil, carbomer, Triethanolamine, hydroxyetylxenlulo, Chiết xuất trứng cá tầm (300ppm), Disodium EDTA, Allantoin, Adenosine, Fragrance, Yellow 5, Blue l, Saccharomyces / Leuconostoc / chiết xuất táo / cà rốt / củ cải / bắp cải / Cần tây / dưa chuột / Chuối / Onion / Arctium Lappa root / lá Rau bina / vỏ cam / trái cà chua / mầm Phaseolus radiatus / Pumpkin Extract Ferment Phần lọc.</p>\r\n\r\n<p><strong>* Hướng dẫn sử dụng:</strong></p>\r\n\r\n<p>- Sau khi&nbsp;<a href=\"http://gili.vn/56-rua-mat-tay-te-bao\" target=\"_blank\">rửa mặt</a>&nbsp;cho 1-2&nbsp;giọt thoa đều trên mặt và cổ của bạn, sau đó mát xa nhẹ nhàng để tinh chất hấp thu vào sâu bên trong da sau khi làm sạch mặt.</p>\r\n\r\n<p>- Để có kết quả tốt nhất, sử dụng vào buổi sáng và buổi tối, có thể dùng kết hợp với&nbsp;<a href=\"http://gili.vn/kem-duong-da/138-kem-tri-nam-bergamo-luxury-caviar-wrinkle-care-50gr.html\" target=\"_blank\">kem trị nám Bergamo Luxury Caviar</a>&nbsp;để giúp đạt hiệu quả nhanh hơn,&nbsp;giúp bạn nhanh chóng lấy lại được làn da tươi trẻ, trắng sáng mịn màng&nbsp;chỉ sau 1 tuần sử dụng.</p>\r\n\r\n<p>- Bảo quản&nbsp;sản phẩm nơi thoáng mát, tránh lưu trữ ở nhiệt độ cao.</p>\r\n', '', '', '', '', '1350000', NULL, NULL, NULL, '00018329'),
(158, 'vn', 'N;', '', '', NULL, 'Becamo Gold Collagen & Caviar Set /// 베르가모 럭셔리 골드 콜라겐 앤 캐비어 앰플 20EA', '', '<p>Là một loại serum đặc biệt gồm tinh thể 99,9% vàng nguyên chất giúp làm dịu da bị hư tổn do ô nhiễm, giúp làm săn chắc làn da, làm giảm nếp nhăn, mang lại làn da tươi trẻ.</p>\r\n\r\n<p>- Qua hàng ngàn năm tổ tiên chúng ta nhanh chóng nhận ra những tác dụng chữa bệnh của kim loại quý tộc lấp lánh này. Do vậy, Serum&nbsp;Bergamo Luxury Premium Gold đã kết hợp đặc biệt các tinh thể vàng và các hoạt chất nuôi dưỡng, tái tạo làn da.</p>\r\n\r\n<p>* Lưu ý: Tác dụng của sản phẩm có thể thay đổi tùy theo tình trạng cơ địa của mỗi người.</p>\r\n\r\n<p><strong>* Công dụng:</strong></p>\r\n\r\n<p>- Kích thích sự tái tạo tế bào da.</p>\r\n\r\n<p>- Tăng sản xuất collagen, tăng độ săn chắc và độ đàn hồi của da, làm mờ vết nhăn, vết thâm.</p>\r\n\r\n<p>- Làm sáng quầng thâm dưới mắt</p>\r\n\r\n<p>- Thúc đẩy quá trình giải độc của da, máu và bạch huyết lưu thông</p>\r\n\r\n<p>- Hỗ trợ điều trị mụn, kháng viêm.</p>\r\n\r\n<p>- Đem lại làn da tươi trẻ, mịn màng và căng tràn sức sống.</p>\r\n\r\n<p><strong>* Thành phần:</strong></p>\r\n\r\n<p>Aqua, Glycerin, PEG-32, Phenoxyethanol, PEG-60 Hydrogenated Castor Oil, Carbomer, Triethanolamine, Hydroxyethylcellulose, Caramel, Disodium EDTA, Allantoin, Adenosine, Fragrance, Gold(9000ppb), Tissue Cultured Ginseng Adventitious Roots Extract, Saccharomyces/ Leuconostoc/Apple fruit/ Carrot root/ Radish root/ Cabbage leaf/ Cucumber fruit/ Banana fruit/ Onion bulb/ Arctium lappa root/ Spinach leaf/ Orange peel/ Tomato fruit/ Phaseolus radiatus sprout/ Pumpkin fruit Extract Ferment Filtrate.</p>\r\n\r\n<p><strong>* Hướng dẫn sử dụng:</strong></p>\r\n\r\n<p>- Sau khi&nbsp;<a href=\"http://gili.vn/56-rua-mat-tay-te-bao\" target=\"_blank\">rửa mặt</a>&nbsp;cho 1-2&nbsp;giọt thoa đều trên mặt và cổ của bạn, sau đó mát xa nhẹ nhàng để tinh chất hấp thu vào sâu bên trong da sau khi làm sạch mặt.</p>\r\n\r\n<p>- Để có kết quả tốt nhất, sử dụng vào buổi sáng và buổi tối, có thể dùng kết hợp với&nbsp;<a href=\"http://gili.vn/kem-duong-da/139-kem-duong-trang-bergamo-coenzyme-q10-wrinkle-care-cream-50gr.html\" target=\"_blank\">kem dưỡng da Bergamo Coenzyme Q10</a>&nbsp;để giúp đạt hiệu quả nhanh hơn,&nbsp;giúp bạn nhanh chóng lấy lại được làn da tươi trẻ, trắng sáng mịn màng&nbsp;chỉ sau 1 tuần sử dụng.</p>\r\n\r\n<p>- Bảo quản&nbsp;sản phẩm nơi thoáng mát, tránh lưu trữ ở nhiệt độ cao.</p>\r\n', '', '', '', '', '1350000', NULL, NULL, NULL, '00018330'),
(159, 'vn', 'N;', '', '', NULL, 'Becamo Whitening EX Set  /// 베르가모 스노우 앤 비타 화이트닝 퍼펙션 앰플 20EA', '', '<p>Dưỡng chất từ thiên nhiên thấm sâu vào da, giúp nuôi dưỡng làn da từ sâu bên trong.</p>\r\n\r\n<p>- Cân bằng độ ẩm, cho bạn làn da tươi sáng, mịn màng không tì vết.</p>\r\n\r\n<p>- Làm trắng hồng tự nhiên, làm mờ đốm nâu chống lại quá trình lão hóa sớm.</p>\r\n\r\n<p>- Ngoài ra, serum Bergamo còn làm giảm thiểu tối đa những nếp nhăn xuất hiện do các nguyên nhân gây lão hóa, khoanh vùng và cắt đứt ngăn ngừa sự hội tụ liên kết của sắc tố melanin là nguyên nhân gây sạm nám, tàn nhang, đồi mồi. Làm mềm, căng mịn và trắng sáng làn da của bạn.</p>\r\n\r\n<p>- Giúp ngăn chặn sự xuất hiện của sắc tố melanin là nguyên nhân gây nám da, sạm da, giúp bạn có được làn da trắng hồng, đẹp không tỳ vết.</p>\r\n\r\n<p>- Phù hợp ngay cả với da nhạy cảm, tổn thương. Không chứa dầu khoáng và Paraben gây hại cho da, không gây nhờn rít, không gây kích ứng da.</p>\r\n\r\n<p>* Lưu ý: Tác dụng của sản phẩm có thể thay đổi tùy theo tình trạng cơ địa của mỗi người.</p>\r\n\r\n<p><strong>* Thành phần:</strong></p>\r\n\r\n<p>Chiết xuất trứng cá tầm (100ppm), Protein, PEG-100, Adenosine Aqua, Glycerin, PEG-32, Phenoxyethanol, PEG-60 Hydrogenated Castor Oil, Carbomer, Triethanolamine, Hydroxyethylcellulose, Caramel, Disodium EDTA, Allantoin, Adenosine, Fragrance, Gold(9000ppb), Tissue Cultured Ginseng Adventitious Roots Extract, Saccharomyces/ Leuconostoc/Apple fruit/ Carrot root/ Radish root/ Cabbage leaf/ Cucumber fruit/ Banana fruit/ Onion bulb/ Arctium lappa root/ Spinach leaf/ Orange peel/ Tomato fruit/ Phaseolus radiatus sprout/ Pumpkin fruit Extract Ferment Filtrate.</p>\r\n\r\n<p><strong>* Hướng dẫn sử dụng:</strong></p>\r\n\r\n<p>- Sau khi&nbsp;<a href=\"http://gili.vn/56-rua-mat-tay-te-bao\" target=\"_blank\">rửa mặt</a>&nbsp;cho 1-2&nbsp;giọt thoa đều trên mặt và cổ của bạn, sau đó mát xa nhẹ nhàng để tinh chất hấp thu vào sâu bên trong da sau khi làm sạch mặt.</p>\r\n\r\n<p>- Để có kết quả tốt nhất, sử dụng vào buổi sáng và buổi tối, có thể dùng kết hợp với&nbsp;<a href=\"http://gili.vn/kem-duong-da/142-kem-duong-trang-bergamo-whitening-ex-50gr.html\" target=\"_blank\">kem dưỡng trắng&nbsp;Bergamo Whitening Ex</a>&nbsp;để giúp đạt hiệu quả nhanh hơn,&nbsp;giúp bạn nhanh chóng lấy lại được làn da tươi trẻ, trắng sáng mịn màng&nbsp;chỉ sau 1 tuần sử dụng.</p>\r\n\r\n<p>- Bảo quản&nbsp;sản phẩm nơi thoáng mát, tránh lưu trữ ở nhiệt độ cao.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '1350000', NULL, NULL, NULL, '00018331'),
(160, 'vn', 'N;', '', '', NULL, 'Becamo Royal Jelly Cream 50gr ', '<p>Kem dưỡng da chống nhăn Bergamo Q10 Wrinkle Care Cream&nbsp;là sản phẩm&nbsp;chăm sóc da tổng hợp, làm hoàn thiện quá trình hồi sinh làn da, cho da trở nên trắng sáng và mịn màng. Công thức với Coenzyme Q10 giúp giữ ẩm và chống nhăn da, cải thiện độ đàn hồi cho da. Ngoài ra, sản phẩm còn giúp cải thiện mụn, sẹo lõm, tàn nhang, giảm nếp nhăn, cho da mềm mại và tươi trẻ hơn.&nbsp;</p>\r\n\r\n<p>Kem dưỡng da chống nhăn Bergamo Coenzyme Q10 Wrinkle Care Cream phù hợp với mọi loại da, hiệu quả đặc biệt cho da khô, da thường, da bị chảy xệ.</p>\r\n\r\n<p>Hướng dẫn sử dụng và bảo quản</p>\r\n\r\n<ul>\r\n	<li>Sau khi rửa mặt sạch, thoa một ít kem lên da mặt, thoa đều và massage nhẹ nhàng cho kem thấm sâu vào da</li>\r\n	<li>Nên sử dụng 2 lần/ngày, sáng và tối</li>\r\n	<li>Bảo quản nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp</li>\r\n</ul>\r\n\r\n<p>Thông tin thương hiệu</p>\r\n\r\n<p>Bergamo là thương hiệu mỹ phẩm chất lượng cao của Hàn Quốc được biết đến với các dòng sản phẩm trang điểm chất lượng cao. Sản phẩm của Bergamo mang đến các tông màu tự nhiên, tươi trẻ, phù hợp với nhiều lứa tuổi nên được nhiều đối tượng khách hàng tại Hàn Quốc và nhiều nước trên thế giới yêu thích và lựa chọn sử dụng.&nbsp;</p>\r\n', '<p>Kem dưỡng da chống nhăn Bergamo Q10 Wrinkle Care Cream&nbsp;là sản phẩm&nbsp;chăm sóc da tổng hợp, làm hoàn thiện quá trình hồi sinh làn da, cho da trở nên trắng sáng và mịn màng. Công thức với Coenzyme Q10 giúp giữ ẩm và chống nhăn da, cải thiện độ đàn hồi cho da. Ngoài ra, sản phẩm còn giúp cải thiện mụn, sẹo lõm, tàn nhang, giảm nếp nhăn, cho da mềm mại và tươi trẻ hơn.&nbsp;</p>\r\n\r\n<p>Kem dưỡng da chống nhăn Bergamo Coenzyme Q10 Wrinkle Care Cream phù hợp với mọi loại da, hiệu quả đặc biệt cho da khô, da thường, da bị chảy xệ.</p>\r\n\r\n<p>Hướng dẫn sử dụng và bảo quản</p>\r\n\r\n<ul>\r\n	<li>Sau khi rửa mặt sạch, thoa một ít kem lên da mặt, thoa đều và massage nhẹ nhàng cho kem thấm sâu vào da</li>\r\n	<li>Nên sử dụng 2 lần/ngày, sáng và tối</li>\r\n	<li>Bảo quản nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp</li>\r\n</ul>\r\n\r\n<p>Thông tin thương hiệu</p>\r\n\r\n<p>Bergamo là thương hiệu mỹ phẩm chất lượng cao của Hàn Quốc được biết đến với các dòng sản phẩm trang điểm chất lượng cao. Sản phẩm của Bergamo mang đến các tông màu tự nhiên, tươi trẻ, phù hợp với nhiều lứa tuổi nên được nhiều đối tượng khách hàng tại Hàn Quốc và nhiều nước trên thế giới yêu thích và lựa chọn sử dụng.&nbsp;</p>\r\n', '', '', '', '', '160000', NULL, NULL, NULL, '00018332'),
(161, 'vn', 'N;', '', '', NULL, 'Becamo Coenzyme Q10 cream  /// 베르가모 코엔자임큐텐 링클케어 크림 50gr', '', '<p><strong>Kem dưỡng da chống nhăn Bergamo Coenzyme Q10 Wrinkle Cream​</strong>&nbsp;là sản phẩm&nbsp;chăm sóc da tổng hợp, làm hoàn thiện quá trình hồi sinh làn da, cho da trở nên trắng sáng và mịn màng. Công thức với Coenzyme Q10 giúp giữ ẩm và chống nhăn da, cải thiện độ đàn hồi cho da. Ngoài ra, sản phẩm còn giúp cải thiện mụn, sẹo lõm, tàn nhang, giảm nếp nhăn, cho da mềm mại và tươi trẻ hơn.&nbsp;</p>\r\n\r\n<p><strong>Kem dưỡng da chống nhăn Bergamo Coenzyme Q10 Wrinkle Cream​</strong>&nbsp;phù hợp với mọi loại da, hiệu quả đặc biệt cho da khô, da thường, da bị chảy xệ.</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng và bảo quản</strong></p>\r\n\r\n<ul>\r\n	<li>Sau khi rửa mặt sạch, thoa một ít kem lên da mặt, thoa đều và massage nhẹ nhàng cho kem thấm sâu vào da</li>\r\n	<li>Nên sử dụng 2 lần/ngày, sáng và tối</li>\r\n	<li>Bảo quản nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp</li>\r\n</ul>\r\n\r\n<p><strong>Thông tin thương hiệu</strong></p>\r\n\r\n<p>Bergamo là thương hiệu mỹ phẩm của Hàn Quốc được biết đến với các dòng sản phẩm trang điểm chất lượng cao. Sản phẩm của Bergamo mang đến các tông màu tự nhiên, tươi trẻ, phù hợp với nhiều lứa tuổi nên được nhiều đối tượng khách hàng tại Hàn Quốc và nhiều nước trên thế giới yêu thích và lựa chọn sử dụng.&nbsp;</p>\r\n', '', '', '', '', '160000', NULL, NULL, NULL, '00018333');
INSERT INTO `bakcodt_content_ln` (`id`, `ln`, `ln_fields_extra`, `ln_icon`, `ln_image`, `sef_url`, `name`, `intro`, `content`, `title`, `desc`, `keyword`, `priceSale`, `priceBuy`, `status`, `mobilePhone`, `link`, `codePro`) VALUES
(162, 'vn', 'N;', '', '', NULL, 'Versace pour homme   //// 베르사체 뿌르옴므 (EDT) ★테스터★ 100ml(뚜껑없음)', '', '<p style=\"margin-left:18.0pt\">Nhãn hiệu:&nbsp;Versace</p>\r\n\r\n<p style=\"margin-left:18.0pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Giới tính:&nbsp;Nam</p>\r\n\r\n<p style=\"margin-left:18.0pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Xuất xứ:&nbsp;Ý</p>\r\n\r\n<p style=\"margin-left:18.0pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nồng độ:&nbsp;Eau de Toilette</p>\r\n\r\n<p style=\"margin-left:18.0pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Phát hành:&nbsp;2008</p>\r\n\r\n<p style=\"margin-left:18.0pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nhà pha chế:&nbsp;Alberto Morillas</p>\r\n\r\n<p style=\"margin-left:18.0pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nhóm hương:&nbsp;Hương thơm Dương xỉ - Aromatic Fougere</p>\r\n\r\n<p style=\"margin-left:18.0pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Phong cách:&nbsp;Mạnh mẽ, lịch lãm, sành điệu, độc đáo</p>\r\n\r\n<p>Hương đặc trưng</p>\r\n\r\n<p style=\"margin-left:18.0pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hương đầu: Quả chanh vàng, hoa cam Neroli, cam Bergamot, hoa hồng.</p>\r\n\r\n<p style=\"margin-left:18.0pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hương giữa: Hoa lan dạ hương, cây đơn sâm, gỗ tuyết tùng, hoa phong lữ.</p>\r\n\r\n<p style=\"margin-left:18.0pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hương cuối: Đậu Tonka, xạ hương, hổ phách.</p>\r\n\r\n<p>Versace Pour Homme&nbsp;là sự pha trộn các thành phần tinh chất có nguồn gốc Địa Trung Hải với hỗn hợp hương thơm hàng đầu rất phù hợp cho nam giới ngày nay:&nbsp;<em>đó là những người đàn ông tri thức và tự tin, sống hài hòa với thế giới tự nhiên.</em>&nbsp;Thông qua hương thơm đầy nam tính, dứt khoát, Versace Pour Homme liên kết sức mạnh và sự say mệ để&nbsp;<em>tạo nên một người đàn ông năng động và thành đạt.</em></p>\r\n\r\n<p style=\"margin-left:18.0pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hương đầu mở ra&nbsp;với mùi hương nhẹ nhàng và tươi mát của chi cam chanh vùng Diamante ở Calabria, phối hợp cùng lá và hoa của cây cam đắng tạo nên một hương thơm đặc trưng của vùng Địa Trung Hải.</p>\r\n\r\n<p style=\"margin-left:18.0pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hương giữa được pha trộn bởi những mùi hương hoa của lan dạ hương và phong lữ.</p>\r\n\r\n<p style=\"margin-left:18.0pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hương cuối nồng ấm là sự kết hợp của hổ phách, xạ hương và đậu tonka đem lại sự nam tính và gợi cảm.</p>\r\n\r\n<p>Được chiết xuất từ nguyên liệu thiên nhiên, nước hoa&nbsp;Versace Pour Homme&nbsp;Eau de Toilette&nbsp;có hương thơm nam tính, mạnh mẽ, quyến rũ.&nbsp;Versace Pour Homme Eau de Toilette&nbsp;sẽ giúp bạn trở nên tự tin, hấp dẫn hơn khi gặp gỡ bạn bè, hay tham gia vào những buổi tiệc quan trọng. Ngoài ra, với thiết kế vỏ ngoài đặc biệt, đơn giản nhưng không kém phần tinh tế và sang trọng với thiết kể cổ điển quen thuộc trong dung dịch màu xanh dịu nhẹ. Nổi bật nhất là chiếc nắp tròn mạ kim loại khắc tên thương hiệu xung quanh và biểu tượng nữ thần tóc rắn Medusa đặt phía trước thân chai sáng bóng.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '00018334'),
(163, 'vn', 'N;', '', '', NULL, ' Lanvin Marry Me  /// 랑방 메리미 (EDP) 75ml Tester ', '', '<p>Nhóm hương: Nước hoa&nbsp;LANVIN Marry Me&nbsp;thuộc nhóm hương hoa và trái cây.</p>\r\n\r\n<p>Phong cách: Nhẹ nhàng, quyến rũ.</p>\r\n\r\n<p>Các lớp hương:</p>\r\n\r\n<p style=\"margin-left:18.0pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lớp hương đầu: Quả đào, cam đắng.</p>\r\n\r\n<p style=\"margin-left:18.0pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lớp hương giữa: Lá fressia, hương hoa lài, hương hoa hồng.</p>\r\n\r\n<p style=\"margin-left:18.0pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lớp hương cuối: Hổ phách, xạ hương, cây tuyết tùng.</p>\r\n\r\n<p>Cách dùng<br />\r\nXịt sản phẩm lên những vùng da có nhiều mạch máu như gáy, sau tai, cổ tay. Có thể xịt ra khoảng không trước mặt và bước tới trước để mùi hương tỏa đều và lưu lại lâu hơn. Chú ý không sử dụng quá nhiều.</p>\r\n\r\n<p>THÔNG TIN THƯƠNG HIỆU</p>\r\n\r\n<p>Lanvin, một trong những thương hiệu lâu đời nhất thế giới, được ươm trồng từ tình yêu vô bờ bến và vô điều kiện của Jeanne Lanvin với con gái của bà. Ngay từ khi mới thành lập, thương hiệu&nbsp;Lanvin&nbsp;đã thu hút được một số lượng lớn những quý tộc thời bấy giờ ưa chuộng. Đỉnh điểm là hai sản phẩm nước hoa Lanvin Parfums SA và My sin đã giúp cho tên tuổi của thương hiệu được khẳng định. Sau khi Jeanne mất vào năm 1946 và con gái bà mất vào năm 1956, thương hiệu được cháu họ là Yves Lanvin quản lý. Hiện tại,&nbsp;Lanvin&nbsp;là một trong những thương hiệu nổi tiếng trên toàn thế giới và được nhiều ngôi sao Hollywood yêu thích. Thương hiệu đang được tổng công ty Harmonie S.A quản lý và Albert Elbaz là giám đốc sáng tạo.</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '00018335'),
(164, 'vn', 'N;', '', '', NULL, ' BLV Pour Home   /// 불가리 블루 뿌르옴므 ★테스터★ 100ml(뚜껑있음)', '', '<p><strong>BLV Pour Home dành cho người đàn ông cổ điển</strong></p>\r\n\r\n<p><strong>BLV Pour Homme</strong>&nbsp;được ví như một quý ông lịch lãm, thâm trầm và tinh tế. Mỗi nốt hương khi ngạo nghễ phóng khoáng, khi trầm lắng điềm nhiên làm nên bản giao hưởng hương thơm độc đáo.</p>\r\n\r\n<p>Để khẳng định chính mình, mỗi người đàn ông thành đạt cũng trải qua những thăng trầm trong bản nhạc mang tên cuộc sống. Bởi vậy, nước hoa<strong>&nbsp;Bvlgari BLV Pour Homme</strong>&nbsp;như một người bạn tri âm, tạo nên sự đồng điệu đến hoàn hảo. &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p><strong>Thương hiệu:</strong>&nbsp;Bvlgari</p>\r\n\r\n<p><strong>Xuất xứ:</strong>&nbsp;Italy</p>\r\n\r\n<p><strong>Năm phát hành:</strong>&nbsp;2001</p>\r\n\r\n<p><strong>Phong cách:</strong>&nbsp;Thâm trầm, tinh tế, cá tính.</p>\r\n\r\n<p><strong>Hương đặc trưng:</strong></p>\r\n\r\n<p style=\"margin-left:18pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hương đầu: Gỗ đàn hương, Bạch đậu khấu.&nbsp;</p>\r\n\r\n<p style=\"margin-left:18pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hương giữa:&nbsp;Cây riềng nếp, Cây bách xù, Gừng.</p>\r\n\r\n<p style=\"margin-left:18pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hương cuối: Hương lục của lá xanh, Gỗ Tếch, Hoa thuốc lá.</p>\r\n\r\n<p><strong>Thời điểm khuyên dùng:</strong>&nbsp;Ngày, Xuân, Hạ, Thu</p>\r\n\r\n<p><strong>Bảo quản:</strong>&nbsp;tránh ánh sáng trực tiếp, bảo quản nơi khô ráo thoáng mát</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '00018336'),
(165, 'vn', 'N;', '', '', NULL, 'Versace Man   ///  베르사체 오 프레쉬 맨 (EDT) 100ml', '', '<p style=\"margin-left:18.0pt\">Nhãn hiệu:&nbsp;Versace</p>\r\n\r\n<p style=\"margin-left:18.0pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Giới tính:&nbsp;Nam</p>\r\n\r\n<p style=\"margin-left:18.0pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Xuất xứ:&nbsp;Ý</p>\r\n\r\n<p style=\"margin-left:18.0pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nồng độ:&nbsp;Eau de Toilette</p>\r\n\r\n<p style=\"margin-left:18.0pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Phát hành:&nbsp;2006</p>\r\n\r\n<p style=\"margin-left:18.0pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nhà pha chế:&nbsp;Olivier Cresp</p>\r\n\r\n<p style=\"margin-left:18.0pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nhóm hương:&nbsp;Hương gỗ biển - Woody Aquatic</p>\r\n\r\n<p style=\"margin-left:18.0pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Phong cách:&nbsp;Tươi mát, nam tính, năng động.</p>\r\n\r\n<p style=\"margin-left:18.0pt\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hương đặc trưng:</p>\r\n\r\n<p style=\"margin-left:18.0pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hương đầu: Cam Bergamot, Gỗ cẩm lai Brazil, Bạch đậu khấu, Quả chanh vàng, Quả khế.</p>\r\n\r\n<p>Lớp hương đầu là sự kết hợp hài hòa của hương chanh, cam bergamot và gỗ cẩm lai&nbsp;Brazil. Hương thơm này khởi đầu với vị cam chanh khá nồng, đem lại cảm giác sảng khoái, thoải mái nhưng về sau lại trở nên ngọt ngào và nhẹ nhàng hơn.</p>\r\n\r\n<p style=\"margin-left:18.0pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hương giữa: Cây ngải dấm, Cây xô thơm, Gỗ tuyết tùng, Tiêu</p>\r\n\r\n<p>Lớp hương giữa có mùi hương gia vị đặc trưng của cây xô thơm và hạt tiêu, đi kèm với tuyết tùng và tarragon</p>\r\n\r\n<p style=\"margin-left:18.0pt\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hương cuối: Hổ phách, Nghệ tây, Xạ hương, Hương của gỗ, Cây sung dâu</p>\r\n\r\n<p>Hương cuối để lại trên cơ thể là mùi hương ấm áp của hổ phách, xạ hương, nghệ tây và hương gỗ rừng, đem lại sự tươi trẻ và nam tính cho phái mạnh.&nbsp;</p>\r\n\r\n<p>Hãng thời trang cao cấp&nbsp;Versace&nbsp;được thành lập bởi&nbsp;Gianni Versace. Hãng nước hoa&nbsp;Versace&nbsp;hiện có hơn 50 chai nước hoa tính đến thời điểm hiện tại. Trong đóVersace Eau Fraiche for men&nbsp;là một phiên bản mới đầy quyến rũ của dòng nước hoa&nbsp;Versace Man, nó có sự tươi mát và mang phong vị của biển so phiên bản gốc. Hương hoa quả dịu mát kết hợp với hương ấm áp của rừng cây.&nbsp;Versace Eau Fraiche for men&nbsp;được cho ra mắt vào năm 2006. Vị cha đẻ của&nbsp;Versace Eau Fraiche for men&nbsp;la Olivier Cresp.</p>\r\n\r\n<p>Chai nước hoa được thiết kế tinh tế với thủy tinh màu xanh trong suốt, thân chai có hình răng cưa độc đáo làm người dùng có thể dễ dàng cầm giữ. Với thiết kế thú vị này,&nbsp;Versace Eau Fraiche for men&nbsp;đem đến sự cá tính và mạnh mẽ hơn cho phái mạnh</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '00018338'),
(166, 'vn', 'N;', '', '', NULL, 'Burberrry Brit Sheer Mini  /// 버버리 브리트 쉬어 (EDT) ★미니어쳐★ 4.5ml', '', '', '', '', '', '', '150000', NULL, NULL, NULL, '00018400'),
(167, 'vn', 'N;', '', '', NULL, 'Kenzo Flower Mini /// 겐조 플라워 바이 겐조★미니어쳐★ 4ml', '', '', '', '', '', '', '150000', NULL, NULL, NULL, '0001803401'),
(168, 'vn', 'N;', '', '', NULL, 'Burberry Brit Sheer ///  버버리 브리트 쉬어 (EDT) ★테스터★ 100ml (뚜껑0)', '', '', '', '', '', '', '0', NULL, NULL, NULL, '0001803402 '),
(169, 'vn', 'N;', '', '', NULL, 'Calvin Klein ///  캘빈클라인 씨케이 투 (EDT) ★테스터★ 100ml (뚜껑있음)', '', '<div style=\"margin-left:-18.0pt;\">\r\n<ul>\r\n	<li>Nhãn hiệu:Calvin Klein</li>\r\n	<li>Giới tính:Unisex</li>\r\n	<li>Xuất xứ:Mỹ</li>\r\n	<li>Nồng độ:Eau de Toilette</li>\r\n	<li>Phát hành:2016</li>\r\n	<li>Nhà pha chế:</li>\r\n	<li>Nhóm hương:Hương Gỗ thơm - Woody Aromatic</li>\r\n	<li>Phong cách:Ngọt ngào, Sành điệu</li>\r\n</ul>\r\n</div>\r\n\r\n<div>\r\n<p><strong>Hương đặc trưng</strong></p>\r\n</div>\r\n\r\n<ul>\r\n	<li>Hương đầu: Wasabi, cam Mandarin, lá hoa tím, lê<br />\r\n	Hương giữa: Đá cuội, Rễ cây diên vĩ, hoa hồng, hoa mẫu đơn, hedione<br />\r\n	Hương cuối: cỏ hương bài, nhang, gỗ đàn hương, xạ hương trắng.</li>\r\n	<li>Đánh dấu cho năm 2016,&nbsp;Calvin Klein&nbsp;tiếp tục sứ mệnh huyền thoại đểtrình làng một mùi hương unisex (phi giới tính) mới là&nbsp;CK2, dành cho những người trẻ thế hệ Millennials.&nbsp;Thế hệ Millennials là thế hệ của những con người trẻ trung, dám nghĩ dám làm. Họ dám đấu tranh cho thứ mình yêu, dám làm những điều họ cho là đúng. Họ có thừa tự tin và chẳng ngần ngại trải nghiệm thứ mới một cách khôn ngoan và nhanh nhạy, họ không còn muốn chờ đợi để đón nhận những gì cuộc sống mang đến mà thay vào đó là lời khẳng định rằng họ dám sống và họ xứng đáng sống một cuộc sống mà mình muốn.</li>\r\n	<li><em>CK2</em>&nbsp;được biết đến như một loại nước hoa tươi mát thoáng hương gỗ thành thị. Khởi đầu với một sự kết hợp hiếm có và đầy táo bạo của Wasabi, quýt và lá Violet mang lại sự tươi mát đến nghẹt thở. Hương giữa sự kết hợp sống động của rễ hoa diên vỹ và những cánh hồng đẫm sương sớm rơi vương vãi trên đá cuội ẩm ướt. Hương cuối là sự trở mình tinh tế cùng gỗ đàn hương và trầm ấm áp trộn lẫn hương cỏ Vetiver tươi mát đầy phấn khích.</li>\r\n	<li>Như một sợi dây gắn kết vĩnh cữu giữa những trái tim trẻ khao khát bứt phá,&nbsp;<strong>CK2</strong>&nbsp;không chỉ mở ra một kỷ nguyên mới cho ngành công nghiệp nước hoa unisex mà còn là một trang mới cho thế hệ millennials – nơi mà cuộc sống, tình yêu và hạnh phúc luôn là một sự chọn lựa tự do không giới hạn.</li>\r\n</ul>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '0001803403'),
(170, 'vn', 'N;', '', '', NULL, 'BVL Omnia Coral /// 불가리 옴니아 코럴 (EDT) ★테스터★ 65ml(뚜껑있음)', '', '', '', '', '', '', '0', NULL, NULL, NULL, '0001803404'),
(171, 'vn', 'N;', '', '', NULL, 'Kenzo World Tester  /// 겐조 월드 EDP 75ml', '<div style=\"margin-left:-18.0pt;\">\r\n<ul>\r\n	<li>Nhãn hiệu:Kenzo</li>\r\n	<li>Giới tính:Nữ</li>\r\n	<li>Xuất xứ:Pháp</li>\r\n	<li>Nồng độ:Eau de Parfum</li>\r\n	<li>Phát hành:2016</li>\r\n	<li>Nhà pha chế:Fran, Francis Kurkdjian</li>\r\n	<li>Nhóm hương:Hương Hoa cỏ Gỗ Xạ hương - Floral Woody Musk</li>\r\n	<li>Phong cách:Tươi mát, quyến rũ</li>\r\n	<li><strong>Hương đặc trưng</strong></li>\r\n</ul>\r\n</div>\r\n\r\n<p>Hương đầu: Trái cây đỏ<br />\r\nHương giữa: Hoa mẫu đơn, Hương hoa, Hoa nhài Ai Cập.<br />\r\nHương cuối: Hương Ambroxan.</p>\r\n\r\n<p><strong>World</strong>&nbsp;được cho ra mắt vào năm 2016, là dòng&nbsp;nước hoa mang nhãn hiệu&nbsp;<strong>Kenzo</strong>&nbsp;thuộc nhóm hương hoa cỏ Gỗ - Xạ hương. Fran, Francis Kurkdjian chính là nhà pha chế ra loại nước hoa này.&nbsp;<strong>Kenzo World</strong>&nbsp;là nỗi khát khao cháy bỏng được thoát khỏi xã hội thượng lưu của một cô gái cá tính còn là những đam mê, ao ước được bùng nổ qua những bước nhảy điên rồ và mãnh liệt. Hương nước hoa có mùi ngọt ngào, ấm áp và tràn đầy quyến rũ.</p>\r\n\r\n<p>Mở đầu mùi hương là tông hương thơm ngọt ngào của các loại quả chín mọng như đưa người sử dụng đến với những điều tự nhiên nhất đầy tươi mới. Tông hương tiếp theo, mê hoặc lòng người bằng những nốt hương hoa lãng mạng và tinh tế như thể vừa bước ra khu vườn hoa thơm ngát của hoa mẫu đơn và hoa nhài Ai Cập. Và cuối cùng lưu lại trên da và mơn man sau đó là nốt hương&nbsp;Ambroxan mang người dùng phiêu lưu đến vùng biển tươi mát nhưng cũng ngọt ngào.&nbsp;</p>\r\n\r\n<p><strong>World</strong>&nbsp;mang vẻ ngoài xanh ngọc nhẹ nhàng và cuốn hút, thoạt nhìn bạn sẽ nghĩ&nbsp;<strong>World</strong>giống với viên ngọc bích quí giá nhưng nếu nhìn rõ hơn bạn sẽ nhận ra ngay đó là hình con mắt với điểm nhấn là hạt ngọc treo phía trước và chiếc nắp đen sọc nổi.&nbsp;<strong>Kenzo</strong>luôn biết làm giới hâm mộ ngạc nhiên với những phá cách trong thiết kế, và tạo nên sức hấp dẫn riêng trong từng sản phẩm. Thiết kế đẹp lạ, mùi hương quyến rũ chắc chắc chắn sẽ là phụ kiện, mùi hương không thể thiếu khi các nàng bước xuống phố. Mặc thử một ít mùi hương để tạo ra nét riêng cho mỗi người sử dụng tại nơi xuất hiện.</p>\r\n', '<div style=\"margin-left:-18.0pt;\">\r\n<ul>\r\n	<li>Nhãn hiệu:Kenzo</li>\r\n	<li>Giới tính:Nữ</li>\r\n	<li>Xuất xứ:Pháp</li>\r\n	<li>Nồng độ:Eau de Parfum</li>\r\n	<li>Phát hành:2016</li>\r\n	<li>Nhà pha chế:Fran, Francis Kurkdjian</li>\r\n	<li>Nhóm hương:Hương Hoa cỏ Gỗ Xạ hương - Floral Woody Musk</li>\r\n	<li>Phong cách:Tươi mát, quyến rũ</li>\r\n	<li><strong>Hương đặc trưng</strong></li>\r\n</ul>\r\n</div>\r\n\r\n<p>Hương đầu: Trái cây đỏ<br />\r\nHương giữa: Hoa mẫu đơn, Hương hoa, Hoa nhài Ai Cập.<br />\r\nHương cuối: Hương Ambroxan.</p>\r\n\r\n<p><strong>World</strong>&nbsp;được cho ra mắt vào năm 2016, là dòng&nbsp;nước hoa mang nhãn hiệu&nbsp;<strong>Kenzo</strong>&nbsp;thuộc nhóm hương hoa cỏ Gỗ - Xạ hương. Fran, Francis Kurkdjian chính là nhà pha chế ra loại nước hoa này.&nbsp;<strong>Kenzo World</strong>&nbsp;là nỗi khát khao cháy bỏng được thoát khỏi xã hội thượng lưu của một cô gái cá tính còn là những đam mê, ao ước được bùng nổ qua những bước nhảy điên rồ và mãnh liệt. Hương nước hoa có mùi ngọt ngào, ấm áp và tràn đầy quyến rũ.</p>\r\n\r\n<p>Mở đầu mùi hương là tông hương thơm ngọt ngào của các loại quả chín mọng như đưa người sử dụng đến với những điều tự nhiên nhất đầy tươi mới. Tông hương tiếp theo, mê hoặc lòng người bằng những nốt hương hoa lãng mạng và tinh tế như thể vừa bước ra khu vườn hoa thơm ngát của hoa mẫu đơn và hoa nhài Ai Cập. Và cuối cùng lưu lại trên da và mơn man sau đó là nốt hương&nbsp;Ambroxan mang người dùng phiêu lưu đến vùng biển tươi mát nhưng cũng ngọt ngào.&nbsp;</p>\r\n\r\n<p><strong>World</strong>&nbsp;mang vẻ ngoài xanh ngọc nhẹ nhàng và cuốn hút, thoạt nhìn bạn sẽ nghĩ&nbsp;<strong>World</strong>giống với viên ngọc bích quí giá nhưng nếu nhìn rõ hơn bạn sẽ nhận ra ngay đó là hình con mắt với điểm nhấn là hạt ngọc treo phía trước và chiếc nắp đen sọc nổi.&nbsp;<strong>Kenzo</strong>luôn biết làm giới hâm mộ ngạc nhiên với những phá cách trong thiết kế, và tạo nên sức hấp dẫn riêng trong từng sản phẩm. Thiết kế đẹp lạ, mùi hương quyến rũ chắc chắc chắn sẽ là phụ kiện, mùi hương không thể thiếu khi các nàng bước xuống phố. Mặc thử một ít mùi hương để tạo ra nét riêng cho mỗi người sử dụng tại nơi xuất hiện.</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '0001803405'),
(172, 'vn', 'N;', '', '', NULL, 'Versace Pour Homme Dylan Blue Mini /// 베르사체 뿌르옴므 딜런블루 EDT ★미니어쳐★ 5ml', '', '<ul>\r\n	<li><strong>Nhãn hiệu</strong>:Versace</li>\r\n	<li><strong>Giới tính</strong>:Nam</li>\r\n	<li>Xuất xứ:Ý</li>\r\n	<li>Nồng độ:Eau de Toilette</li>\r\n	<li>Phát hành:2016</li>\r\n	<li>Nhà pha chế:</li>\r\n	<li>Nhóm hương:Hương thơm Dương xỉ - Aromatic Fougere</li>\r\n	<li>Phong cách:Sang trọng, nam tính, hiện đại, mạnh mẽ, thu hút.</li>\r\n</ul>\r\n\r\n<p style=\"margin-left:18.0pt\">Hương đặc trưng</p>\r\n\r\n<ul>\r\n	<li>Hương đầu: Hương nước, Cam Bergamot Calabria, Quả bưởi, Lá sung.</li>\r\n	<li>Hương giữa: Lá hoa tím, Giấy cói, Cây hoắc hương, Tiêu đen, Hương Ambroxan.</li>\r\n	<li>Hương cuối: Xạ hương, Nhang (Hương), Đậu Tonka, Nghệ tây.</li>\r\n</ul>\r\n\r\n<p style=\"margin-left:18.0pt\">Vào cuối tháng 7/2016,&nbsp;<strong>Versace</strong>&nbsp;ra mắt&nbsp;<strong>Dylan Blue</strong>, một hương thơm mới từ bộ sưu tập&nbsp;<strong>Versace Pour Homme</strong>&nbsp;theo giấy phép của Euroitalia, trong đó bao gồm bản gốc từ năm 2008 và các phiên bản Oud Noir từ năm 2013.</p>\r\n\r\n<p style=\"margin-left:18.0pt\"><em>Donatella Versace</em><em>: “Versace Dylan Blue</em>&nbsp;là hương thơm của chàng trai hiện đại. Một mùi hương thể hiện đầy đủ những cá tính, sức mạnh và cả tài năng của họ. Tôi yêu thích cái cách nó truyền tải mùi hương truyền thống, nhưng theo cách vô cùng hiện đại và tươi mới cho hôm nay và ngày mai”</p>\r\n\r\n<p style=\"margin-left:18.0pt\">Là mùi hương mang dấu ấn đặc biệt của các loại gỗ thơm thiên nhiên quý hiếm. Bằng phương pháp tinh chế khéo léo, Versace Dylan Blue mở đầu bằng hương thơm mới mẻ của hỗn hợp cam, chanh và bưởi pha trộn cùng hương lá sung ẩn hiện tạo cảm giác thanh mát sắc sảo mang hương vị Địa Trung Hải. Hương biển quyến rũ, lá Violet và một chút hương tiêu đen ở tầng hương thứ hai góp thêm chút rắn rỏi cho người đàn ông. Nhưng mùi hương tinh tế của gỗ, long diên hương, giấy cói và hoắc hương mới chính là thành phần tạo nên sự quyền lực và mạnh mẽ của hương nước hoa này. Cuối cùng khép lại bằng sự quyến rũ ấm áp của xạ hương và khoáng chất.</p>\r\n\r\n<p>Chai nước hoa mang hình dáng thiết kế vượt thời gian với gam màu thu hút người đối diện ngay từ cái nhìn đầu tiên – xanh dương sáng và vàng gold.&nbsp;Các đường kẻ trên thân chai được điêu khắc tỉ mỉ cùng với biểu tượng quen thuộc của Versace – hình đầu rắn Medusa.&nbsp;Hương thơm phù hợp khi đi làm, những buổi tiệc sang trọng hay những cuộc hẹn hò lãng mạn.</p>\r\n', '', '', '', '', '140000', NULL, NULL, NULL, '0001803406'),
(173, 'vn', 'N;', '', '', NULL, 'Kem Dưỡng Trắng Da Ohui Extreme White Cream', '', '<p>Dưỡng trắng cao cấp với công dụng vượt trội, xua tan thâm nám và ngăn ngừa lão hóa. Mang làn da mịn màng, khỏe khoắn, sáng trắng trở về với bạn. Sản phẩm phù hợp với mọi làn da…</p>\r\n\r\n<p>Từ một làn da khỏe mạnh (không vết thâm, không tàn nhan, không mụn) tiến đến một làn da hoàn hảo (trắng sáng, rạng ngời) là cả một chặng đường dài. Nhưng với Ohui Extreme White Cream con đường không còn xa đến vậy. Được xem là bước cuối cùng để đưa làn da tiềm cận đến độ hoàn hảo. Thành phần dưỡng trắng vượt trội chính là bước đột phá khiến làn da thay đổi rõ rệt sau thời gian ngắn sử dụng.</p>\r\n\r\n<p><strong><em>Ohui Extreme White Cream</em></strong>&nbsp;Là một trong những sản phẩm cao cấp trong bộ Ohui Extreme White</p>\r\n\r\n<p><strong>T</strong><strong>hành phần của Ohui Extreme White Cream</strong></p>\r\n\r\n<p>Mang hình hài nấm lùn, nhưng ngôn ngữ thiết kế vẫn không hề thay đổi. Sang trọng, quý phái toát lên vẻ đẳng cấp đậm chất Ohui. Vẫn đó màu trắng trắng tinh khôi và đường nắp vân lấp lánh. Chiều cao khiêm tốn nhưng vẫn giữ được sự chắc chắn khi cầm nắm và đóng mở.</p>\r\n\r\n<p>Chất kem dưỡng có một sự đậm đặc nhất định, cảm giác kết cấu tương đối dày nhưng không vì thế mà gây bóng hay rít gì. Chất kem mau thấm, không nhờn, mùi thơm nhẹ đặc trưng của hoa thủy tiên mang lại sự thoải mái và dễ chịu khi thoa lên da.</p>\r\n\r\n<p>Sự kết hợp tinh tế giữa 2 thành phần chủ đạo trong cả bộ sản phẩm Ohui Extreme White. Chiết suất cô đặc của Snow Vitamin cung cấp hàm lượng lớn vitamin B quyện với mùi hương hoa thủy tiên (Miracle White Flower). Cho làn da trắng sáng tinh khôi, đẩy lùi các dấu hiệu lão hóa và làm mờ các vết nám.</p>\r\n\r\n<p>Cùng với kỹ&nbsp;thuật penetration Enhancer, thúc đẩy thẩm thấu nhanh và sâu các dưỡng chất vào trong gấp 5 lần thông thường. Đây chính&nbsp;là sự khác biệt lớn nhất, mang đến hiệu quả nhanh chóng.</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng&nbsp;Ohui Extreme White Cream</strong></p>\r\n\r\n<p>Vì chất kem đặc nên chỉ cần lấy 1 lượng nhỏ cũng vừa đủ cho khuôn mặt. Thoa đều nhẹ nhàng lên bề mặt da từ trong ra ngoài.&nbsp;Tận hưởng cảm giác mát lạnh và mùi thơm nhẹ nhàng.</p>\r\n\r\n<p>Thời điểm thích hợp nhất để sử dụng Cream là vào ban đêm để tăng khả năng hấp thụ dưỡng chất. Bảo quản ở nơi thoáng mát, tránh ánh nắng trực tiếp của mặt trời.</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '0001803407'),
(174, 'vn', 'N;', '', '', NULL, 'Nước Hoa Hồng Ohui Extreme White Skin Softener 150ml ', '', '<p>Nước hoa hồng dưỡng trắng da Ohui Extreme White Skin Softener</p>\r\n\r\n<p>Đây là một sản phẩm nổi bật trong set Ohui Extreme White. Nước hoa hồng luôn là một trong những bước chăm sóc tối quan trọng cho da. Không những giúp làm sạch các chất nhờn, chất bã trong lỗ chân lông mà còn làm tăng sức đề kháng cho da, làm giảm các vết thâm nám trên da.</p>\r\n\r\n<p>Thiết kế của Ohui Extreme White Skin Softener</p>\r\n\r\n<p>Với thiết kế chai thủy tinh trắng có lớp vỏ bạc, nắp xoay chắc chắn và đường vân nắp lấp lánh rất sang trọng, đậm chất OHUI. Cùng với đó là hương thơm tự nhiên dễ chịu, thanh nhã khiến bạn thấy nhẹ nhàng và không kém phần hấp dẫn.</p>\r\n\r\n<p>Không giống như các loại nước hoa hồng khác. Skin Softener có dạng gel trong suốt rất sánh và mềm mại. Khi thoa lên da sẽ trở thành dạng nước, cực kỳ tươi mát và dễ chịu.</p>\r\n\r\n<p>Nước hoa hồng thẩm thấu qua da, khô rất nhanh và không bị kích ứng, ngứa hay nổi mụn.</p>\r\n\r\n<p>Thành phần Ohui Extreme White&nbsp;Skin Softener</p>\r\n\r\n<p>Gồm 2 thành phần chính:</p>\r\n\r\n<p>+&nbsp;Snow Vitamin: độc quyền trong các sản phẩm OHUI. Tăng khả năng làm mềm và cung cấp thêm độ ẩm cho da. Đồng thời với hàm lượng cao Vitamin nấm tuyết giúp se khít lổ chân lông. Làm mờ vết thâm hiệu quả và ngăn ngừa lão hoá, mang lại vẻ tinh khôi trẻ trung.</p>\r\n\r\n<p>+&nbsp;Miracle White Flower (Hoa thủy tiên): cho hương thơm tao nhã, thanh khiết. Giữ lại mùi trên da sau mỗi lần sử dụng.</p>\r\n\r\n<p>Hướng dẫn cách sử dụng Ohui Extreme White Skin Softener</p>\r\n\r\n<p>Bước 1:&nbsp;Rửa mặt với nước sạch và lâu khô.</p>\r\n\r\n<p>Bước 2:&nbsp;Cho một lượng nước hoa hồng vừa đủ lên bông tẩy trang rồi thoa đều lên da theo chiều từ trong ra ngoài.</p>\r\n\r\n<p>Sử dụng tốt nhất vào hai buổi sáng tối sang khi rửa mặt.</p>\r\n\r\n<p>Bảo quản ở nơi khô ráo và tránh ánh nắng mặt trời.</p>\r\n\r\n<p>Lưu ý khi sử dụng&nbsp;Ohui Extreme White Skin Softener</p>\r\n\r\n<p>Sản phẩm phù hợp với mọi làn da. Đặc biết tốt với làn da nhờn, lỗ chân lông to, thâm sạm, thường xuyên chịu tác động bởi môi trường, căng thẳng và mệt mỏi trong công việc.</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '0001803408'),
(175, 'vn', 'N;', '', '', NULL, 'Sữa dưỡng trắng Ohui Extreme White Emulsion 130ml', '', '<p>Sữa dưỡng trắng da là một trong những bước cơ bản để chăm sóc da. Cung cấp nước và các dưỡng chất cần thiết để làn da mềm mại, mịn màng và trắng sáng.</p>\r\n\r\n<p>Sữa dưỡng trắng da, giữ ẩm và giúp cân bằng dầu trên da. Đem lại làn da mịn màn, trắng sáng.</p>\r\n\r\n<p>Sản phẩm dưỡng da trong bộ Ohui Extreme White.</p>\r\n\r\n<p>Sữa dưỡng trắng da Ohui Extreme White Emulsion là một trong những bước cơ bản để chăm sóc da. Cung cấp nước và các dưỡng chất cần thiết để làn da mềm mai hơn. Cải thiện sắc tố trên da, mang làn da trắng sáng, rạng rở trở lại với bạn. Được thiết kế cao cấp với chai thủy tin trắng và đường vân lấp lánh bên dưới nắp xoay. Sản phẩm tạo cảm giác chắc chắn, dễ chịu khi cầm trên tay. Đặc biệt là mui hương thơm thoang thoảng đặc trưng của các dòng sản phẩm Ohui Extreme White.</p>\r\n\r\n<p>Sữa dưỡng có độ&nbsp;đặc vừa phải, nhiều nước khi thoa lên da có cảm giác một lớp màng mỏng nhẹ bảo vệ và giữ ẩm cho da. Cảm giác mát mịn và dễ chịu khi thoa lên da, rất phù hợp với những ngày hè nóng bức.</p>\r\n\r\n<p>Thành phần chủ đạo trong cả bộ sản phẩm Ohui Extreme White</p>\r\n\r\n<p>– Snow Vitamin cô đặc, và dễ dàng thẩm thấu nên ngoài việc cung cấp dưỡng ẩm. Được chiết suất từ nấm tuyết chứa rất nhiều vitamin B và E làm chậm quá trình lão hóa, đặc biệt trong việc trị nám và tàn nhan.</p>\r\n\r\n<p>– Kết hợp cùng chiết xuất hoa thuỷ tiên (Miracle White Flower), đem đến mùi thơm nhẹ nhàng, tao nhã cùng với cảm giác mát dịu khi thoa lên bề mặt da.</p>\r\n\r\n<p>Hướng dẫn sử dụng Ohui Extreme White Emulsion</p>\r\n\r\n<p>Đầu tiên làm sạch da măt và lau khô bằng khăn mềm.</p>\r\n\r\n<p>Tiếp theo lấy một lượng nhỏ vừa đủ&nbsp;sữa dưỡng Ohui Extreme White Emulsion&nbsp;thoa đều lên mặt từ trong ra ngoài, vỗ nhẹ để dưỡng chất thẩm thấu vào da.</p>\r\n\r\n<p>Sản phẩm thích hợp sử dụng vào ban ngày trước khi đi làm để làn da được bổ sung đủ độ ẩm. Bảo quán ở nơi khô ráo, tránh ánh nắng mặt trời.</p>\r\n\r\n<p>Lưu ý khi sử dụng Ohui Extreme White Emulsion</p>\r\n\r\n<p>Ohui Extreme White Emulsion không gây kích ứng, phù hợp với mọi&nbsp;làn da. Đăc biệt, rất thích hợp với làn da khô cần bổ sung thêm độ&nbsp;ẩm.</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '0001803409'),
(176, 'vn', 'N;', '', '', NULL, 'Tinh chất dưỡng Ohui Extreme White Serum  ', '', '<p>Sản phẩm có tính năng dưỡng trắng da từ bên trong, chống lão hóa và ngăn ngừa các nếp nhăn xuất hiện. Serum chứa một hàm lượng Snow Vitamin đậm đặc cùng với khả năng thẩm thấu nhanh. Mang làn da trắng sáng rạng rỡ trở lại nhanh chóng.</p>\r\n\r\n<p>Đây là sản phẩm cốt lõi nhất của bộ sản phẩm Ohui Extreme White. Tất cả sự tinh túy của bộ sản phẩm này nằm ở Serum.</p>\r\n\r\n<p>Sở hữu thiết kế dạng chai thủy tinh cao đặc trưng của OHUI. Vẫn màu trắng lộng lẫy và các vân lấp lánh ngay nắp chai toát lên được sự tao nhã, tinh khiết nhưng không kém phần sang trọng.</p>\r\n\r\n<p>Cùng với đó&nbsp;là vòi xịt tiện dụng giúp cho việc lấy tinh chất dễ dàng hơn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tinh chất ở dạng gel trắng và trong. Nhưng cái gọi là mềm như bông tuyết và tan ra thành nước đích thị ở Serum. Sự mềm mại dễ chịu khi bôi lên mặt cùng mùi thơm đặc trưng tạo cảm giác tuyệt vời khi sử dụng. Tinh chất được da hấp thụ rất nhanh và sự mềm mại dương như đến ngay lập tức mà không hề có dấu hiệu bị bọng, rít hay khó chịu.</p>\r\n\r\n<p>Thành phần Ohui Extreme White Serum</p>\r\n\r\n<p>Snow vitamin được chiết suất cô đặc ngâm với Miracle White Flower (hoa thủy tiên). Cho ra hỗn hợp vitamin B với rất nhiều công dụng tốt cho da. &nbsp;Mùi thơm nhẹ nhàng, dễ chịu không kém phần quý phái của hoa thủy tiên.</p>\r\n\r\n<p>Các nguyên liệu thiên nhiên không những mang lại sự an toàn cho da mà còn đẩy lùi lão hóa, xóa mờ vết thâm và đặc biệt là dưỡng trắng da hiệu quả. Khả năng thẩm thấu nhanh và sâu vào da, mang lại hiệu quả nhanh chóng hơn so với các sản phẩm khác.</p>\r\n\r\n<p>Hướng dẫn sử dụng Ohui Extreme White Serum</p>\r\n\r\n<p>Bước 1: Rửa mặt và làm sạch da, có thể rửa bằng nước ấm hoặc sử dụng sửa rửa mặt. Sau đó lau khô bằng khăn mềm.</p>\r\n\r\n<p>Bước 2: Cho một ít vừa đủ, mỗi lần 1-2 giọt tinh chất dưỡng trắng da Serum lên mặt.&nbsp;Thoa đều và kết hợp một số các động tác massage, vỗ nhẹ. Nên tập trung vào các vùng da tối hoặc có nếp nhăn, hiệu quả sẽ cao hơn.</p>\r\n\r\n<p>Bước 3: Không cần rửa mặt lại sau khi sử dụng sản phẩm.</p>\r\n\r\n<p>Lưu ý: Bảo quản sản phẩm ở nơi thoáng mát, khô ráo tránh tiếp xúc với ánh sáng mặt trời.</p>\r\n\r\n<p>Với Serum công dụng sẽ tới sau 2-3 tuần sử dụng đều đặn, da bắt đầu trắng sáng rõ rệt.</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '0001803500'),
(177, 'vn', 'N;', '', '', NULL, 'Sữa Rửa Mặt Trắng Da  - Ohui Extreme White Foam 150ml ', '', '<p>Là dòng sản phẩm làm trắng da không gây kích ứng giúp cải thiện làn da tối màu trở nên sáng trong.<br />\r\n&nbsp;&nbsp;&nbsp;Sữa rửa mặt làm trắng da&nbsp;<a href=\"http://ohui.net.vn/\">OHUI</a>&nbsp;dạng bọt vitamin được chế tác từ các viên nén vitamin, giúp lấy đi bụi bẩn và sừng già chết tích tụ lâu ngày làm da tối màu, đem lại làn da trắng sạch và nếp da mềm mại.<br />\r\n<strong>Thành phần:</strong><br />\r\n&nbsp;<strong>+ Snow Vitamin:&nbsp;</strong>thành phần dưỡng trắng da được chiết suất cô đặc giúp làm mờ nhanh vết sạm nám.<br />\r\n&nbsp;<strong>+ Hoa thủy tiên:&nbsp;</strong>được mệnh danh là ( Tuyết trung hoa ) sẽ đem đến hiệu quả làm dịu da tuyệt vời<br />\r\n&nbsp;&nbsp;&nbsp;Sản phẩm mới&nbsp;<a href=\"http://ohui.net.vn/\"><em>OHUI</em></a>&nbsp;<a href=\"http://ohui.net.vn/ctl/29/Ohui-Lam-Trang-Da.html\"><strong><em>Extreme White</em></strong></a><strong><em>&nbsp;</em></strong>- chứa thành phần&nbsp;<strong>Vitamin nấm tuyết</strong> hàm lượng cao, hấp thụ nhanh chóng, dưỡng trắng, trị nám và ngăn lão hóa, giúp bạn tìm lại làn da trắng sáng trẻ trung rạng ngời.<br />\r\n<strong>Hướng dẫn sử dụng:</strong><br />\r\nLấy một lượng nhỏ bằng đồng xu lên lòng bàn tay, trộn cùng một ít nước để tạo bọt. Xoa bọt lên toàn bộ khuôn mặt và thoa đều như đang mát xa và sau đó rửa mặt bằng nước ấm, kết thúc bằng nước lạnh.<br />\r\n&nbsp;</p>\r\n', '', '', '', '', '600000', NULL, NULL, NULL, '0001803501'),
(178, 'vn', 'N;', '', '', NULL, 'Extreme White 3d Black Mask 27g*6ea / 익스트림 화이트 3D 블랙마스크', '', '<p>Mặt nạ than với thiết kế ba chiều bám chặt vào da. Chỉ sau 20 phút thư giãn cho mỗi lần, mang làn da săn chắc và trắng sáng trở về với bạn. Sản phẩm thân thiện với mọi làn da</p>\r\n\r\n<p>Là một trong những dòng sản phẩm mới nằm trong bộ Ohui Extreme White</p>\r\n\r\n<p>Với tác động ba chiều của công nghệ 3D, nâng cấp độ trắng sáng đến 90%. Mặt nạ 3D Black Mask được xem là liệu trình dưỡng trắng thần tốc nhất, mang lại hiệu quả nhanh chóng nhất</p>\r\n\r\n<p><strong>Mô tả sản phẩm Ohui Extreme White 3D Black Mask</strong></p>\r\n\r\n<p>Là một trong những mặt nạ có thiết kế tốt nhất của Ohui. Sản phẩm có thiết kế 3D phù hợp với đa số các khuôn mặt của phụ nữ Châu Á. Các chổ như mũi, trán, cầm đều phù hợp vừa vặn đến từng chi tiết.</p>\r\n\r\n<p>Chiếc mặt nạ có màu đen bởi thành phần than Bingcho chỉ có ở vùng Kishu của Nhật Bản. Than Bingcho còn được gọi với cái tên Black Diamond (kim cương đen). Với hàm lượng cao các khoáng chất canxi, kali, natri và sắt giúp da điều chỉnh độ ẩm tuyệt với cho da.</p>\r\n\r\n<p>Cùng với đó là hai thành phần chính chủ đạo trong cả bộ Ohui Extreme White. Snow vitamin được chiết suất cô đặc hòa quyện với Miracle White Flower (hoa thủy tiên). Cho ra hỗn hợp chứa rất nhiều vitamin B và E tốt cho làn da. Cùng mùi thơm nhẹ nhàng, dễ chịu không kém phần quý phái của hoa thủy tiên.</p>\r\n\r\n<p>Cuối cùng là Methyl Gluceth, thành phần không thể thiếu trong chiếc mặt nạ của Ohui. Chất dưỡng ẩm tự nhiên có nguồn gốc từ đường bắp và tinh bột ngô. Giữ ẩm và làm mềm da, mang lại cảm giác mềm mại, mìn màng cho da sau khi sử dụng mặt nạ</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng mặt nạ dưỡng trắng da Ohui Extreme White 3D Black Mask</strong></p>\r\n\r\n<p>Đầu tiên canh chỉnh vùng giữa của mặt nạ và mặt rồi áp vào mặt theo thứ tự mũi, mắt, hai má. Với thiết kế 3D tạo sự dễ dàng khi áp vào mặt. Kéo căng các mép mặt nạ để mặt nạ dính chặt vào da. Chợp mắt và thư giản khoản 30 phút, gỡ mặt nạ ra rồi vỗ nhẹ để tinh dầu hấp thụ hoàn toàn vào da.</p>\r\n\r\n<p>Tất cả tạo nên sự thoải mái đến tuyệt vời. Thư giản với mùi hương ngọt ngào cùng với sự ẩm mịn và tươi mát. Xua tan đi mọi áp lực, mệt mỏi trong cuộc sống.</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '0001803502'),
(179, 'vn', 'N;', '', '', NULL, 'Extreme White Peeling 60ml ///  익스트림 화이트 필링', '', '<p>Mặt nạ tẩy da chết OHUI peeling chăm sóc lớp sừng bằng những hạt Vitamin giúp loại bỏ lớp sừng già chết bám lâu ngày trên bề mặt da, mang lại cho bạn làn da mềm mại và tươi sáng.</p>\r\n\r\n<p>Các tế bào da thừa có thể được coi như một rào cản. Khiến các lỗ chân lông bị tắc nghẽn, từ đó sinh ra mụn trứng cá. Tẩy tế bào chết có thể loại bỏ các tế bào da thừa. Khuyến khích các tế bào mới phát triển, giúp da mạnh khỏe. Trở nên săn chắc, hạn chế sự xuất hiện của mụn đầu đen và đầu trắng. Một lợi ích khác của tẩy da chết là có thể làm giảm đốm nâu các sản phẩm làm sáng da sẽ khiến các sắc tố mờ dần.</p>\r\n\r\n<p>Việc tẩy tế bào chết đúng cách rất có ích cho da của bạn. Nó sẽ lấy đi hết những phần tế bào chết không tự bong được và nhường chỗ lại cho những tế bào da mới phát triển. Ngoài ra, tác dụng của việc tẩy tế bào chết còn giúp da dễ dàng hấp thụ kem dưỡng và các chất điều trị tốt hơn rất nhiều. Làm tăng hiệu quả dưỡng da và chăm sóc da.</p>\r\n\r\n<p><strong>Mô tả sản phẩm&nbsp;Tẩy Tế Bào Chết Ohui Extreme White Peeling</strong></p>\r\n\r\n<p>Giữ nguyên thiết kế màu trắng chủ đạo của cả bộ sản phẩm Ohui Extreme White.&nbsp;Ohui Extreme White Peeling dạng ống tuýp nổi bật, sang trọng.</p>\r\n\r\n<p>Tẩy da chết OHUI peeling chăm sóc lớp sừng bằng những hạt Vitamin giúp loại bỏ lớp sừng già chết bám lâu ngày trên bề mặt da, mang lại cho bạn làn da mềm mại và tươi sáng.</p>\r\n\r\n<p><strong>T</strong><strong>hành phần chính:</strong></p>\r\n\r\n<p>+ Snow Vitamin: thành phần dưỡng trắng da được chiết suất cô đặc giúp làm mờ nhanh vết sạm nám.</p>\r\n\r\n<p>+ Hoa thủy tiên: được mệnh danh là ( Tuyết trung hoa ) sẽ đem đến hiệu quả làm dịu da tuyệt vời.</p>\r\n\r\n<p>Sản phẩm mới OHUI Extreme White Snow Vitamin – chứa thành phần Vitamin nấm tuyết ™ hàm lượng cao, hấp thụ nhanh chóng, dưỡng trắng, trị nám và ngăn lão hóa, giúp bạn tìm lại làn da trắng sáng trẻ trung rạng ngời.</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng</strong>:</p>\r\n\r\n<p>Sau khi rửa và lau sạch mặt, bôi kem đều lên mặt, trừ vùng mắt. Xoa đều kem như đang mát xa mặt để tẩy hết lớp sừng già chết bám trên da và sau đó rửa mặt sạch bằng nước ấm.</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '0001803503'),
(180, 'vn', 'N;', '', '', NULL, 'Sữa Rửa Mặt Ohui Miracle Moisture Cleansing Foam 150ml ', '', '<p>Công nghệ Chiffon-Ceramide trong Sữa rửa mặt Ohui Miracle Moisture Cleansing Foam giúp phục hồi hàng rào độ ẩm. Cung cấp dưỡng chất cho da thêm sáng, mịn và trẻ trung.</p>\r\n\r\n<p>Rửa mặt là bước rất quan trọng trong quy trình dưỡng da. Rửa mặt đúng sẽ giúp làm bụi bẩn trên da, loại bỏ những tế bào chết. Giúp làm sạch và cung cấp độ ẩm cho da, giúp các bước dưỡng tiếp theo hiệu quả hơn.</p>\r\n\r\n<p>Công nghệ Chiffon-Ceramide trong Sữa rửa mặt Ohui Miracle Moisture Cleansing Foam giúp phục hồi hàng rào độ ẩm. Cung cấp dưỡng chất cho da thêm sáng, mịn và trẻ trung.</p>\r\n\r\n<p>Mô tả sản phẩm&nbsp;Sữa Rửa Mặt Ohui Miracle Moisture Cleansing Foam<br />\r\nSản phẩm vẫn giữ được nét thiết kế của OHUI. Dạng ống tuýp nhưng lại rất cao cấp, bắt mắt. Màu hồng phấn, đường vân nắp lấp lánh. Cảm giác khi cầm rất chắc chắn và mát tay. Miệng chai nhỏ, rất tiện lợi khi lấy một lượng sữa rửa mặt vừa đủ ra sử dụng.</p>\r\n\r\n<p>Sữa rửa mặt dễ dàng tạo bọt nhỏ mịn, khả năng tạo bọt nhanh và nhiều. Cảm giác rất thoải mái, dễ chịu khi massage trên mặt. Tan nhẹ khi rửa lại với nước.</p>\r\n\r\n<p>Các thành phần chính&nbsp;Sữa Rửa Mặt Ohui Miracle Moisture Cleansing Foam<br />\r\nChiffon Ceramide (nguồn gốc thiên nhiên).Tăng cường độ ẩm cho da<br />\r\nChiffon Ceramide của O HUI có vai trò tăng cường hàng rào bảo vệ da, tái tạo sự mạnh mẽ của các Ceramide trong da, lưu giữ độ ẩm không bị bay hơi làm cho làn da luôn ẩm mịn.</p>\r\n\r\n<p>Chiết xuất từ Mẫu đơn. Bổ sung ẩm, làm dịu da.<br />\r\nMẫu đơn (peony) là loài hoa có khả năng cung cấp độ ẩm liên tục nhằm duy trì những cánh hoa to và rực rỡ màu sắc. Mang một mùi hương dịu ngọt làm cho người ta liên tưởng về hình ảnh một người phụ nữ thanh lịch.</p>\r\n\r\n<p>Hướng dẫn sử dụng Sữa Rửa Mặt Ohui Miracle Moisture Cleansing Foam<br />\r\nLàm ướt mặt.</p>\r\n\r\n<p>Lấy một lượng nhỏ bằng hạt đậu vào lòng bàn tay, tạo bọt với một ít nước.</p>\r\n\r\n<p>Thoa đều lên toàn bộ mặt và mát xa khoảng 30 giây sau đó rửa sạch lại với nước.</p>\r\n', '', '', '', '', '520000', NULL, NULL, NULL, '0001803504'),
(181, 'vn', 'N;', '', '', NULL, 'Kem dưỡng Ohui Miracle Moisture Cream 50gr', '', '<p>Kem cho cảm giác mềm mại dài lâu. Khả năng hấp thụ mạnh mẽ dù thời gian trôi qua lâu nhưng làn da vẫn ẩm mượt. Chứa nhiều dưỡng chất và độ ẩm dồi dào giúp da trẻ trung, tăng cường đàn hồi, sáng và rạng rỡ.</p>\r\n\r\n<p>Thời tiết oi bức nóng nực, ngồi máy lạnh cả ngày và đặc biệt, áp lực công việc, căng thẳng, stress khiến da tổn thương nhanh hơn bao giờ hết. Mất nước là nguyên nhân chính làm làn da bị tàn phá nhanh chóng. Tình trạng da sần sùi, tiết nhờn, không ăn phấn và lão hóa cũng từ đây mà ra.</p>\r\n\r\n<p>Làn da cần được “tiếp nước”. Đó là những gì mà O HUI đã làm, bằng một sản phẩm chuyên về dưỡng ẩm như Miracle Moisture Cream. Kem dưỡng giúp điều chỉnh, bổ sung và duy trì độ ẩm tận sâu bên trong làn da một cách lâu dài.</p>\r\n\r\n<h2>Thiết kế của Ohui Miracle Moisture Cream</h2>\r\n\r\n<p>Mang hình hài nấm lùn, ngôn ngữ thiết kế động bộ với các sản phẩm cũng dòng của hãng. Với lọ thuỷ tinh mờ, chắc chắn và nhìn được sản phẩm bên trong. Cùng công nghệ diamond cut tạo ra những nét vân nhỏ lấp lánh chạy xung quanh. Tất cả tạo nên sự đẳng cấp, sang trọng quen thuộc của O HUI.</p>\r\n\r\n<h2>Thành phần kem dưỡng ẩm Ohui Miracle Moisture Cream</h2>\r\n\r\n<p>1. Chiffon Ceramide (nguồn gốc thiên nhiên), độc quyền của O HUI. Lớp sừng này được cấu tạo bởi các Ceramide nằm sau trong da sẽ giảm đi. Bởi các thành phần trong kem dưỡng ẩm, mang lại làn da mịn màn như bánh Chiffon.</p>\r\n\r\n<p>2. Chiết xuất từ Hoa Mẫu Đơn cùng các thành phần như White Flower, Green note, Herbal mix. Không những mang lại mùi hương tươi mát, nhẹ nhàng, tinh khiết của mẫu đơn. Mà còn bổ sung ẩm cho làn da, mang lại làn da đầy sinh khí “như bông hoa được tưới nước”. Cảm giác khô rát, mệt mỏi, áp lực được xua tan nhanh chóng.</p>\r\n\r\n<p>Kết cấu kem cho cảm giác mềm mại dài lâu. Khả năng hấp thụ mạnh mẽ dù thời gian trôi qua lâu nhưng làn da vẫn ẩm mượt.</p>\r\n\r\n<p>Chứa nhiều dưỡng chất và độ ẩm dồi dào giúp da trẻ trung, tăng cường đàn hồi, sáng và rạng rỡ.</p>\r\n\r\n<p>Với các thành phần thiên nhiên, sản phẩm thân thiện với mọi làn da. Đặc biệt với cả&nbsp;những làn&nbsp;da nhạy cảm, dễ mẫn cảm, mẫn ngứa với mỹ phẩm.</p>\r\n\r\n<p>Tinh chất khá là đậm đặc. Nhưng không vì thế mà tạo sự khó chịu. Trái lại kem thẩm thấu nhanh, mát mịn và không gây bóng hay nhờn. Cùng với đó là mùi thơm đặc trưng của hoa mẫu đơn, thoang thoảng mùi sâm đất hàn quốc.</p>\r\n\r\n<h2>Hướng dẫn sử dụng&nbsp;kem dưỡng ẩm Ohui Miracle Moisture Cream</h2>\r\n\r\n<p>Chất kem tương đối đậm đặc, vì thế chỉ cần 1 lượng nhỏ là vừa đủ cho khuôn mặt. Thoa đều nhẹ nhàng từ giữa mặt ra hai bên theo chiều cấu tạo da.</p>\r\n\r\n<p>Cream dùng ở bước sau cùng của quy trình chăm sóc da. Thời gian thích hợp để sử dụng sản phẩm là vào ban đêm, để tăng khả năng hấp thụ dưỡng chất.</p>\r\n\r\n<p>Bảo quản ở nơi thoáng mát, tránh tiếp xúc trực tiếp với ánh sáng mặt trời.</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '0001803505'),
(182, 'vn', 'N;', '', '', NULL, 'Sữa dưỡng Ohui Miracle Moisture Emulsion 130ml ', '', '<p>Sản phẩm giúp điều chỉnh, bổ sung và duy trì độ ẩm tận sâu bên trong làn da một cách lâu dài. Chấm dứt tình trạng mất nước buộc da phải tiết nhờn gây nhạy cảm. Đồng thời, các vết thâm mụn sẽ mờ hẳn đi sau một thời gian sử dụng.</p>\r\n\r\n<p>Sản phẩm dưỡng da nằm trong bộ Ohui Micrcle Moisture Special</p>\r\n\r\n<p>Với thành phần tự nhiên Chiffon Ceramide, sản phẩm giúp điều chỉnh, bổ sung và duy trì độ ẩm tận sâu bên trong làn da một cách lâu dài. Chấm dứt tình trạng mất nước buộc da phải tiết nhờn gây nhạy cảm. Làn da như được tưới nước trở nên tràn đầy sức sống. Đồng thời, các vết thâm mụn sẽ mờ hẳn đi sau một thời gian sử dụng.</p>\r\n\r\n<p>Với thiết kế chai thủy tinh mờ, màu hồng và hơi dễ bám dấu vân tay. Cực đẹp và sang trọng, cảm giác cằm nắm và nắp xoay rất chắc chắn. Đường vân trên nắp lấp lánh ánh&nbsp;kim cương rất đẹp. Miệng chai thủy tinh thuộc tuýp miệng nhỏ, để tránh bị trào ra khi quá tay.</p>\r\n\r\n<p>Sữa dưỡng OHUI Miracle Moisture Emulsion hơi sánh, màu trắng đục. Nếu ai đó đã từng dùng qua sâm đất hàn quốc thì mùi sữa dưỡng có mùi thơm tương tự như vậy, rất dễ chịu và thoải mái.</p>\r\n\r\n<h2>Thành phần Ohui Miracle Moisture Emulsion</h2>\r\n\r\n<p>Chiffon Ceramide (nguồn gốc thiên nhiên): Tạo hàng rào bảo vệ da, giữ ẩm cho làn da. Giúp làn da luôn trong tình trạng ẩm mịn.</p>\r\n\r\n<p>Chiết xuất từ mẫu đơn (Peony): Loài hoa có khả năng cung cấp độ ẩm liên tục cho da. Mùi hương dịu dàng, ngọt ngọt mang cảm giác thoải mái, dễ chịu.</p>\r\n\r\n<h2>Hướng dẫn sử dụng Ohui Miracle Moisture Emulsion</h2>\r\n\r\n<p>Sử dụng tốt nhất ngày 2 lần sáng tối</p>\r\n\r\n<p>Bằng cách làm ướt da mặt, sau cho một lượng nhỏ vừa đủ thoa đều khắp mặt. Nhẹ nhàng xuôi theo chiều lỗ chân lông.</p>\r\n\r\n<p>Trong khoảng 20-30 giây xoa đều nhớ kèm theo vỗ nhẹ để sữa có thể thầm thấu vào lỗ chân lông. Làn da sẽ không có cảm giác khó chịu sau khi rửa lại bằng nước.</p>\r\n\r\n<p>Đừng quên vệ sinh thường xuyên miệng chai, tránh bụi bẩn và tập trung vi khuẩn.</p>\r\n\r\n<p>Bảo quản ở nơi thoáng mát, tránh tiếp xục trực tiếp với ánh sáng mặt trời.</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '0001803506'),
(183, 'vn', 'N;', '', '', NULL, 'Nước hoa hồng Ohui Miracle Moisture Skin Softener 150ml ', '', '<p>Nước hoa hồng Ohui Miracle Moisture Skin Softener chiết xuất hoàn toàn từ thiên nhiên. Đã được hãng kiểm định là không gây kích ứng da.</p>\r\n\r\n<h2>Giới thiệu:</h2>\r\n\r\n<p>Nước hoa hồng Ohui Miracle Moisture Skin Softener chiết xuất hoàn toàn từ thiên nhiên. Đã được hãng kiểm định là không gây kích ứng da.</p>\r\n\r\n<p>OHUI đã khai thác dòng sản phẩm độc quyền tạo nên lớp dưỡng ẩm có thành phần thiên nhiên để bảo vệ bề mặt da, giúp giữ ẩm cho da.</p>\r\n\r\n<p>Công dụng: dưỡng ẩm, cấp nước, cải thiện da bị hư tổn. Phù hợp với mọi loại da.</p>\r\n\r\n<p>Thành phần: Chiffon Ceramide TM, dịch cây phong, Hyaluronic acid (phân tử dạng gel có khả năng giữ nước), chiết xuất từ thược dược, dầu hoa oải hương, dầu hoa cúc, mùi hương: mùi đào ngọt ngào!</p>\r\n\r\n<h2>Hướng dẫn sử dụng Nước Hoa Hồng Cho Da Dầu Ohui Miracle Moisture Skin Softener – Fresh</h2>\r\n\r\n<p>Cho một lượng sản phẩm vừa đủ vào lòng bàn tay. Nhẹ nhàng dùng 2 tay thoa đều lên mặt và massage để sản phẩm được thẩm thấu tốt nhất.</p>\r\n\r\n<p>Sử dụng sản phẩm tốt nhất là bạn nên sử dụng vào bạn đêm những lúc đi ngủ . Lúc đấy da sẽ không hoạt động nhiều thì dưỡng chất sẽ lan tỏa đều trên các cơ mặt giúp tạo độ ẩm và căng min làn da. Chỉ qua một đêm là bạn sẽ cảm thấy sự khác biệt trông thấy ở sản phẩm này.</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '0001803507'),
(184, 'vn', 'N;', '', '', NULL, 'Miracle Moisture Ampoule 777 7ml*7EA ///  미라클 모이스처 앰플777', '', '<p>Một sản phẩm có giá tốt nhất trong Set Ohui Miracle Moisture</p>\r\n\r\n<p>Là chai thủy tinh với màu hồng chủ đạo, cùng màu trắng nhẹ phớt phấn. Nắp xoay trắng bóng chắc chắn và đường vân nắp lấp lánh rất sang trọng. Các thông tin của sản phẩm được in mặt trước gần dưới thân chai. Có thể thấy được thiết kế của Ohui không những cao cấp mà còn hài hòa, bắt mắt.</p>\r\n\r\n<p>Nếu như các nước hoa hồng khác dạng nước. Thì với Ohui, các nước hoa hồng của hãng là dạng gel, độ sánh vừa phải. Đánh lên da rất mát và dễ chịu. Mùi thơm thoang thoảng hương hoa Mẫu Đơn nhẹ nhàng, dễ chịu.</p>\r\n\r\n<p>1. Thành phần Chiffon Ceramide của nước hoa hồng, thân thiện với mọi làn da. Các Ceramide trong da được tái tạo mạnh mẽ. Giúp làn da bổ sung độ ẩm, tăng cường hàng rào lưu giữ độ ẩm không bị bay hơi. Để làn da luôn ẩm mịn cả ngày</p>\r\n\r\n<p>2. Chiết xuất từ Hoa Mẫu Đơn với nguồn gốc từ thiên nhiên. Không những mang lại mùi hương nhẹ nhàng, dễ chịu. Mà còn bổ sung ẩm cho da ngay sau khi rữa mặt. Như được tưới nước vào, làn da trở nên tràn đầy sinh khí.</p>\r\n\r\n<p>Hướng dẫn sử dụng Ohui Miracle Moisture Skin Softener</p>\r\n\r\n<div>\r\n<p>Nước hoa hồng sử dụng tốt nhất là sau khi rửa mặt. Vào hai buổi sáng tối. Lấy 1 lượng vừa đủ thoa đều lên toàn bộ gương mặt theo chiều từ trong ra ngoài. Bảo quán ở nơi khô ráo, tránh ánh nắng mặt trời.</p>\r\n</div>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '0001803508'),
(185, 'vn', 'N;', '', '', NULL, 'Nước Hoa Hồng Dưỡng Trắng Da Whoo Radiant White Balancer 150ml ', '', '<p>Nước hoa hồng có tính năng làm trắng với thành phần thất hương bát bạch tán và nước cam cúc đun sôi để nguội từ hoa cúc tự nhiên được hấp thụ sâu trong da, đem lại sắc da sáng trong, thanh nhã như bạch ngọc, đồng thời, giúp nâng cao hiệu quả các sản phẩm ở bước tiếp theo.</p>\r\n\r\n<p>Với chiết xuất từ thảo mộc. Các sản phẩm chăm sóc và dưỡng da, trang điểm của The history of Whoo. Kết hợp tinh hoa làm đẹp hoàng cung và những công nghệ làm đẹp hiện đại nhất hiện nay.</p>\r\n\r\n<p>Nước cân bằng dưỡng trắng Whoo Gongjinhyang Seol Radiant White Balancer. Thẩm thấu sâu cung cấp dưỡng chất, cân bằng độ ẩm và dưỡng trắng da, cho bạn làn da trắng hồng rạng rỡ.</p>\r\n\r\n<p><strong>Thành phần</strong></p>\r\n\r\n<p>– Thất hương bát bạch tán – thành phần chăm sóc vết nám ẩn dấu bên trong. Đơn thuốc Đông y hoàng cung làm trắng không chỉ mang lại độ sáng cho da. Giúp điều hoà ngũ tạng lão hoá mà còn chỉnh đốn cả tinh thần mệt mỏi.</p>\r\n\r\n<p>– Thất hương gồm: Mộc hương, Đinh hương, Bạch đàn hương, Cam tùng hương, Đinh hương bì, Trầm hương, Quất hồng.</p>\r\n\r\n<p>– Bát bạch tán gồm: Bạch truật, Bạch cập, Bạch thược dược, Bạch sâm, Bạch tật lệ, Bạch phục linh, Bạch quả, Bạch liêm.</p>\r\n\r\n<p>– Chiết xuất cam cúc – thành phần chăm sóc các vết nám nhìn thấy. Thành phần làm trắng mới, độc quyền của LG giúp loại bỏ tận gốc các độc tố melanin có thể nhìn thấy bằng mắt.</p>\r\n\r\n<p><strong>Công dụng&nbsp;</strong></p>\r\n\r\n<p>– Cân bằng độ ẩm tức thời cho da.</p>\r\n\r\n<p>– Cung cấp dưỡng chất trắng sáng.</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng&nbsp;</strong></p>\r\n\r\n<p>– Dùng sau khi rửa mặt.</p>\r\n\r\n<p>– Thấm 1 lượng vừa đủ vào cotton pad.</p>\r\n\r\n<p>– Lau nhẹ nhàng toàn mặt theo chiều cấu tạo da.</p>\r\n\r\n<p><strong>Bảo quản</strong></p>\r\n\r\n<p>– Bảo quản nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp</p>\r\n\r\n<p>– Để xa tầm tay trẻ em</p>\r\n', '', '', '', '', '900000', NULL, NULL, NULL, '0001803510'),
(186, 'vn', 'N;', '', '', NULL, 'Sữa Dưỡng Trắng Da Whoo Radiant White Emulsion 110ml ', '', '<p>Cảm giác sử dụng nhẹ nhàng, mềm mại, tan chảy tức thì trên da ngay khi thoa cùng cảm giác ẩm mịn, nhẹ nhàng, không gây căng khô, dính rít sau khi thoa. Mang làn da mịn màng trở về với bạn.</p>\r\n\r\n<p>Với chiết xuất từ thảo mộc, các sản phẩm chăm sóc và dưỡng da, trang điểm của The history of Whoo kết hợp tinh hoa làm đẹp hoàng cung và những công nghệ làm đẹp hiện đại nhất hiện nay.</p>\r\n\r\n<p><strong>Đặc điểm </strong></p>\r\n\r\n<p>Sản phẩm được thiết kế cao cấp. Đặc trưng hoàng cung đến từ whoo.</p>\r\n\r\n<p>Sữa dưỡng ẩm mịn, mềm mại. Tan chảy tức thì trên da ngay khi thoa</p>\r\n\r\n<p>Thành phần làm trắng chiết xuất cam cúc và thất hương bát bạch tán giúp làm sạch da. Đồng thời, đây cũng là các thành phần thiên nhiên, rất thân thiện với da.</p>\r\n\r\n<p><strong>Công dụng&nbsp;</strong></p>\r\n\r\n<p>– Bổ sung và cân bằng độ ẩm cho da. Duy trì sự cân bằng da</p>\r\n\r\n<p>– Giúp da trắng sáng, mềm mại và đầy sinh khí.</p>\r\n\r\n<p>– Giải quyết các vấn đề lão hóa da</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng&nbsp;</strong></p>\r\n\r\n<p>– Rửa sạch mặt và thoa nước cân bằng.</p>\r\n\r\n<p>– Lấy một lượng sữa dưỡng vừa đủ chấm thành 5 điểm trên mặt và dàn trải đều trên bề mặt da</p>\r\n\r\n<p>– Sau đó, xoa hai tay và áp vào da hoặc vỗ nhẹ theo chiều cáu tạo da để tăng độ thẩm thấu của sữa dưỡng.</p>\r\n', '', '', '', '', '1020000', NULL, NULL, NULL, '0001803511');
INSERT INTO `bakcodt_content_ln` (`id`, `ln`, `ln_fields_extra`, `ln_icon`, `ln_image`, `sef_url`, `name`, `intro`, `content`, `title`, `desc`, `keyword`, `priceSale`, `priceBuy`, `status`, `mobilePhone`, `link`, `codePro`) VALUES
(187, 'vn', 'N;', '', '', NULL, 'Kem dưỡng da Whoo Radiant White Moisture Cream 60ml ', '', '<h1>&nbsp;</h1>\r\n\r\n<p>Kem dưỡng trắng Whoo Gongjinhyang Seol Radiant White Moisture Cream Hoàng Cung phiên bản mới 2017. Được nâng cấp thêm thành phần xuyên suốt bộ dưỡng Gongjinhyang seol 2017. Cam cúc với kỹ thuật xử lý lạnh. Cùng với cấu trúc thể sản phẩm mạng lưới giọt nước và ngọc trai nhân sâm núi. Mang lại hiệu quả dưỡng trắng mạnh mẽ cùng khả năng bổ sung ẩm, chống lão hóa cao giúp mang lại làn da tỏa sáng như ngọc trai</p>\r\n\r\n<p><strong>Thành Phần</strong></p>\r\n\r\n<p>+ Ngọc trai nhân sâm núi: tập trung chăm sóc sự trắng sáng trong suốt của làn da</p>\r\n\r\n<p>+ bạch dương tằm: chăm sóc đặc biệt vùng da tối màu và làm mờ các đốm nâu sậm</p>\r\n\r\n<p>+ Cam cúc: Cung cấp độ ẩm và tăng độ trong suốt và giảm sự tối màu. Với công nghệ tiên tiến sử lý lạnh giúp giữ ẩm gấp 10 lần bình thường</p>\r\n\r\n<p>+ Cống thần đơn: Giúp giải quyết vấn đề thủy thăng hỏa giáng làm da ổn định nhiệt độ và chăm sóc da ẩm mịn, săn chắc</p>\r\n\r\n<p>+ Thất hương bất bạch tán: ngăn chặn sự tối màu do nội thương</p>\r\n\r\n<p>+ Tuyết cam tán: Tăng cường dưỡng trắng da vượt trội</p>\r\n\r\n<p><strong>Đặc Điểm </strong></p>\r\n\r\n<p>+ Dạng kem mềm mại như kem tươi.</p>\r\n\r\n<p>+ Cảm giác da khô thoáng sau khi thoa</p>\r\n\r\n<p>+ Dưỡng trắng da</p>\r\n\r\n<p>+ Làm mát và giải nhiệt</p>\r\n\r\n<p>+ Cung cấp ẩm và tăng độ trong suốt cho da</p>\r\n\r\n<p>+ Láng mượt được duy trì đến tận hôm sau</p>\r\n\r\n<h2><strong>Cách sử dụng&nbsp;</strong></h2>\r\n\r\n<p>Sau khi rửa mặt sạch.</p>\r\n\r\n<p>Lấy lượng kem bằng hạt bắp chấm đều lên Trán Cằm 2 má, mũi.</p>\r\n\r\n<p>Masage nhẹ nhàng 1 lần nữa để giúp các giọt nước vỡ tan thẩm thấu sâu vào trong da.</p>\r\n', '', '', '', '', '2500000', NULL, NULL, NULL, '0001803512'),
(188, 'vn', 'N;', '', '', NULL, 'Tinh Chất Dưỡng Trắng Da Whoo Radiant White Essence 45ml ', '', '<p>Cảm giác sử dụng nhẹ nhàng, mềm mại, tan chảy tức thì trên da ngay khi thoa cùng cảm giác ẩm mịn, nhẹ nhàng, không gây căng khô, dính rít sau khi thoa. Mang làn da mịn màng trở về với bạn</p>\r\n\r\n<p>ới chiết xuất từ thảo mộc, các sản phẩm chăm sóc và dưỡng da, trang điểm của The history of Whoo kết hợp tinh hoa làm đẹp hoàng cung và những công nghệ làm đẹp hiện đại nhất hiện nay.</p>\r\n\r\n<p><strong>Đặc điểm </strong></p>\r\n\r\n<p>Sản phẩm được thiết kế cao cấp. Đặc trưng hoàng cung đến từ whoo.</p>\r\n\r\n<p>Sữa dưỡng ẩm mịn, mềm mại. Tan chảy tức thì trên da ngay khi thoa</p>\r\n\r\n<p>Thành phần làm trắng chiết xuất cam cúc và thất hương bát bạch tán giúp làm sạch da. Đồng thời, đây cũng là các thành phần thiên nhiên, rất thân thiện với da.</p>\r\n\r\n<p><strong>Công dụng&nbsp;</strong></p>\r\n\r\n<p>– Bổ sung và cân bằng độ ẩm cho da. Duy trì sự cân bằng da</p>\r\n\r\n<p>– Giúp da trắng sáng, mềm mại và đầy sinh khí.</p>\r\n\r\n<p>– Giải quyết các vấn đề lão hóa da</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng&nbsp;</strong></p>\r\n\r\n<p>– Rửa sạch mặt và thoa nước cân bằng.</p>\r\n\r\n<p>– Lấy một lượng sữa dưỡng vừa đủ chấm thành 5 điểm trên mặt và dàn trải đều trên bề mặt da</p>\r\n\r\n<p>– Sau đó, xoa hai tay và áp vào da hoặc vỗ nhẹ theo chiều cáu tạo da để tăng độ thẩm thấu của sữa dưỡng.</p>\r\n', '', '', '', '', '650000', NULL, NULL, NULL, '0001803513'),
(189, 'vn', 'N;', '', '', NULL, 'Tinh Chất Trị Thâm Mắt Whoo Radiant White Eye Serum 25ml', '', '<h1>Tinh chất dưỡng quầng thâm vùng mắt Whoo Gongjinhyang Seo Radiant White Eye Serum. Dành riêng cho vùng da nhạy cảm quanh mắt, có chức năng cải thiện quầng thâm, nếp nhăn, tăng đàn hồi, làm săn chắc vùng da quanh mắt và không còn cảm giác mệt mỏi.</h1>\r\n\r\n<p>Vẻ đoan trang của hoàng hậu, sự cao quý của văn hóa hoàng cung. Sự thanh lịch, tao nhã của phương Đông đều được truyền tải nguyên vẹn trong các sản phẩm của Whoo</p>\r\n\r\n<p>Tinh chất dưỡng quầng thâm vùng mắt Whoo Gongjinhyang Seo Radiant White Eye Serum. Dành riêng cho vùng da nhạy cảm quanh mắt, có chức năng cải thiện quầng thâm, nếp nhăn, tăng đàn hồi, làm săn chắc vùng da quanh mắt và không còn cảm giác mệt mỏi.</p>\r\n\r\n<p><strong>Thành Phần </strong></p>\r\n\r\n<p>+ Bổ luân đơn: tái cơ cấu vùng da quanh mắt. Thúc đẩy hệ tuần hoàn để củng cố hệ thống bạch cầu. Bạch Mai: chống oxi hóa.</p>\r\n\r\n<p>+ Trần Bì: Bù đắp collagen bị mất. Hoa mẫu Đơn: Tổng hợp collagen làm da vùng mắt săn chắc và không còn cảm giác mệt mỏi.</p>\r\n\r\n<p>+ Tuyết luân đơn: cải thiện quầng thâm công thức đặc biệt cho vùng da tối màu quanh mắt. Làm sáng và giúp da căng mịn. Lá Xô Thơm Đỏ: Chống oxi hóa dưỡng trắng. Tử Thảo: Chống oxi hóa dưỡng trắng. Tang bạch Bì: Chống oxi hóa bù đắp collagen bị mất. Làm sáng vùng da dưới mắt, giảm quầng thâm</p>\r\n\r\n<p>+ Thành phần nâng cấp: Ngọc trai sâm núi TM chăm sóc vùng da nhạy cảm và làm sáng vùng mắt</p>\r\n\r\n<p><strong>Đặc Điểm </strong></p>\r\n\r\n<p>+ Thiết kế sản phẩm hoàng cung cổ điển. Sang trọng và cao cấp.</p>\r\n\r\n<p>+ Kết cấu gel nhẹ nhàng, dễ dàng sử dụng vào mùa hè</p>\r\n\r\n<p>+ Làm mát tức thì</p>\r\n\r\n<p>+ Thành phần thảo dược thiên nhiên. Phù hợp với mọi làn da</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng </strong></p>\r\n\r\n<p>Sau các bước làm sạch.</p>\r\n\r\n<div>\r\n<p>Lấy tinh chất bằng hạt đậu chia 2 phần để trên đầu 2 ngón tay áp út vỗ nhẹ nhàng vùng da quanh mắt. Cho tinh chất thẩm thấu và đc massage nhẹ nhàng tan chảy trên vùng da mắt giúp da hấp thụ nhanh và tốt nhất.</p>\r\n</div>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '0001803514'),
(190, 'vn', 'N;', '', '', NULL, 'Gel tẩy tế bào chết Whoo Brightening Peeling 100ml ', '', '<p>Gel tẩy tế bào chết Whoo Brightening Peeling Gel</p>\r\n\r\n<p>Sản phẩm dạng gel giúp nhẹ nhàng loại bỏ sừng già chết, bụi bẩn và nhờn trên da. đem lại làn da tươi sáng, mềm mại và thanh khiết mà không gây kích ứng. Ngăn chặn sự tối màu da do nội thương. Mang lại làn da tươi sáng và tràn đầy sinh khí.</p>\r\n\r\n<p>Việc tẩy tế bào chết và các lớp sừng già này rất quan trọng, vì nếu để lâu sẽ hình thành nên các sắc tố gây nên tình trạng sạm màu, thâm nám da</p>\r\n\r\n<p>Gel Tẩy Tế Bào Chết Làm Sáng Da Whoo Brightening Peeling Gel có công dụng tẩy tế bào chết, các lớp sừng già tối màu một cách hiệu quả.</p>\r\n\r\n<p>Ngoài ra, sản phẩm còn có công dụng làm sáng da từ sâu bên trong. Sản phẩm có chiết xuất từ các thành phần thảo dược quý cần thiết cho vẻ đẹp của làn da nên sản phẩm phù hợp cho cả làn da nhạy cảm nhất và không gây kích ứng.</p>\r\n\r\n<p>Gel tẩy tế bào chết Whoo Gongjinhyang Seol Brightening Peeling Gel tác động nhẹ nhàng lên da, cho làn da được thư giãn và cải thiện tình trạng hiện tại của da</p>\r\n\r\n<p><strong>Đặc trưng </strong></p>\r\n\r\n<p>Chiết xuất tang bạch bì và vỏ rễ dâu tằm. Có khả năng làm trắng sáng làn da tối, xỉn màu và có vết sạm nám do ánh sáng mặt trời, yếu tố nội tiết, trầm cảm và stress. Đồng thời ngăn ngừa sự hình thành của các hắc tố. Mang lại làn da tươi sáng và trong suốt hoàn hảo.</p>\r\n\r\n<p><strong>Công dụng&nbsp;</strong></p>\r\n\r\n<p>– Làm sạch da và nhẹ nhàng lấy đi tế bào chết trên da</p>\r\n\r\n<p>– Làm sáng da từ sâu bên trong cho da đều màu và trắng hồng rạng rỡ</p>\r\n\r\n<p>– Ngăn chặn việc hình thành các vết sạm nám trên da</p>\r\n\r\n<p>– Giảm thiểu các nguyên nhân gây nên lão hóa da</p>\r\n\r\n<h2><strong>Hướng dẫn sử dụng&nbsp;</strong></h2>\r\n\r\n<p>Làm ướt mặt. Lấy một lượng sản phẩm vừa đủ ra tay. Thoa đều và massage nhẹ nhàng theo chiều từ dưới lên.</p>\r\n\r\n<p>Sau đó rửa sạch lại với nước.</p>\r\n\r\n<p>Sử dụng từ 1-2 lần/tuần</p>\r\n\r\n<h2><strong>Bảo quản</strong></h2>\r\n\r\n<p>Nơi khô ráo, thoáng mát</p>\r\n\r\n<p>Tránh ánh nắng trực tiếp</p>\r\n\r\n<p>Để xa tầm tay trẻ em</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '0001803515'),
(191, 'vn', 'N;', '', '', NULL, 'Sữa rửa mặt dưỡng trắng Whoo Brightening Cleansing Foam (180ml)', '', '<p>Sữa rửa mặt với nhiều bọt xà phòng nhỏ mịn. Giúp làm sạch bụi bẩn tận sâu trong lỗ chân lông. Cùng thành phần thất hương bát bạch tán giúp da ẩm mịn, sáng trong như tuyết.</p>\r\n\r\n<p>Các sản phẩm của Whoo đều là dòng cao cấp với tác động chuyên sâu. Hầu hết tập trung vào duy trì sự cân bằng da. Giải quyết các vấn đề lão hóa da chứ không tập trung vào các vấn đề da thông thường. Nên thích hợp cho những bạn muốn da đẹp hơn, sáng hơn và chống lão hóa.</p>\r\n\r\n<p>Sữa Rửa Mặt Làm Sáng Da Gongjinhyang Seol Brightening Cleansing Foam nằm trong dòng sản phẩm Gongjinhyang Seol của Whoo. Với các hạt bọt mịn giúp loại bỏ bụi bẩn, bã nhờn sâu trong lỗ chân lông của da, đồng thời hỗ trợ làm trắng và duy trì độ ẩm mịn cho da.</p>\r\n\r\n<h2>Thành phần</h2>\r\n\r\n<p>– Thất hương bát bạch tán – thành phần chăm sóc vết nám ẩn dấu bên trong. Đơn thuốc Đông y hoàng cung làm trắng không chỉ mang lại độ sáng cho da. Giúp điều hoà ngũ tạng lão hoá mà còn chỉnh đốn cả tinh thần mệt mỏi.</p>\r\n\r\n<p>– Thất hương gồm: Mộc hương, Đinh hương, Bạch đàn hương, Cam tùng hương, Đinh hương bì, Trầm hương, Quất hồng.</p>\r\n\r\n<p>– Bát bạch tán gồm: Bạch truật, Bạch cập, Bạch thược dược, Bạch sâm, Bạch tật lệ, Bạch phục linh, Bạch quả, Bạch liêm.</p>\r\n\r\n<p>– Chiết xuất cam cúc – thành phần chăm sóc các vết nám nhìn thấy: Thành phần làm trắng mới, độc quyền của LG giúp loại bỏ tận gốc các độc tố melanin có thể nhìn thấy bằng mắt.</p>\r\n\r\n<h2>Công dụng</h2>\r\n\r\n<p>– Sữa rửa mặt sáng da Whoo Brightening Cleansing Foam với nhiều bọt xà phòng nhỏ mịn giúp làm sạch bụi bẩn nằm sâu trong lỗ chân lông</p>\r\n\r\n<p>– Giúp lưu thông điều hòa khí huyết trên da, bảo vệ da khỏi những chất có hại từ môi trường bên ngoài, tăng cường các chức năng của da</p>\r\n\r\n<p>– Sản phẩm còn đem lại công dụng loại bỏ các vết sạm nám, tối màu trên bề mặt da lẫn các vết nám ẩn sâu trong da</p>\r\n\r\n<p>– Chứa dưỡng chất hỗ trợ làm sáng da.</p>\r\n\r\n<h2>Hướng dẫn sử dụng</h2>\r\n\r\n<p>– Rửa mặt qua với nước</p>\r\n\r\n<p>– Lấy một ít sửa vào lòng bàn tay, xoa đều tạo bọt và thoa lên da.</p>\r\n\r\n<p>– Massage mặt nhẹ nhàng theo chiều cấu tạo da từ 30 giây đến 1 phút.</p>\r\n\r\n<p>– Rửa sạch lại với nước</p>\r\n\r\n<h2>Bảo quản</h2>\r\n\r\n<p>– Bảo quản nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp</p>\r\n\r\n<p>– Để xa tầm tay trẻ em</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '650000', NULL, NULL, NULL, '0001803516'),
(192, 'vn', 'N;', '', '', NULL, 'HANHUI SNAIL SKIN REFINISHER (SPF 50+PA+++)  _ KEM NỀN TỪ TINH CHẤT ỐC SÊN', '', '<p>Giới&nbsp;thiệu&nbsp;sản&nbsp;phẩm&nbsp;Kem&nbsp;nền&nbsp;từ&nbsp;tinh&nbsp;chất&nbsp;ốc&nbsp;sên&nbsp;HANHUI&nbsp;SNAIL&nbsp;SKIN&nbsp;REFINISHER&nbsp;CC&nbsp;CREAM:</p>\r\n\r\n<p>Ngày&nbsp;nay&nbsp;trên&nbsp;thị&nbsp;trường&nbsp;có&nbsp;rất&nbsp;nhiều&nbsp;loại&nbsp;kem&nbsp;nền&nbsp;để&nbsp;bạn&nbsp;có&nbsp;thể&nbsp;lựa&nbsp;chọn.Nhưng&nbsp;để&nbsp;chọn&nbsp;được&nbsp;một&nbsp;sản&nbsp;phẩm&nbsp;kem&nbsp;nền&nbsp;phìu&nbsp;hợp&nbsp;với&nbsp;làn&nbsp;da&nbsp;của&nbsp;bạn&nbsp; &nbsp;thì&nbsp;thực&nbsp;sự&nbsp;rất&nbsp;khó&nbsp;để&nbsp;chọn.Hôm&nbsp;nay&nbsp;chúng&nbsp;tôi&nbsp;sẽ&nbsp;giới&nbsp;thiệu&nbsp;cho&nbsp;bạn&nbsp;một&nbsp;loại&nbsp;kem&nbsp;nền&nbsp;đến&nbsp;từ&nbsp;đất&nbsp;nước&nbsp;của&nbsp;những&nbsp;loại&nbsp;kem&nbsp;nền&nbsp;chất&nbsp;lượng&nbsp;là&nbsp;Hàn&nbsp; Quốc.</p>\r\n\r\n<p>Thành phần và công dụng:</p>\r\n\r\n<p>Một&nbsp;&nbsp;loại&nbsp;kem&nbsp;hiệu&nbsp;quả&nbsp;trong&nbsp;việc&nbsp;điều&nbsp;chỉnh&nbsp;màu&nbsp;sắc&nbsp;da.&nbsp;Đặc&nbsp;trưng&nbsp;với&nbsp;kết&nbsp;cấu&nbsp;kem&nbsp;mềm&nbsp;mại&nbsp;lướt&nbsp;nhẹ&nbsp;trên&nbsp;da&nbsp;một&nbsp;cách&nbsp;dễ&nbsp;dàng&nbsp;Chứa&nbsp;chiết&nbsp;xuất&nbsp;ốc&nbsp;sên&nbsp;giàu&nbsp;dinh&nbsp;dưỡng&nbsp;để&nbsp;điều&nbsp;chỉnh&nbsp;các&nbsp;vùng&nbsp;da&nbsp;tổn&nbsp;thương&nbsp;da&nbsp;có&nbsp;thể&nbsp;nhìn&nbsp;thấy.&nbsp;Kết&nbsp;hợp&nbsp;với&nbsp;các&nbsp;chất&nbsp;chiết&nbsp;xuất&nbsp;thực&nbsp;vật&nbsp;ẩm&nbsp;đem&nbsp;lại&nbsp;cho&nbsp;làn&nbsp;da&nbsp;sáng&nbsp;tự&nbsp;nhiên,&nbsp;che&nbsp;lỗ&nbsp;chân&nbsp;lông&nbsp;to,&nbsp;bảo&nbsp;vệ&nbsp;da&nbsp;khỏi&nbsp;tia&nbsp;UV&nbsp;với&nbsp;SPF&nbsp;50&nbsp;+&nbsp;/&nbsp;PA&nbsp;+++</p>\r\n\r\n<p>Cách&nbsp;dùng:</p>\r\n\r\n<p>-Lấy&nbsp;một&nbsp;lượng&nbsp;nhỏ&nbsp;kem&nbsp;vừa&nbsp;đủ&nbsp;thoa&nbsp;đều&nbsp;lên&nbsp;da</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180401'),
(193, 'vn', 'N;', '', '', NULL, 'ANJO NATURAL COVER SNAIL SUN BB SPF 50+PA+++ ', '', '<p>&nbsp;</p>\r\n\r\n<p>Ngày&nbsp;nay&nbsp;do&nbsp;ảnh&nbsp;hưởng&nbsp;của&nbsp;môi&nbsp;trường&nbsp;khí&nbsp;hậu&nbsp;và&nbsp;do&nbsp;ảnh&nbsp;hưởng&nbsp;của&nbsp;thói&nbsp;quen&nbsp;sinh&nbsp;hoạt&nbsp;hằng&nbsp;ngày&nbsp;da&nbsp;của&nbsp;chúng&nbsp;ta&nbsp;bị&nbsp;ảnh&nbsp;hưởng&nbsp;nghiêm&nbsp;trọng&nbsp; và&nbsp;theo&nbsp;chiều&nbsp;hướng&nbsp;xấu&nbsp;đi&nbsp;như&nbsp;da&nbsp;bị&nbsp;nám&nbsp;tàn&nbsp;nhang,da&nbsp;bị&nbsp;lão&nbsp;hóa&nbsp;nhăn&nbsp;nheo,.....&nbsp;Tuy&nbsp;nhiên&nbsp;không&nbsp;phải&nbsp;ai&nbsp;cũng&nbsp;ý&nbsp;thức&nbsp;được&nbsp;tầm&nbsp;nguy&nbsp;hiểm&nbsp;của&nbsp;nó&nbsp;hoặc&nbsp;có&nbsp;những&nbsp;biện&nbsp;pháp&nbsp;bảo&nbsp;vệ&nbsp;không&nbsp;đầy&nbsp;đủ&nbsp;và&nbsp;đúng&nbsp;quy&nbsp;cách&nbsp;đúng&nbsp;với&nbsp;từng&nbsp;loại&nbsp;da.&nbsp;Các&nbsp;nhà&nbsp;khoa&nbsp;học&nbsp;về&nbsp;da&nbsp;liễu&nbsp;cũng&nbsp;đã&nbsp;khuyên&nbsp;chúng&nbsp;ta&nbsp;rằng&nbsp;nên&nbsp;thường&nbsp;xuyên&nbsp;bôi&nbsp;kem&nbsp;chống&nbsp;nắng&nbsp;không&nbsp;chỉ&nbsp;lúc&nbsp;ra&nbsp;ngoài&nbsp;đường&nbsp;mà&nbsp;ngay&nbsp;cả&nbsp;khi&nbsp;ở&nbsp;trong&nbsp;nhà&nbsp;cũng&nbsp;cần&nbsp;bôi&nbsp;kem&nbsp;chống&nbsp;nắng,không&nbsp;phải&nbsp;nắng&nbsp;thì&nbsp;mới&nbsp;nên&nbsp;bôi&nbsp;mà&nbsp;trời&nbsp;mưa&nbsp;cũng&nbsp;nên&nbsp;bôi&nbsp;kem&nbsp;chống&nbsp;nắng,&nbsp;vì&nbsp;sức&nbsp;ảnh&nbsp;hưởng&nbsp;của&nbsp;tia&nbsp;cực&nbsp;tím&nbsp;lên&nbsp;da&nbsp;là&nbsp;vô&nbsp;cùng&nbsp;nặng&nbsp;khiến&nbsp;da&nbsp;chúng&nbsp;ta&nbsp;mất&nbsp;đi&nbsp;độ&nbsp;cân&nbsp; bằng&nbsp;trở&nbsp;k&nbsp;còn&nbsp;được&nbsp;bảo&nbsp;vệ.</p>\r\n\r\n<p>Thành&nbsp;phần&nbsp;và&nbsp;công&nbsp;dụng:</p>\r\n\r\n<p>&nbsp;Chính&nbsp;vì&nbsp;vậy&nbsp;sử&nbsp;dụng&nbsp;kem&nbsp;chống&nbsp;nắng&nbsp;là&nbsp;một&nbsp;việc&nbsp;không&nbsp;thể&nbsp;bỏ&nbsp;qua.&nbsp;Kem&nbsp;chống&nbsp;nắng&nbsp;Anjo&nbsp;Natural&nbsp;Cover&nbsp;Snail&nbsp;Sun&nbsp;BB&nbsp;có&nbsp;tác&nbsp;dụng&nbsp;chống&nbsp;nắng,&nbsp; bảo&nbsp;vệ&nbsp;da&nbsp;khỏi&nbsp;tia&nbsp;cực&nbsp;tím,&nbsp;tia&nbsp;tử&nbsp;ngoại.&nbsp;Bên&nbsp;cạnh&nbsp;đó&nbsp;kem&nbsp;chứa&nbsp;chiết&nbsp;xuất&nbsp;hoa&nbsp;sen&nbsp;có&nbsp;tác&nbsp;dụng&nbsp;chăm&nbsp;sóc&nbsp;da,&nbsp;làm&nbsp;dịu&nbsp;da&nbsp;và&nbsp;bảo&nbsp;vệ&nbsp;da&nbsp;suốt&nbsp;cả&nbsp;ngày&nbsp; dài</p>\r\n\r\n<p>Hướng&nbsp;dẫn&nbsp;sử&nbsp;dụng:</p>\r\n\r\n<p>&nbsp;Sau&nbsp;các&nbsp;bước&nbsp;chăm&nbsp;sóc&nbsp;da&nbsp;cơ&nbsp;bản,&nbsp;lấy&nbsp;một&nbsp;lượng&nbsp;vừa&nbsp;đủ&nbsp;kem&nbsp;bôi&nbsp;đều&nbsp;khắp&nbsp;mặt&nbsp;và&nbsp;các&nbsp;vùng&nbsp;da&nbsp;tiếp&nbsp;xúc&nbsp;trực&nbsp;tiếp&nbsp;với&nbsp;ánh&nbsp;nắng&nbsp;mặt&nbsp;trời&nbsp;như&nbsp;tay,&nbsp; chân,&nbsp;cổ.Thoa&nbsp;kem&nbsp;chống&nbsp;nắng&nbsp;đúng&nbsp;thời&nbsp;điểm&nbsp;và&nbsp;thường&nbsp;xuyên&nbsp;sẽ&nbsp;giúp&nbsp;bạn&nbsp;có&nbsp;làn&nbsp;da&nbsp;khỏe&nbsp;đẹp&nbsp;hơn.</p>\r\n\r\n<p>&nbsp;-&nbsp;Không&nbsp;nên&nbsp;thoa&nbsp;kem&nbsp;chống&nbsp;nắng&nbsp;trước&nbsp;khi&nbsp;ra&nbsp;ngoài&nbsp;trời&nbsp;nắng&nbsp;quá&nbsp;sớm&nbsp;hay&nbsp;quá&nbsp;muộn&nbsp;bởi&nbsp;nó&nbsp;đều&nbsp;làm&nbsp;giảm&nbsp;tác&nbsp;dụng&nbsp;bảo&nbsp;vệ&nbsp;da,&nbsp;tốt&nbsp;nhất&nbsp;nên&nbsp;dùng&nbsp;kem&nbsp;chống&nbsp;nắng&nbsp;trước&nbsp;khi&nbsp;đi&nbsp;ra&nbsp;nắng&nbsp;khoảng&nbsp;15-20&nbsp;phút&nbsp;để&nbsp;kem&nbsp;đủ&nbsp;thời&nbsp;gian&nbsp;ngấm&nbsp;sâu&nbsp;vào&nbsp;da&nbsp;và&nbsp;phát&nbsp;huy&nbsp;tác&nbsp;dụng&nbsp;chống&nbsp;nắng&nbsp;hiệu&nbsp;quả&nbsp;nhé.</p>\r\n\r\n<p>-&nbsp;Trường&nbsp;hợp&nbsp;khi&nbsp;bạn&nbsp;thường&nbsp;xuyên&nbsp;phải&nbsp;đi&nbsp;dưới&nbsp;nắng&nbsp;hoặc&nbsp;đang&nbsp;tắm&nbsp;biển&nbsp;thì&nbsp;các&nbsp;chuyên&nbsp;gia&nbsp;khuyên&nbsp;nên&nbsp;thoa&nbsp;lại&nbsp;kem&nbsp;2&nbsp;giờ&nbsp;một&nbsp;lần&nbsp;nhưng&nbsp;không&nbsp; nhất&nbsp;thiết&nbsp;phải&nbsp;thoa&nbsp;quá&nbsp;nhiều&nbsp;mà&nbsp;chỉ&nbsp;cần&nbsp;thoa&nbsp;một&nbsp;lớp&nbsp;kem&nbsp;mỏng.&nbsp;Nếu&nbsp;thoa&nbsp;quá&nbsp;dày,&nbsp;lớp&nbsp;kem&nbsp;thừa&nbsp;không&nbsp;kịp&nbsp;thẩm&nbsp;thấu&nbsp;vào&nbsp;da&nbsp;sẽ&nbsp;là&nbsp;nguyên&nbsp;nhân&nbsp; gây&nbsp;nên&nbsp;bệnh&nbsp;dị&nbsp;ứng&nbsp;da&nbsp;trong&nbsp;mùa&nbsp;hè.</p>\r\n\r\n<p>-&nbsp;Chúc&nbsp;các&nbsp;bạn&nbsp;có&nbsp;làn&nbsp;da&nbsp;khỏe&nbsp;đẹp&nbsp;trong&nbsp;mùa&nbsp;hè&nbsp;này&nbsp;nhé.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180402'),
(198, 'vn', 'N;', '', '', NULL, 'PEARL SHINING _ KEM XẢ TÓC TINH CHẤT NGỌC TRAI', '', '<p>Công&nbsp;dụng:&nbsp;</p>\r\n\r\n<p>Dầu&nbsp;xả&nbsp;&nbsp;dưỡng&nbsp;tóc&nbsp;pearl&nbsp;shining&nbsp;được&nbsp;chiết&nbsp;xuất&nbsp;từ&nbsp;ngọc&nbsp;trai&nbsp;tự&nbsp;nhiên&nbsp;giúp&nbsp;ngăn&nbsp;chặn&nbsp;sự&nbsp;lão&nbsp;hóa&nbsp;của&nbsp;mái&nbsp;tóc.&nbsp;Dầu&nbsp;xả&nbsp;giúp&nbsp;tóc&nbsp;suông&nbsp;mượt,&nbsp;bóng&nbsp;và&nbsp; óng&nbsp;ả,&nbsp;bổ&nbsp;sung&nbsp;độ&nbsp;dẻo&nbsp;dai&nbsp;cho&nbsp;sợi&nbsp;tóc.&nbsp;Dưỡng&nbsp;chất&nbsp;trong&nbsp;sản&nbsp;phẩm&nbsp;thấm&nbsp;sâu&nbsp;vào&nbsp;trong&nbsp;tóc,&nbsp;không&nbsp;làm&nbsp;nhờn&nbsp;tóc,&nbsp;bổ&nbsp;sung&nbsp;và&nbsp;bảo&nbsp;vệ&nbsp;độ&nbsp;ẩm&nbsp;cho&nbsp;tóc .&nbsp;Thích&nbsp;hợp&nbsp;với&nbsp;tất&nbsp;cả&nbsp;các&nbsp;loại&nbsp;tóc.</p>\r\n\r\n<p>Cách&nbsp;sử&nbsp;dụng:</p>\r\n\r\n<p>-&nbsp;Dùng&nbsp;dầu&nbsp;xả&nbsp;dưỡng&nbsp;tóc:&nbsp;Lấy&nbsp;khoảng&nbsp;một&nbsp;lượng&nbsp;vừa&nbsp;đủ&nbsp;vuốt&nbsp;lên&nbsp;tóc&nbsp;để&nbsp;khoảng&nbsp;10-15&nbsp;phút&nbsp;rồi&nbsp;xả&nbsp;sạch&nbsp;với&nbsp;nước&nbsp;</p>\r\n\r\n<p>-&nbsp;Nên&nbsp;kết&nbsp;hợp&nbsp;dùng&nbsp;với&nbsp;sản&nbsp;phẩm&nbsp;dầu&nbsp;gội&nbsp;của&nbsp;Mise&nbsp;En&nbsp;Scene&nbsp;để&nbsp;đạt&nbsp;hiệu&nbsp;quả&nbsp;cao.</p>\r\n', '', '', '', '', '10000000', NULL, NULL, NULL, '000180407'),
(197, 'vn', 'N;', '', '', NULL, 'UV SNAIL DAY SUN CREAM SPF 50 PA+++', '', '<p>-&nbsp;Làn&nbsp;da&nbsp;đen&nbsp;sạm,&nbsp;khô&nbsp;nhăn&nbsp;dưới&nbsp;tác&nbsp;động&nbsp;của&nbsp;ánh&nbsp;nắng&nbsp;mặt&nbsp;trời&nbsp;khiến&nbsp;nhiều&nbsp;chị&nbsp;em&nbsp;bỏ&nbsp;lỡ&nbsp;niềm&nbsp;vui&nbsp;của&nbsp;các&nbsp;cuộc&nbsp;chơi.&nbsp;Ngại&nbsp;nắng,&nbsp;sợ&nbsp;sạm&nbsp;da&nbsp;làm&nbsp; bạn&nbsp;không&nbsp;thế&nbsp;có&nbsp;những&nbsp;bức&nbsp;hình&nbsp;đẹp&nbsp;để&nbsp;khoe&nbsp;với&nbsp;bạn&nbsp;bè&nbsp;về&nbsp;dịp&nbsp;nghỉ&nbsp;cuối&nbsp;tuần.Vậy&nbsp;nên&nbsp;hãy&nbsp;chọn&nbsp;cho&nbsp;mình&nbsp;một&nbsp;sản&nbsp;phẩm&nbsp;chống&nbsp;nắng&nbsp;tối&nbsp;ưu&nbsp;để&nbsp; bạn&nbsp;có&nbsp;làn&nbsp;da&nbsp;khỏe&nbsp;đẹp&nbsp;trong&nbsp;mùa&nbsp;hè&nbsp;này&nbsp;nhé.</p>\r\n\r\n<p>UV&nbsp;Snail&nbsp;Day&nbsp;Sun&nbsp;Cream&nbsp;SPF&nbsp;50&nbsp;PA+++&nbsp;dòng&nbsp;sản&nbsp;phẩm&nbsp;chống&nbsp;nắng&nbsp;nổi&nbsp;tiếng&nbsp;của&nbsp;thương&nbsp;hiệu&nbsp;3W&nbsp;Clinic.&nbsp;&nbsp;Được&nbsp;nhập&nbsp;khẩu&nbsp;hàng&nbsp;chính&nbsp;hãng&nbsp;từ&nbsp;Hàn&nbsp;Quốc,&nbsp;UV&nbsp;Snail&nbsp;Day&nbsp;Sun&nbsp;Cream&nbsp;SPF&nbsp;50&nbsp;PA+++&nbsp;trở&nbsp;thành&nbsp;cái&nbsp;tên&nbsp;hot&nbsp;của&nbsp;sự&nbsp;tìm&nbsp;kiếm&nbsp;tại&nbsp;các&nbsp;thị&nbsp;trường&nbsp;nó&nbsp;có&nbsp;mặt.&nbsp;Với&nbsp;các&nbsp;dưỡng&nbsp;chất&nbsp;đặc&nbsp;biệt&nbsp;tốt&nbsp;cho&nbsp;da,&nbsp;UV&nbsp;Snail&nbsp;Day&nbsp;Sun&nbsp;Cream&nbsp;SPF&nbsp;50&nbsp;PA+++&nbsp;không&nbsp;chỉ&nbsp;chống&nbsp;nắng&nbsp;mà&nbsp;còn&nbsp;chăm&nbsp;sóc&nbsp;và&nbsp;nuôi&nbsp;dưỡng&nbsp;da&nbsp;từ&nbsp;sâu&nbsp;bên&nbsp;trong.</p>\r\n\r\n<p>Thành&nbsp;phần&nbsp;và&nbsp;công&nbsp;dụng</p>\r\n\r\n<p>&nbsp;UV&nbsp;Snail&nbsp;Day&nbsp;Sun&nbsp;Cream&nbsp;SPF&nbsp;50&nbsp;PA+++&nbsp;3W&nbsp;Clinic&nbsp;cho&nbsp;hiệuquả&nbsp;chống&nbsp;nắng&nbsp;tối&nbsp;đa&nbsp;và&nbsp;khắc&nbsp;phục&nbsp;các&nbsp;hậu&nbsp;quả&nbsp;do&nbsp;tia&nbsp;UV&nbsp;mang&nbsp;lại.&nbsp;&nbsp;Có&nbsp;UV&nbsp;Snail&nbsp;Day&nbsp;Sun&nbsp;Cream&nbsp;SPF&nbsp;50&nbsp;PA+++&nbsp;&nbsp;không&nbsp;lo&nbsp;sạm&nbsp;da,&nbsp;cháy&nbsp;nắng,…</p>\r\n\r\n<p>–&nbsp;Kem&nbsp;chống&nbsp;nắng&nbsp;dạng&nbsp;lỏng&nbsp;dễ&nbsp;dàng&nbsp;thấm&nbsp;sâu&nbsp;nuôi&nbsp;dưỡng&nbsp;và&nbsp;bảo&nbsp;vệ&nbsp;da.</p>\r\n\r\n<p>–&nbsp;Màng&nbsp;bảo&nbsp;vệ&nbsp;được&nbsp;cấu&nbsp;tạo&nbsp;bởi&nbsp;hàng&nbsp;triệu&nbsp;hạt&nbsp;nano&nbsp;tạo&nbsp;nên&nbsp;sự&nbsp;bền&nbsp;vững&nbsp;khó&nbsp;trôi&nbsp;cả&nbsp;khi&nbsp;ra&nbsp;nhiều&nbsp;mồ&nbsp;hôi.</p>\r\n\r\n<p>&nbsp;Điều&nbsp;thú&nbsp;vị&nbsp;mà&nbsp;UV&nbsp;Snail&nbsp;Day&nbsp;Sun&nbsp;Cream&nbsp;SPF&nbsp;50&nbsp;PA+++&nbsp;thu&nbsp;hút&nbsp;các&nbsp;bạn&nbsp;đó&nbsp;là&nbsp;&nbsp;Vừa&nbsp;chống&nbsp;nắng,&nbsp;chống&nbsp;khô&nbsp;da&nbsp;đồng&nbsp;thời&nbsp;nuôi&nbsp;dưỡng&nbsp;làm&nbsp;da&nbsp;trắng&nbsp; sáng,&nbsp;mịn&nbsp;màng.</p>\r\n\r\n<p>–&nbsp;Sắc&nbsp;tố&nbsp;chống&nbsp;tia&nbsp;UVA&nbsp;và&nbsp;UVB:&nbsp;có&nbsp;khả&nbsp;năng&nbsp;loại&nbsp;bỏ&nbsp;tối&nbsp;biểu&nbsp;hiện&nbsp;bỏng&nbsp;nắng,&nbsp;sạm&nbsp;da,&nbsp;viêm&nbsp;da,&nbsp;lão&nbsp;hóa&nbsp;da&nbsp;do&nbsp;ánh&nbsp;nắng&nbsp;mặt&nbsp;trời&nbsp;gây&nbsp;ra.</p>\r\n\r\n<p>–&nbsp;Nước&nbsp;là&nbsp;thành&nbsp;phần&nbsp;giúp&nbsp;khóa&nbsp;ẩm&nbsp;vượt&nbsp;trội,&nbsp;ngăn&nbsp;ngừa&nbsp;da&nbsp;khô,&nbsp;mất&nbsp;nước.</p>\r\n\r\n<p>–&nbsp;Các&nbsp;dưỡng&nbsp;chất&nbsp;có&nbsp;lợi&nbsp;thấm&nbsp;sâu&nbsp;và&nbsp;da&nbsp;nuôi&nbsp;dưỡng&nbsp;từ&nbsp;sâu&nbsp;bên&nbsp;trong.</p>\r\n\r\n<p>–&nbsp;Hạt&nbsp;lưu&nbsp;hương&nbsp;tự&nbsp;nhiên&nbsp;tạo&nbsp;mùi&nbsp;thơm&nbsp;dễ&nbsp;chịu.</p>\r\n\r\n<p>HƯỚNG&nbsp;DẪN&nbsp;SỬ&nbsp;DỤNG</p>\r\n\r\n<p>Bước&nbsp;1:&nbsp;Tắm&nbsp;sạch&nbsp;với&nbsp;sữa&nbsp;tắm&nbsp;sau&nbsp;đó&nbsp;lau&nbsp;khô&nbsp;bằng&nbsp;khăn&nbsp;mềm</p>\r\n\r\n<p>Bước&nbsp;2:&nbsp;Bôi&nbsp;đều&nbsp;một&nbsp;lớp&nbsp;kem&nbsp;chống&nbsp;nắng&nbsp;vừa&nbsp;đủ&nbsp;lên&nbsp;da</p>\r\n\r\n<p>Bước&nbsp;3:&nbsp;Để&nbsp;kem&nbsp;ngấm&nbsp;vào&nbsp;da&nbsp;20&nbsp;–&nbsp;30&nbsp;phút&nbsp;trước&nbsp;khi&nbsp;tiếp&nbsp;xúc&nbsp;trực&nbsp;tiếp&nbsp;với&nbsp;ánh&nbsp;nắng&nbsp;mặt&nbsp;trời</p>\r\n\r\n<p>để&nbsp;đạt&nbsp;hiệu&nbsp;quả&nbsp;tối&nbsp;đa&nbsp;trong&nbsp;mùa&nbsp;hè&nbsp;này&nbsp;nhé.</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180406'),
(195, 'vn', 'N;', '', '', NULL, 'KOREA RED GINSENG FOAM CLEANSING _ SỮA RỬA MẶT CHIẾT XUẤT TỪ HỒNG SÂM', '', '<p>Sữa&nbsp;rửa&nbsp;mặt&nbsp;Korea&nbsp;Red&nbsp;Ginseng&nbsp;Foam&nbsp;Cleansing&nbsp;được&nbsp;chiết&nbsp;xuất&nbsp;từ&nbsp;Hồng&nbsp;Sâm,&nbsp;dâu&nbsp;tằm,&nbsp;trà&nbsp;xanh&nbsp;giúp&nbsp;loại&nbsp;bỏ&nbsp;các&nbsp;thành&nbsp;phần&nbsp;oxy&nbsp;hóa&nbsp;có&nbsp;hại&nbsp;cho&nbsp;da,&nbsp;làm&nbsp;sạch&nbsp;và&nbsp;dưỡng&nbsp;ẩm&nbsp;da&nbsp;một&nbsp;cách&nbsp;hiệu&nbsp;quả,&nbsp;tạo&nbsp;lớp&nbsp;mỏng&nbsp;bảo&nbsp;vệ&nbsp;da&nbsp;trong&nbsp;môi&nbsp;trường&nbsp;không&nbsp;khí&nbsp;bị&nbsp;ô&nbsp;nhiễm&nbsp;vì&nbsp;bụi&nbsp;bẩn&nbsp;và&nbsp;trước&nbsp;các&nbsp;biến&nbsp;đổi&nbsp;của&nbsp;môi&nbsp;trường&nbsp;quanh&nbsp;ta</p>\r\n\r\n<p>Thành&nbsp;phần:</p>\r\n\r\n<p>-Sản&nbsp;phẩm&nbsp;được&nbsp;chiết&nbsp;xuất&nbsp;từ&nbsp;Hồng&nbsp;Sâm&nbsp;Hàn&nbsp;Quốc,&nbsp;Nước&nbsp;tinh&nbsp;khiết,&nbsp;Stearic&nbsp;acid,Myristic&nbsp;acid,&nbsp;sáp&nbsp;ong,Glyceryl&nbsp;stearate,&nbsp;PEG-100&nbsp;Stearete,&nbsp;Ploysorbate&nbsp;20,cây&nbsp;hồ&nbsp;Tiêu,&nbsp;cây&nbsp;Hoa&nbsp;Trà,&nbsp;Disodiun&nbsp;ELLDIA&nbsp;...&nbsp;với&nbsp;quy&nbsp;trình&nbsp;khép&nbsp;kín&nbsp;của&nbsp;Hàn&nbsp;Quốc.</p>\r\n\r\n<p>Tác&nbsp;dụng&nbsp;:</p>\r\n\r\n<p>-&nbsp;Sữa&nbsp;rửa&nbsp;mặt&nbsp;Korea&nbsp;Red&nbsp;Ginseng&nbsp;Foam&nbsp;Cleansing&nbsp;My&nbsp;Gold&nbsp;&nbsp;Giúp&nbsp;loại&nbsp;bỏ&nbsp;những&nbsp;chất&nbsp;có&nbsp;thải,&nbsp;tẩy&nbsp;sạch&nbsp;bã&nbsp;nhờn&nbsp;và&nbsp;làm&nbsp;thoáng&nbsp;lỗ&nbsp;chân&nbsp;lông&nbsp;làm&nbsp;da&nbsp;bạn&nbsp;sạch&nbsp;hơn.</p>\r\n\r\n<p>-&nbsp;Cung&nbsp;cấp&nbsp;các&nbsp;dưỡng&nbsp;chất&nbsp;làm&nbsp;tăng&nbsp;sắc&nbsp;tố&nbsp;cho&nbsp;da,&nbsp;trẻ&nbsp;hoá&nbsp;các&nbsp;tế&nbsp;bào.</p>\r\n\r\n<p>-&nbsp;Tác&nbsp;dụng&nbsp;giữ&nbsp;ẩm&nbsp;hiệu&nbsp;quả,&nbsp;duy&nbsp;trì&nbsp;sự&nbsp;đàn&nbsp;hối&nbsp;cho&nbsp;làn&nbsp;da&nbsp;mịn&nbsp;màng&nbsp;tươi&nbsp;sáng&nbsp;và&nbsp;trắng&nbsp;hồng&nbsp;tự&nbsp;nhiên.</p>\r\n\r\n<p>-&nbsp;Ngăn&nbsp;ngừa&nbsp;mụn&nbsp;cám,&nbsp;tàn&nbsp;nhang,mụn&nbsp;ẩn...</p>\r\n\r\n<p>-&nbsp;Cung&nbsp;cấp&nbsp;lượng&nbsp;nước&nbsp;cần&nbsp;thiết&nbsp;để&nbsp;giữ&nbsp;độ&nbsp;ẩm&nbsp;cho&nbsp;da&nbsp;giúp&nbsp;da&nbsp;luôn&nbsp;mềm&nbsp;mại&nbsp;và&nbsp;luôn&nbsp;căng&nbsp;tràn&nbsp;sức&nbsp;sống.</p>\r\n\r\n<p>-&nbsp;Tạo&nbsp;lớp&nbsp;màng&nbsp;bảo&nbsp;vệ&nbsp;ngăn&nbsp;chặn&nbsp;những&nbsp;tác&nbsp;hại&nbsp;của&nbsp;môi&nbsp;trường&nbsp;lên&nbsp;da.</p>\r\n\r\n<p>Cách&nbsp;sử&nbsp;dụng:&nbsp;</p>\r\n\r\n<p>-Lấy&nbsp;lượng&nbsp;sữa&nbsp;phù&nbsp;hợp&nbsp;ra&nbsp;lòng&nbsp;bàn&nbsp;tay,&nbsp;cho&nbsp;thêm&nbsp;nước&nbsp;và&nbsp;xoa&nbsp;thành&nbsp;bọt,&nbsp;rồi&nbsp;thoa&nbsp;đều&nbsp;lên&nbsp;mặt&nbsp;và&nbsp;nhẹ&nbsp;nhàng&nbsp;massage,&nbsp;sau&nbsp;đó,&nbsp;rửa&nbsp;lại&nbsp;vài&nbsp;lần&nbsp;bằng&nbsp;nước&nbsp;sạch.&nbsp;Sử&nbsp;dụng&nbsp;vào&nbsp;buổi&nbsp;sáng,&nbsp;buổi&nbsp;tối&nbsp;hàng&nbsp;ngày</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180404'),
(196, 'vn', 'N;', '', '', NULL, 'PREMIUM PLACENTA SUN B.B SPF 40/PA+++ _ KEM NỀN CHIẾT XUẤT TỪ NHAU THAI CỪU', '', '<p>BB&nbsp;Cream&nbsp;đang&nbsp;tạo&nbsp;nên&nbsp;một&nbsp;làn&nbsp;sóng&nbsp;lớn&nbsp;trên&nbsp;thị&nbsp;trường&nbsp;bởi&nbsp;“sản&nbsp;phẩm&nbsp;make&nbsp;up&nbsp;có&nbsp;thành&nbsp;phần&nbsp;chăm&nbsp;sóc&nbsp;da,&nbsp;không&nbsp;những&nbsp;vô&nbsp;hại&nbsp;mà&nbsp;còn&nbsp;cải&nbsp;thiện&nbsp; làn&nbsp;da”.&nbsp;Không&nbsp;chỉ&nbsp;ở&nbsp;Việt&nbsp;Nam&nbsp;và&nbsp;Châu&nbsp;Á&nbsp;mà&nbsp;hiện&nbsp;nay,&nbsp;hiệu&nbsp;ứng&nbsp;BB&nbsp;Cream&nbsp;còn&nbsp;lan&nbsp;cả&nbsp;các&nbsp;nước&nbsp;phương&nbsp;Tây&nbsp;-&nbsp;một&nbsp;thứ&nbsp;kem&nbsp;nền&nbsp;“thần&nbsp;kỳ”&nbsp;với&nbsp;nhiều&nbsp;chức&nbsp;năng&nbsp;kết&nbsp;hợp&nbsp;chỉ&nbsp;trong&nbsp;một&nbsp;hộp,&nbsp;BB&nbsp;cream&nbsp;tạo&nbsp;nên&nbsp;một&nbsp;làn&nbsp;sóng&nbsp;trên&nbsp;thị&nbsp;trường&nbsp;về&nbsp;sản&nbsp;&nbsp;phẩm&nbsp;make&nbsp;up&nbsp;khiến&nbsp;cho&nbsp;người&nbsp;phụ&nbsp;nữ&nbsp;giảm&nbsp;thiểu&nbsp;tối&nbsp; đa&nbsp;thời&nbsp;gian&nbsp;dành&nbsp;cho&nbsp;việc&nbsp;ngồi&nbsp;tô&nbsp;vẽ</p>\r\n\r\n<p>Chúng&nbsp;tôi&nbsp;sẽ&nbsp;giới&nbsp;thiệu&nbsp;đến&nbsp;các&nbsp;bạn&nbsp;Kem&nbsp;nền&nbsp;BB&nbsp;Placenta&nbsp;Premium&nbsp;(Sun&nbsp;B.B)&nbsp;3W&nbsp;Clinic&nbsp;được&nbsp;chiết&nbsp;suất&nbsp;từ&nbsp;nhau&nbsp;thai&nbsp;cừu,&nbsp;với&nbsp;chỉ&nbsp;số&nbsp;chống&nbsp;tia&nbsp;tử&nbsp; ngoại&nbsp;SPF&nbsp;40/PA&nbsp;++&nbsp;-&nbsp;hàng&nbsp;chính&nbsp;hãng&nbsp;Korea</p>\r\n\r\n<p>Những&nbsp;nếp&nbsp;nhăn&nbsp;hoặc&nbsp;vết&nbsp;thâm&nbsp;khi&nbsp;trang&nbsp;điểm&nbsp;hay&nbsp;da&nbsp;bị&nbsp;khô,&nbsp;sử&nbsp;dụng&nbsp;kem&nbsp;nền&nbsp;không&nbsp;tốt&nbsp;làm&nbsp;cho&nbsp;lớp&nbsp;trang&nbsp;điểm&nbsp;dễ&nbsp;bị&nbsp;bong&nbsp;tróc&nbsp;khiến&nbsp;bạn&nbsp;lo&nbsp;lắng&nbsp; và&nbsp;không&nbsp;tự&nbsp;tin.&nbsp;Bạn&nbsp;đừng&nbsp;lo&nbsp;lắng&nbsp;vì&nbsp;với&nbsp;những&nbsp;giải&nbsp;pháp&nbsp;tuyệt&nbsp;vời,&nbsp;sự&nbsp;kết&nbsp;hợp&nbsp;hoàn&nbsp;hảo&nbsp;giữa&nbsp;kem&nbsp;nền&nbsp;và&nbsp;tinh&nbsp;chất&nbsp;dưỡng&nbsp;ẩm&nbsp;từ&nbsp;nhau&nbsp;thai&nbsp;cừu&nbsp;trong&nbsp;sản&nbsp;phẩm&nbsp;kem&nbsp;nền&nbsp;BB&nbsp;Placenta&nbsp;Premium&nbsp;3W&nbsp;Clinic&nbsp;sẽ&nbsp;giúp&nbsp;bạn&nbsp;yên&nbsp;tâm&nbsp;hơn&nbsp;khi&nbsp;make&nbsp;up&nbsp;trên&nbsp;khuôn&nbsp;mặt&nbsp;bạn&nbsp;giúp&nbsp;bạn&nbsp;tự&nbsp;tin&nbsp;hơn&nbsp;khi&nbsp;ra&nbsp;đường&nbsp; cùng&nbsp;bạn&nbsp;bè&nbsp;và&nbsp;gia&nbsp;đình.</p>\r\n\r\n<p>Công&nbsp;dụng:</p>\r\n\r\n<p>Kem&nbsp;nền&nbsp;Placenta&nbsp;Premium&nbsp;giúp&nbsp;thấm&nbsp;hút&nbsp;lượng&nbsp;dầu&nbsp;thừa&nbsp;trên&nbsp;da&nbsp;mặt,&nbsp;đồng&nbsp;thời&nbsp;giúp&nbsp;cho&nbsp;da&nbsp;mặt&nbsp;bạn&nbsp;thông&nbsp;thoáng&nbsp;và&nbsp;tạo&nbsp;cảm&nbsp;giác&nbsp;thoải&nbsp;mái&nbsp;khi&nbsp; trang&nbsp;điểm,&nbsp;đặc&nbsp;biệt&nbsp;giữ&nbsp;được&nbsp;màu&nbsp;trang&nbsp;điểm&nbsp;đẹp&nbsp;và&nbsp;tự&nbsp;nhiên&nbsp;giúp&nbsp;bạn&nbsp;thêm&nbsp;tự&nbsp;tin&nbsp;và&nbsp;rạng&nbsp;rỡ&nbsp;với&nbsp;làn&nbsp;da&nbsp;trắng&nbsp;mịn&nbsp;của&nbsp;mình.</p>\r\n\r\n<p>&nbsp;Chống&nbsp;nhăn,&nbsp;chống&nbsp;lão&nbsp;hóa,&nbsp;tái&nbsp;tạo&nbsp;da&nbsp;và&nbsp;mang&nbsp;lại&nbsp;một&nbsp;làn&nbsp;da&nbsp;săn&nbsp;chắc,&nbsp;tươi&nbsp;trẻ&nbsp;làm&nbsp;da&nbsp;không&nbsp;bị&nbsp;sạm&nbsp;màu,bọ&nbsp;mốc,loang&nbsp;lỗ&nbsp;hay&nbsp;xấu&nbsp;đi&nbsp;sau&nbsp;quá&nbsp;trình&nbsp;trang&nbsp;điểm.</p>\r\n\r\n<p>-&nbsp;Kem&nbsp;nền&nbsp;3W&nbsp;Clinic&nbsp;có&nbsp;khả&nbsp;năng&nbsp;duy&nbsp;trì&nbsp;lớp&nbsp;trang&nbsp;điểm&nbsp;trong&nbsp;thời&nbsp;gian&nbsp;dài&nbsp;do&nbsp;có&nbsp;thể&nbsp;hút&nbsp;chất&nbsp;bã&nbsp;nhờn&nbsp;dư&nbsp;thừa&nbsp;với&nbsp;thành&nbsp;phần&nbsp;kiểm&nbsp;soát&nbsp;bã&nbsp;nhờn&nbsp; cho&nbsp;bạn&nbsp;cảm&nbsp;giác&nbsp;sạch&nbsp;sẽ&nbsp;khi&nbsp;sử&nbsp;dụng.&nbsp;giúp&nbsp;da&nbsp;mềm&nbsp;mại&nbsp;và&nbsp;tự&nbsp;tin&nbsp;khi&nbsp;trang&nbsp;điểm.</p>\r\n\r\n<p>Hướng&nbsp;dẫn&nbsp;sử&nbsp;dụng:</p>\r\n\r\n<p>Sử&nbsp;dụng&nbsp;sau&nbsp;kem&nbsp;lót,&nbsp;cho&nbsp;một&nbsp;lượng&nbsp;vừa&nbsp;đủ&nbsp;bằng&nbsp;hạt&nbsp;đậu&nbsp;vào&nbsp;mu&nbsp;bàn&nbsp;tay,&nbsp;châm&nbsp;kem&nbsp;lên&nbsp;các&nbsp;điểm&nbsp;trên&nbsp;khuôn&nbsp;mặt&nbsp;và&nbsp;tán&nbsp;đều&nbsp;quanh&nbsp;mặt&nbsp;và&nbsp;cổ&nbsp;để&nbsp; đều&nbsp;màu&nbsp;da&nbsp;nhé.&nbsp;Bạn&nbsp;sẽ&nbsp;thấy&nbsp;hiệu&nbsp;quả&nbsp;không&nbsp;ngờ&nbsp;của&nbsp;kem&nbsp;nền&nbsp;Placenta&nbsp;Premium&nbsp;.</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180405'),
(199, 'vn', 'N;', '', '', NULL, 'AGING CARE TREATMENT _ KEM XẢ TINH CHẤT COLLAGEN', '', '<p>Thành&nbsp;phần&nbsp;và&nbsp;công&nbsp;dụng:</p>\r\n\r\n<p>-Dầu&nbsp;xả&nbsp;MISE&nbsp;EN&nbsp;SCENE&nbsp;Hàn&nbsp;Quốc&nbsp;tuýp&nbsp;180ml&nbsp;(chống&nbsp;xơ&nbsp;rối,chẻ&nbsp;ngọn,lão&nbsp;hóa&nbsp;tóc-COLLAGEN&nbsp;Aging&nbsp;Care)</p>\r\n\r\n<p>-&nbsp;Bổ&nbsp;sung&nbsp;Collagen&nbsp;&nbsp;cho&nbsp;tóc,&nbsp;giúp&nbsp;tóc&nbsp;mềm&nbsp;mượt&nbsp;và&nbsp;bồng&nbsp;bềnh.&nbsp;Cho&nbsp;bạn&nbsp;một&nbsp;mái&nbsp;tóc&nbsp;khỏe&nbsp;đẹp&nbsp;và&nbsp;chắc&nbsp;khỏe&nbsp;dưới&nbsp;khí&nbsp;hậu&nbsp;khắc&nbsp;nghiệt.&nbsp;Thích&nbsp;hợp&nbsp;cho&nbsp;mọi&nbsp;loại&nbsp;tóc&nbsp;và&nbsp;da&nbsp;đầu.</p>\r\n\r\n<p>-&nbsp;&nbsp;Tạo&nbsp;ra&nbsp;các&nbsp;chất&nbsp;dinh&nbsp;dưỡng&nbsp;thấm&nbsp;sâu,&nbsp;phục&nbsp;hồi&nbsp;từ&nbsp;bên&nbsp;trong&nbsp;sợi&nbsp;tóc</p>\r\n\r\n<p>-&nbsp;Được&nbsp;chiết&nbsp;xuất&nbsp;hoàn&nbsp;toàn&nbsp;từ&nbsp;thảo&nbsp;dược&nbsp;thiên&nbsp;nhiên,&nbsp;không&nbsp;chất&nbsp;phụ&nbsp;gia&nbsp;giúp&nbsp;tóc&nbsp;được&nbsp;khỏe&nbsp;mạnh,&nbsp;ngăn&nbsp;tình&nbsp;trạng&nbsp;tóc&nbsp;gẫy&nbsp;rụng&nbsp;tóc.</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180407'),
(200, 'vn', 'N;', '', '', NULL, 'DAMAGE CARE TREATMENT _ KEM XẢ TÓC CHỨA CÁC DUOWCNG CHẤT TỪ THIÊN NHIÊN', '', '<p>-Từ&nbsp;xưa&nbsp;ông&nbsp;cha&nbsp;đã&nbsp;có&nbsp;câu&nbsp;cái&nbsp;răng&nbsp;cái&nbsp;tóc&nbsp;là&nbsp;vóc&nbsp;con&nbsp;người&nbsp;nên&nbsp;từ&nbsp;lâu&nbsp;mái&nbsp;tóc&nbsp;đã&nbsp;trở&nbsp;thành&nbsp;thứ&nbsp;ngôn&nbsp;ngữ&nbsp;không&nbsp;lời&nbsp;tôn&nbsp;lên&nbsp;nét&nbsp;đẹp,vẻ&nbsp;kiêu&nbsp;sa,&nbsp;quý&nbsp;phái&nbsp;của&nbsp;người&nbsp;phụ&nbsp;nữ.&nbsp;Nên&nbsp;việc&nbsp;sở&nbsp;hữu&nbsp;một&nbsp;mái&nbsp;tóc&nbsp;đẹp,&nbsp;chắc&nbsp;khỏe,&nbsp;óng&nbsp;mượt&nbsp;luôn&nbsp;là&nbsp;mong&nbsp;muốn&nbsp;của&nbsp;rất&nbsp;nhiều&nbsp;chị&nbsp;em&nbsp;phụ&nbsp;nữ.&nbsp;Để&nbsp;chúng&nbsp;tôi&nbsp;giới&nbsp;thiệu&nbsp;bạn&nbsp;sản&nbsp;phẩm&nbsp;dầu&nbsp;xả&nbsp;Mise&nbsp;En&nbsp;Scene&nbsp;đến&nbsp;từ&nbsp;Hàn&nbsp;Quốc&nbsp;–&nbsp;cho&nbsp;bạn&nbsp;mái&nbsp;tóc&nbsp;bền&nbsp;màu,&nbsp;suông&nbsp;mượt&nbsp;như&nbsp;bạn&nbsp;hằng&nbsp;mong&nbsp;đợi.</p>\r\n\r\n<p>Thành&nbsp;phần:</p>\r\n\r\n<p>Sản&nbsp;phẩm&nbsp;chứa&nbsp;các&nbsp;thành&nbsp;phần&nbsp;dưỡng&nbsp;chất&nbsp;từ&nbsp;thiên&nbsp;nhiên.&nbsp;Dầu&nbsp;xả&nbsp;Mise&nbsp;En&nbsp;Scene&nbsp;an&nbsp;toàn&nbsp;cho&nbsp;da&nbsp;đầu&nbsp;và&nbsp;mái&nbsp;tóc&nbsp;của&nbsp;bạn,&nbsp;bổ&nbsp;sung&nbsp;dưỡng&nbsp;chất,&nbsp; không&nbsp;gây&nbsp;kích&nbsp;ứng&nbsp;và&nbsp;thích&nbsp;hợp&nbsp;với&nbsp;mọi&nbsp;loại&nbsp;tóc:&nbsp;khô,&nbsp;yếu,&nbsp;tóc&nbsp;nhờn&nbsp;dầu,&nbsp;chẻ&nbsp;ngọn&nbsp;hoặc&nbsp;dễ&nbsp;gẫy.&nbsp;Bạn&nbsp;sẽ&nbsp;vô&nbsp;cùng&nbsp;thoải&nbsp;mái&nbsp;và&nbsp;&nbsp;thích&nbsp;thú&nbsp;khi&nbsp;sử&nbsp;dụng&nbsp;dầu&nbsp;xả&nbsp;bởi&nbsp;hương&nbsp;thơm&nbsp;cực&nbsp;kì&nbsp;quyến&nbsp;rũ,&nbsp;tinh&nbsp;khiết&nbsp;và&nbsp;nhẹ&nbsp;nhàng.</p>\r\n\r\n<p>Công&nbsp;dụng:</p>\r\n\r\n<p>Mise&nbsp;En&nbsp;Scene&nbsp;là&nbsp;thương&nbsp;hiệu&nbsp;mỹ&nbsp;phẩm&nbsp;đến&nbsp;từ&nbsp;Hàn&nbsp;Quốc&nbsp;được&nbsp;biết&nbsp;đến&nbsp;ở&nbsp;nhiều&nbsp;nơi&nbsp;trên&nbsp;thế&nbsp;giới&nbsp;vì&nbsp;chất&nbsp;lượng&nbsp;tuyệt&nbsp;hảo.&nbsp;Dầu&nbsp;gội&nbsp;và&nbsp;dầu&nbsp;xả&nbsp;Mise&nbsp; En&nbsp;Scene&nbsp;với&nbsp;nhiều&nbsp;dưỡng&nbsp;chất&nbsp;Pro-vitamin&nbsp;và&nbsp;vitamin&nbsp;E,&nbsp;đặc&nbsp;biệt&nbsp;có&nbsp;chứa&nbsp;keratin&nbsp;giúp&nbsp;hạn&nbsp;chế&nbsp;sự&nbsp;oxi&nbsp;hóa,&nbsp;giữ&nbsp;cho&nbsp;tóc&nbsp;luôn&nbsp;bền&nbsp;màu.</p>\r\n\r\n<p>Hương&nbsp;thơm&nbsp;nhẹ&nbsp;nhàng,&nbsp;quyến&nbsp;rũ&nbsp;mang&nbsp;tới&nbsp;cho&nbsp;bạn&nbsp;cảm&nbsp;giác&nbsp;thư&nbsp;giãn,&nbsp;dễ&nbsp;chịu.&nbsp;Thích&nbsp;hợp&nbsp;với&nbsp;mọi&nbsp;loại&nbsp;tóc,&nbsp;an&nbsp;toàn&nbsp;khi&nbsp;sử&nbsp;dụng.&nbsp;Cho&nbsp;bạn&nbsp;mái&nbsp;tóc&nbsp; mềm&nbsp;mượt&nbsp;chắc&nbsp;khỏe,&nbsp;không&nbsp;còn&nbsp;nỗi&nbsp;lo&nbsp;hư&nbsp;tổn</p>\r\n\r\n<p>&nbsp;Hướng&nbsp;dẫn&nbsp;cách&nbsp;sử&nbsp;dụng:</p>\r\n\r\n<p>-Sau&nbsp;khi&nbsp;gội&nbsp;đầu&nbsp;sạch&nbsp;với&nbsp;dầu&nbsp;gội&nbsp;bạn&nbsp;lấy&nbsp;một&nbsp;lượng&nbsp;dầu&nbsp;xả&nbsp;vừa&nbsp;đủ&nbsp;vào&nbsp;lòng&nbsp;bàn&nbsp;tay&nbsp;xoa&nbsp;đều&nbsp;lên&nbsp;tóc&nbsp;ủ&nbsp;khoảng&nbsp;15-20&nbsp;phút&nbsp;giúp&nbsp;tóc&nbsp;thẩm&nbsp;thấu&nbsp;các&nbsp;dưỡng&nbsp;chất&nbsp;rồi&nbsp;xả&nbsp;sạch&nbsp;lại&nbsp;với&nbsp;nước.</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180408'),
(201, 'vn', 'N;', '', '', NULL, 'PERFECT SERUM TREATMENT _ CHIẾT XUẤT TỪ CÁC DƯỠNG CHẤT THIÊN NHIÊN', '', '<p>Mái&nbsp;tóc&nbsp;của&nbsp;bạn&nbsp;đang&nbsp;rơi&nbsp;vào&nbsp;tình&nbsp;trạng&nbsp;xơ&nbsp;yếu&nbsp;và&nbsp;gãy&nbsp;rụng,&nbsp;ngày&nbsp;càng&nbsp;mất&nbsp;đi&nbsp;sức&nbsp;sống,&nbsp;khiến&nbsp;bạn&nbsp;không&nbsp;dám&nbsp;tạo&nbsp;kiểu&nbsp;nhiều&nbsp;hay&nbsp;không&nbsp;&nbsp;tự&nbsp;tin&nbsp;với&nbsp; mái&nbsp;tóc&nbsp;của&nbsp;mình.&nbsp;Và&nbsp;bạn&nbsp;đang&nbsp;tìm&nbsp;một&nbsp;sản&nbsp;mượt&nbsp;từ&nbsp;bên&nbsp;trong.&nbsp;Hãy&nbsp;để&nbsp;chúng&nbsp;tôi&nbsp;giới&nbsp;thiệu&nbsp;với&nbsp;bạn&nbsp;loại&nbsp;sản&nbsp;phẩm&nbsp;&nbsp;dầu&nbsp;xả&nbsp;Mise&nbsp;En&nbsp;Scene&nbsp;đến&nbsp;từ&nbsp;Hàn&nbsp;Quốc.&nbsp;Đây&nbsp;là&nbsp;một&nbsp;trong&nbsp;những&nbsp;dòng&nbsp;sản&nbsp;phẩm&nbsp;chăm&nbsp;sóc&nbsp;tóc&nbsp;được&nbsp;tin&nbsp;dùng&nbsp;tại&nbsp;xứ&nbsp;sở&nbsp;Kim&nbsp;chi&nbsp;và&nbsp;hứa&nbsp;hẹn&nbsp;sẽ&nbsp;mang&nbsp;đến&nbsp;cho&nbsp;bạn&nbsp;một&nbsp;mái&nbsp;tóc&nbsp;tuyệt&nbsp; vời&nbsp;hơn,tự&nbsp;tin&nbsp;hơn&nbsp;khi&nbsp;bước&nbsp;ra&nbsp;đường.</p>\r\n\r\n<p>LOẠI&nbsp;SẢN&nbsp;PHẨM</p>\r\n\r\n<p>&nbsp;Dầu&nbsp;xả&nbsp;Mise&nbsp;en&nbsp;Scene&nbsp;đến&nbsp;từ&nbsp;Hàn&nbsp;Quốc,&nbsp;một&nbsp;thương&nbsp;hiệu&nbsp;chăm&nbsp;sóc&nbsp;tóc&nbsp;nổi&nbsp;tiếng.&nbsp;Sản&nbsp;&nbsp;phẩm&nbsp;dầu&nbsp;xả&nbsp;giúp&nbsp;làm&nbsp;sạch,&nbsp;phục&nbsp;hồi&nbsp;và&nbsp;nuôi&nbsp;dưỡng&nbsp;từ&nbsp;bên&nbsp;trong,&nbsp;giải&nbsp;quyết&nbsp;hoàn&nbsp;toàn&nbsp;những&nbsp;vấn&nbsp;đề&nbsp;cho&nbsp;mái&nbsp;tóc&nbsp;của&nbsp;bạn.</p>\r\n\r\n<p>THÀNH&nbsp;PHẦN&nbsp;VÀ&nbsp;CÔNG&nbsp;DỤNG</p>\r\n\r\n<p>-&nbsp;Dầu&nbsp;xả&nbsp;Mise&nbsp;En&nbsp;Scene&nbsp;mang&nbsp;đến&nbsp;cho&nbsp;bạn&nbsp;những&nbsp;dưỡng&nbsp;chất&nbsp;giúp&nbsp;chăm&nbsp;sóc&nbsp;và&nbsp;nuôi&nbsp;dưỡng&nbsp;mái&nbsp;tóc&nbsp;từ&nbsp;gốc&nbsp;đến&nbsp;ngọn,&nbsp;cho&nbsp;bạn&nbsp;mái&nbsp;tóc&nbsp;khỏe&nbsp;đẹp&nbsp; thật&nbsp;sự&nbsp;từ&nbsp;bên&nbsp;trong.&nbsp;Dầu&nbsp;xả&nbsp;làm&nbsp;toác&nbsp;mềm&nbsp;mượt&nbsp;tạo&nbsp;&nbsp;mang&nbsp;đến&nbsp;cảm&nbsp;giác&nbsp;nhẹ&nbsp;nhàng&nbsp;và&nbsp;thoải&nbsp;mái.&nbsp;Dầu&nbsp;xả&nbsp;Perfect&nbsp;serum&nbsp;treatment&nbsp;cung&nbsp;cấp&nbsp;dưỡng&nbsp;chất&nbsp;thấm&nbsp;sâu&nbsp;vào&nbsp;nuôi&nbsp;dưỡng&nbsp;mái&nbsp;tóc,&nbsp;giúp&nbsp;tóc&nbsp;được&nbsp;dưỡng&nbsp;ẩm&nbsp;và&nbsp;mềm&nbsp;mượt&nbsp;tức&nbsp;thời.</p>\r\n\r\n<p>Perfect&nbsp;serum&nbsp;treatment&nbsp;(màu&nbsp;vàng&nbsp;cam):&nbsp;được&nbsp;sản&nbsp;xuất&nbsp;dành&nbsp;cho&nbsp;mái&nbsp;tóc&nbsp;khô,&nbsp;xơ&nbsp;xác&nbsp;và&nbsp;rụng&nbsp;nhiều.&nbsp;Dầu&nbsp;xả&nbsp;&nbsp;có&nbsp;tác&nbsp;dụng&nbsp;làm&nbsp;mềm&nbsp;mượt&nbsp;tóc,&nbsp;giữ&nbsp;màu&nbsp;nhuộm&nbsp;của&nbsp;tóc,&nbsp;cải&nbsp;tạo&nbsp;tình&nbsp;trạng&nbsp;hư&nbsp;tổn,&nbsp;gãy&nbsp;rụng&nbsp;và&nbsp;tóc&nbsp;xơ.&nbsp;Bạn&nbsp;sẽ&nbsp;có&nbsp;một&nbsp;mái&nbsp;tóc&nbsp;khỏe&nbsp;mạnh&nbsp;và&nbsp;tràn&nbsp;đầy&nbsp;sức&nbsp;sống&nbsp;khi&nbsp;sử&nbsp;dụng&nbsp;sản&nbsp;phẩm&nbsp;này.</p>\r\n\r\n<p>-Bạn&nbsp;nên&nbsp;dùng&nbsp;kết&nbsp;hợp&nbsp;sản&nbsp;phẩm&nbsp;dầu&nbsp;gội&nbsp;của&nbsp;Mise&nbsp;En&nbsp;Scene&nbsp;để&nbsp;mang&nbsp;lại&nbsp;hiệu&nbsp;quả&nbsp;tối&nbsp;đa.</p>\r\n\r\n<p>HƯỚNG&nbsp;DẪN&nbsp;SỬ&nbsp;DỤNG</p>\r\n\r\n<p>-Làm&nbsp;ướt&nbsp;toàn&nbsp;bộ&nbsp;tóc&nbsp;rồi&nbsp;lấy&nbsp;một&nbsp;lượng&nbsp;sản&nbsp;phẩm&nbsp;vừa&nbsp;đủ&nbsp;ra&nbsp;lòng&nbsp;bàn&nbsp;tay,&nbsp;massage&nbsp;đều&nbsp;trên&nbsp;tóc,&nbsp;nhẹ&nbsp;nhàng&nbsp;theo&nbsp;chuyển&nbsp;động&nbsp;tròn&nbsp;ủ&nbsp;tóc&nbsp;khoảng&nbsp;10-15&nbsp;phút&nbsp;&nbsp;rồi&nbsp;xả&nbsp;lại&nbsp;thật&nbsp;sạch&nbsp;với&nbsp;nước.</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180409'),
(202, 'vn', 'N;', '', '', NULL, 'AN CUNG NGƯU HÀN QUỐC IKSU', '', '<p>An&nbsp;cung&nbsp;ngưu&nbsp;hoàng&nbsp;Hàn&nbsp;Quốc&nbsp;iKSU&nbsp;hộp&nbsp;đỏ&nbsp;là&nbsp;sản&nbsp;phẩm&nbsp;&nbsp;nội&nbsp;địa&nbsp;được&nbsp;tin&nbsp;dùng&nbsp;của&nbsp;Hàn&nbsp;Quốc.&nbsp;Sản&nbsp;phẩm&nbsp;từ&nbsp;lâu&nbsp;đã&nbsp;được&nbsp;biết&nbsp;tới&nbsp;với&nbsp;công&nbsp;dụng&nbsp;giúp&nbsp;phòng&nbsp;chống&nbsp;và&nbsp;hỗ&nbsp;trợ&nbsp;điều&nbsp;trị&nbsp;tai&nbsp;biến&nbsp;mạch&nbsp;máu&nbsp;não,&nbsp;đột&nbsp;quỵ</p>\r\n\r\n<p>Thành&nbsp;phần&nbsp;của&nbsp;An&nbsp;cung&nbsp;ngưu&nbsp;hoàng&nbsp;,Hàn&nbsp;Quốc&nbsp;iKSU</p>\r\n\r\n<p>&nbsp;Thành&nbsp;phần&nbsp;từ&nbsp;khoảng&nbsp;30&nbsp;loại&nbsp;dược&nbsp;liệu&nbsp;quý&nbsp;hiếm&nbsp;theo&nbsp;công&nbsp;thức&nbsp;riêng&nbsp;biệt&nbsp;như:&nbsp;Củ&nbsp;Hoài&nbsp;sơn&nbsp;282&nbsp;mg,&nbsp;Cam&nbsp;thảo&nbsp;202mg,&nbsp;Bồ&nbsp;hoàng&nbsp;100&nbsp;mg,&nbsp;Thần&nbsp;khúc&nbsp;100mg,&nbsp;Nhân&nbsp;sâm&nbsp;97&nbsp;mg,&nbsp;Giá&nbsp;đậu&nbsp;nành&nbsp;70mg,Vỏ&nbsp;quế&nbsp;70mg,&nbsp;A&nbsp;giao&nbsp;70mg,&nbsp;Rễ&nbsp;Hoàng&nbsp;cầm&nbsp;60mg,&nbsp;Bạch&nbsp;truật&nbsp;60mg,&nbsp;Bạch&nbsp;thược&nbsp;60mg.&nbsp;Đương&nbsp;quy&nbsp;60mg,&nbsp;Phòng&nbsp;phong&nbsp;60mg,&nbsp;Mạch&nbsp;môn&nbsp;60mg,&nbsp;Sài&nbsp;hồ&nbsp;50mg,&nbsp;Rễ&nbsp;Cát&nbsp;cánh&nbsp;50mg,&nbsp;Quả&nbsp;Mơ&nbsp;50mg,&nbsp;Phục&nbsp;linh&nbsp;50mg,&nbsp;Xuyên&nbsp;khung&nbsp;50mg,&nbsp;Ngưu&nbsp;hoàng&nbsp;14mg,&nbsp;Long&nbsp;não&nbsp;41mg,&nbsp;Linh&nbsp;dương&nbsp;giác&nbsp;38mg.&nbsp;Gừng&nbsp;30mg,&nbsp;Bạch&nbsp;liễm&nbsp;30mg,&nbsp;mật&nbsp;ong,&nbsp;glycerin,&nbsp;lactose,&nbsp;cellulose&nbsp;vi&nbsp;tinh&nbsp;thể,&nbsp;calci&nbsp;panthenat&nbsp;vừa&nbsp;đủ&nbsp;vi</p>\r\n\r\n<p>Công&nbsp;dụng:</p>\r\n\r\n<p>An&nbsp;Cung&nbsp;Ngưu&nbsp;Hoàng&nbsp;Hoàn&nbsp;có&nbsp;tác&nbsp;dụng&nbsp;hoạt&nbsp;huyết,&nbsp;giúp&nbsp;máu&nbsp;lưu&nbsp;thông&nbsp;hiệu&nbsp;quả&nbsp;hơn.&nbsp;Do&nbsp;đó,&nbsp;hỗ&nbsp;trợ&nbsp;điều&nbsp;trị&nbsp;rối&nbsp;loạn&nbsp;tiền&nbsp;đình,&nbsp;thiếu&nbsp;máu,&nbsp;đau&nbsp;đầu&nbsp;…</p>\r\n\r\n<p style=\"margin-left:-18.0000pt\">&nbsp;&nbsp;&nbsp;Sản&nbsp;phẩm&nbsp;thích&nbsp;hợp&nbsp;cho&nbsp;những&nbsp;người&nbsp;bị&nbsp;suy&nbsp;nhược&nbsp;thần&nbsp;kinh&nbsp;vì&nbsp;áp&nbsp;lực&nbsp;công&nbsp;việc,&nbsp;thường&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;xuyên&nbsp;lao&nbsp;động&nbsp;trí&nbsp;óc,&nbsp;căng&nbsp;thẳng,&nbsp;mệt&nbsp;mỏi.</p>\r\n\r\n<p style=\"margin-left:-18.0000pt\">&nbsp;&nbsp;&nbsp;Ngăn&nbsp;ngừa&nbsp;tình&nbsp;trạng&nbsp;chảy&nbsp;máu&nbsp;não,&nbsp;xuất&nbsp;huyết&nbsp;não,&nbsp;giúp&nbsp;phục&nbsp;hồi&nbsp;chức&nbsp;năng&nbsp;hệ&nbsp;thần&nbsp;kinh&nbsp;&nbsp;&nbsp;&nbsp;của&nbsp;những&nbsp;bệnh&nbsp;nhân&nbsp;mới&nbsp;và&nbsp;những&nbsp;bệnh&nbsp;nhân&nbsp;bị&nbsp;tai&nbsp;biến&nbsp;mạch&nbsp;máu&nbsp;não&nbsp;lâu&nbsp;ngày</p>\r\n\r\n<p style=\"margin-left:-18.0000pt\">Phục&nbsp;chức&nbsp;năng&nbsp;do&nbsp;di&nbsp;chứng&nbsp;để&nbsp;lại&nbsp;sau&nbsp;khi&nbsp;bị&nbsp;tai&nbsp;biến&nbsp;mạch&nbsp;máu&nbsp;não&nbsp;như&nbsp;liệt&nbsp;nửa&nbsp;người,&nbsp;rối&nbsp;loạn&nbsp;chức&nbsp;năng&nbsp;diễn&nbsp;đạt&nbsp;ngôn&nbsp;ngữ</p>\r\n\r\n<p style=\"margin-left:-18.0000pt\">Giúp&nbsp;hỗ&nbsp;trợ&nbsp;chữa&nbsp;trị&nbsp;chứng&nbsp;đột&nbsp;quỵ&nbsp;(chứng&nbsp;liệt&nbsp;toàn&nbsp;thân,&nbsp;liệt&nbsp;tay&nbsp;chân,&nbsp;khiếm&nbsp;khuyết&nbsp;về&nbsp;ngôn&nbsp;ngữ,&nbsp;chứng&nbsp;tê&nbsp;liệt&nbsp;ở&nbsp;mặt,&nbsp;khó&nbsp;nuốt,&nbsp;hôn&nbsp;mê,&nbsp;tâm&nbsp;thần),&nbsp;cao&nbsp;huyết&nbsp;áp,&nbsp;tim&nbsp;đập&nbsp;nhanh,&nbsp;đau&nbsp;co&nbsp;giật&nbsp;cấp&nbsp;và&nbsp;mãn&nbsp;tính,&nbsp;rối&nbsp;loạn&nbsp;thần&nbsp;kinh&nbsp;thực&nbsp;vật,&nbsp;bất&nbsp;tỉnh,&nbsp;hô&nbsp;hấp&nbsp;khó,&nbsp;tinh&nbsp;thần&nbsp;bất&nbsp;an</p>\r\n\r\n<p style=\"margin-left:-18.0000pt\">Phòng&nbsp;tránh&nbsp;các&nbsp;bệnh&nbsp;về&nbsp;cao&nbsp;huyết&nbsp;áp&nbsp;và&nbsp;tai&nbsp;biến&nbsp;mạch&nbsp;máu&nbsp;não,&nbsp;các&nbsp;bệnh&nbsp;liên&nbsp;quan&nbsp;tới&nbsp;tim&nbsp;mạch&nbsp;như&nbsp;tim&nbsp;đập&nbsp;nhanh,&nbsp;tức&nbsp;ngực,&nbsp;khó&nbsp;thở&nbsp;…</p>\r\n\r\n<p style=\"margin-left:-18.0000pt\">Cách&nbsp;sử&nbsp;dụng&nbsp;sản&nbsp;phẩm:</p>\r\n\r\n<ol>\r\n	<li>Nên&nbsp;sử&nbsp;dụng&nbsp;1v/ngày&nbsp;sau&nbsp;bữa&nbsp;ăn&nbsp;sáng</li>\r\n	<li>Liệu&nbsp;trình&nbsp;tùy&nbsp;đối&nbsp;tượng&nbsp;sử&nbsp;dụng</li>\r\n</ol>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180411'),
(203, 'vn', 'N;', '', '', NULL, 'THUỐC CHỐNG ĐỘT QUỴ HÀN QUỐC', '', '<ol>\r\n	<li>THUỐC&nbsp;CHỐNG&nbsp;ĐỘT&nbsp;QUỴ</li>\r\n</ol>\r\n\r\n<p>An&nbsp;cung&nbsp;Ngưu&nbsp;hoàng&nbsp;Hàn&nbsp;Quốc&nbsp;nổi&nbsp;tiếng&nbsp;là&nbsp;một&nbsp;loại&nbsp;thuốc&nbsp;Chữa&nbsp;trị&nbsp;chứng&nbsp;đột&nbsp;quỵ&nbsp;(chứng&nbsp;xuất&nbsp;huyết&nbsp;não,&nbsp;liệt&nbsp;toàn&nbsp;thân,&nbsp;liệt&nbsp;chi&nbsp;dưới,&nbsp;liệt&nbsp;tay&nbsp;chân,&nbsp;cấm&nbsp;khẩu,&nbsp;khó&nbsp;phát&nbsp;âm,&nbsp;khó&nbsp;nuốt,&nbsp;hôn&nbsp;mê,&nbsp;lẫn&nbsp;lộn&nbsp;đầu&nbsp;óc,&nbsp;tâm&nbsp;thần,&nbsp;chứng&nbsp;tê&nbsp;liệt&nbsp;ở&nbsp;mặt),&nbsp;cao&nbsp;huyết&nbsp;áp,&nbsp;tim&nbsp;đập&nbsp;nhanh,&nbsp;đánh&nbsp;trống&nbsp;ngực,&nbsp;hô&nbsp;hấp&nbsp;khó,&nbsp;căng&nbsp;thẳng&nbsp;thần&nbsp;kinh,&nbsp;co&nbsp;giật&nbsp;cấp&nbsp;và&nbsp;mãn&nbsp;tính,&nbsp;rối&nbsp;loạn&nbsp;thần&nbsp;kinh&nbsp;thực&nbsp;vật,&nbsp;bất&nbsp;tỉnh&nbsp;nhân&nbsp;sự.</p>\r\n\r\n<p>Công&nbsp;dụng</p>\r\n\r\n<p>-&nbsp;Hoạt&nbsp;huyết&nbsp;và&nbsp;hỗ&nbsp;trợ&nbsp;điều&nbsp;trị&nbsp;cho&nbsp;người&nbsp;bị&nbsp;rối&nbsp;loạn&nbsp;tiền&nbsp;đình,&nbsp;đau&nbsp;đầu,&nbsp;thiếu&nbsp;máu&nbsp;não,&nbsp;tắc&nbsp;động&nbsp;mạch&nbsp;vành,&nbsp;phụ&nbsp;nữ&nbsp;tiền&nbsp;mãn&nbsp;kinh.</p>\r\n\r\n<p>-&nbsp;Đặc&nbsp;biệt&nbsp;dùng&nbsp;rất&nbsp;tốt&nbsp;cho&nbsp;người&nbsp;bị&nbsp;suy&nbsp;nhược&nbsp;thần&nbsp;kinh&nbsp;vì&nbsp;áp&nbsp;lực&nbsp;công&nbsp;việc,&nbsp;lao&nbsp;động&nbsp;trí&nbsp;óc&nbsp;cường&nbsp;độ&nbsp;cao.</p>\r\n\r\n<p>-&nbsp;Giúp&nbsp;ngăn&nbsp;ngừa&nbsp;hiện&nbsp;tượng&nbsp;chảy&nbsp;máu&nbsp;não,&nbsp;xuất&nbsp;huyết&nbsp;não&nbsp;phục&nbsp;hồi&nbsp;hệ&nbsp;thần&nbsp;kinh&nbsp;chức&nbsp;năng&nbsp;cho&nbsp;những&nbsp;bệnh&nbsp;nhân&nbsp;mới&nbsp;và&nbsp;những&nbsp;bênh&nbsp;nhân&nbsp;đã&nbsp;bị&nbsp;tai&nbsp;biến&nbsp;mạch&nbsp;máu&nbsp;não&nbsp;lâu&nbsp;ngày…&nbsp;phục&nbsp;hồi&nbsp;các&nbsp;chức&nbsp;năng&nbsp;do&nbsp;di&nbsp;chứng&nbsp;để&nbsp;lại&nbsp;sau&nbsp;khi&nbsp;bị&nbsp;tai&nbsp;biếm&nbsp;mạch&nbsp;máu&nbsp;não&nbsp;như&nbsp;bán&nbsp;thân&nbsp;bất&nbsp;toại&nbsp;(liệt&nbsp;nửa&nbsp;người),&nbsp;rối&nbsp;loạn&nbsp;chức&nbsp;năng&nbsp;diễn&nbsp;đạt&nbsp;ngôn&nbsp;ngữ…</p>\r\n\r\n<p>-&nbsp;Chữa&nbsp;trị&nbsp;chứng&nbsp;đột&nbsp;quỵ&nbsp;(chứng&nbsp;xuất&nbsp;huyết&nbsp;não,&nbsp;liệt&nbsp;toàn&nbsp;thân,&nbsp;liệt&nbsp;tay&nbsp;chân,&nbsp;khiếm&nbsp;khuyết&nbsp;về&nbsp;ngôn&nbsp;ngữ,&nbsp;khó&nbsp;nuốt,&nbsp;hôn&nbsp;mê,&nbsp;tâm&nbsp;thần,&nbsp;chứng&nbsp;tê&nbsp;liệt&nbsp;ở&nbsp;mặt),&nbsp;cao&nbsp;huyết&nbsp;áp,&nbsp;tim&nbsp;đập&nbsp;nhanh,&nbsp;hô&nbsp;hấp&nbsp;khó,&nbsp;tinh&nbsp;thần&nbsp;bất&nbsp;an,&nbsp;đau&nbsp;co&nbsp;giật&nbsp;cấp&nbsp;và&nbsp;mãn&nbsp;tính,&nbsp;rối&nbsp;loạn&nbsp;thần&nbsp;kinh&nbsp;thực&nbsp;vật,&nbsp;bất&nbsp;tỉnh&nbsp;nhân&nbsp;sự……</p>\r\n\r\n<p>-&nbsp;Phòng&nbsp;chống&nbsp;và&nbsp;điều&nbsp;trị&nbsp;các&nbsp;bệnh&nbsp;về&nbsp;cao&nbsp;huyết&nbsp;áp&nbsp;và&nbsp;tai&nbsp;biến&nbsp;mach&nbsp;máu&nbsp;não,&nbsp;tim&nbsp;đập&nbsp;nhanh,&nbsp;Ích&nbsp;khí&nbsp;dưỡng&nbsp;huyết&nbsp;trấn&nbsp;kinh&nbsp;an&nbsp;thần&nbsp;hóa&nbsp;đờm&nbsp;trị&nbsp;phong,&nbsp;cho&nbsp;các&nbsp;bệnh&nbsp;do&nbsp;khí&nbsp;huyết&nbsp;không&nbsp;đầy&nbsp;đủ,&nbsp;hỏa&nbsp;khí&nbsp;trong&nbsp;người&nbsp;vượng,&nbsp;đờm&nbsp;nhiệt&nbsp;gây&nbsp;nên&nbsp;tức&nbsp;ngực&nbsp;khó&nbsp;thở&nbsp;nhức&nbsp;đầu&nbsp;hoa&nbsp;mắt&nbsp;đi&nbsp;lại&nbsp;nói&nbsp;năng&nbsp;khó&nbsp;khăn,&nbsp;đàu&nbsp;óc&nbsp;không&nbsp;tỉnh&nbsp;táo.</p>\r\n\r\n<p>Cách&nbsp;dùng:</p>\r\n\r\n<p>-&nbsp;Đối&nbsp;với&nbsp;tai&nbsp;biến&nbsp;mạch&nbsp;máu&nbsp;não&nbsp;30&nbsp;ngày&nbsp;đầu,&nbsp;dùng&nbsp;1&nbsp;viên&nbsp;1&nbsp;ngày,&nbsp;cách&nbsp;một&nbsp;ngày&nbsp;dùng&nbsp;1&nbsp;viên,&nbsp;kết&nbsp;hợp&nbsp;với&nbsp;bài&nbsp;tập&nbsp;bổ&nbsp;trợ&nbsp;và&nbsp;chế&nbsp;độ&nbsp;phù&nbsp;hợp&nbsp;về&nbsp;dinh&nbsp;dưỡng,&nbsp;một&nbsp;đợt&nbsp;điều&nbsp;trị&nbsp;thường&nbsp;dùng&nbsp;5&nbsp;đến&nbsp;10&nbsp;hộp&nbsp;tùy&nbsp;theo&nbsp;mức&nbsp;độ&nbsp;nặng&nbsp;nhẹ&nbsp;của&nbsp;tai&nbsp;biến&nbsp;não&nbsp;gây&nbsp;ra.</p>\r\n\r\n<p>-&nbsp;Đối&nbsp;với&nbsp;người&nbsp;bị&nbsp;rối&nbsp;loạn&nbsp;tiền&nbsp;đình,&nbsp;đau&nbsp;đầu,&nbsp;thiếu&nbsp;máu&nbsp;não,&nbsp;tiền&nbsp;mãn&nbsp;kinh,&nbsp;2&nbsp;ngày&nbsp;dùng&nbsp;1&nbsp;viên,&nbsp;mỗi&nbsp;đợt&nbsp;dùng&nbsp;5&nbsp;hộp.</p>\r\n\r\n<p>Uống&nbsp;ngày&nbsp;một&nbsp;đến&nbsp;hai&nbsp;lần,&nbsp;mỗi&nbsp;lần&nbsp;một&nbsp;viên,&nbsp;nhai&nbsp;hoặc&nbsp;dùng&nbsp;nước&nbsp;ấm&nbsp;để&nbsp;uống:</p>\r\n\r\n<p>-&nbsp;Từ&nbsp;8&nbsp;–&nbsp;15&nbsp;tuổi&nbsp;uống&nbsp;2/3&nbsp;viên/&nbsp;lần/&nbsp;ngày</p>\r\n\r\n<p>-&nbsp;Từ&nbsp;5&nbsp;–&nbsp;7&nbsp;tuổi&nbsp;uống&nbsp;1/2&nbsp;viên/&nbsp;lần/&nbsp;ngày</p>\r\n\r\n<p>-&nbsp;Từ&nbsp;2&nbsp;–&nbsp;4&nbsp;tuổi&nbsp;uống&nbsp;1/3&nbsp;viên/&nbsp;lần/&nbsp;ngày</p>\r\n\r\n<p>-&nbsp;Dưới&nbsp;1&nbsp;tuổi&nbsp;uống&nbsp;1/4&nbsp;viên/&nbsp;lần/&nbsp;ngày</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180412'),
(204, 'vn', 'N;', '', '', NULL, 'THUỐC CHỐNG ĐỘT QUỴ HÀN QUỐC', '', '<p>Công dụng :<br />\r\n– Giúp ngăn ngừa hiện tượng chảy máu não, phục hồi hệ thần kinh chức năng.<br />\r\n– Hoạt huyết và hỗ trợ điều trị cho người bị rối loạn tiền đình, đau đầu, thiếu máu não, phụ nữ tiền mãn kinh…..<br />\r\n– Đặc biệt dùng rất tốt cho người bị suy nhược thần kinh vì áp lực công việc, lao động trí óc cường độ cao và đối mặt với những biến cố trong cuộc sống.<br />\r\n– Phòng chống và điều trị các bệnh về cao huyết áp và tai biến mach máu não.<br />\r\n– Ích khí dưỡng huyết trấn kinh an thần hóa đờm trị phong, cho các bệnh do khí huyết không đầy đủ, hỏa khí trong người vượng, đờm nhiệt gây nên tức ngực khó thở nhức đầu hoa mắt đi lại nói năng khó khăn, đầu óc không tỉnh táo.<br />\r\nThành phần:<br />\r\n– Hoài sơn 282mg<br />\r\n– Nhân sâm 97mg,<br />\r\n– Cam thảo 202mg,<br />\r\n– Thần khúc 100mg,<br />\r\n– &nbsp;Bồ hoàng 100mg,<br />\r\n– Vỏ quế 70mg,<br />\r\n– Giá đậu nành 70mg,<br />\r\n– Bạch thược 60mg,<br />\r\n– A giao 70mg,<br />\r\n– Hoàng cầm 60mg,<br />\r\n– Mạch môn 60mg,<br />\r\n– Phòng phong 60mg,<br />\r\n– &nbsp;Đương quy 60mg,<br />\r\n– Bạch truật 60mg,<br />\r\n– &nbsp;Rễ cát cánh 50mg,<br />\r\n– Sài hồ 50mg,<br />\r\n– Quả mơ 50mg,<br />\r\n– Xuyên Khung 50mg,<br />\r\n– Phục linh 50mg,<br />\r\n– Ngưu hoàng 14mg,<br />\r\n– Sừng linh dương 35mg,<br />\r\n– Xạ hương 15mg,<br />\r\n– Long não 41mg,<br />\r\n– Gừng 30mg,<br />\r\n– Bạch liễm 30mg và các thành phần khác như mật ong hàn quốc, glycerin, cellulose dạng vi tinh thể, đường lactose, calci panthenat<br />\r\nCách dùng:<br />\r\n– Đối với tai biến mạch máu não 30 ngày đầu, dùng 1 viên 1 ngày, cách một ngày dùng 1 viên, kết hợp với bài tập bổ trợ và chế độ phù hợp về dinh dưỡng, một đợt điều trị thường dùng 5 đến 10 hộp tùy theo mức độ nặng nhẹ của tai biến não gây ra.</p>\r\n\r\n<p>– Đối với người bị rối loạn tiền đình, đau đầu, thiếu máu não, tiền mãn kinh, 2 ngày dùng 1 viên, mỗi đợt dùng 5 hộp.</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180413');
INSERT INTO `bakcodt_content_ln` (`id`, `ln`, `ln_fields_extra`, `ln_icon`, `ln_image`, `sef_url`, `name`, `intro`, `content`, `title`, `desc`, `keyword`, `priceSale`, `priceBuy`, `status`, `mobilePhone`, `link`, `codePro`) VALUES
(205, 'vn', 'N;', '', '', NULL, 'DONG CHUNG HA CHO _ ĐÔNG TRÙNG HẠ THẢO HÀN QUỐC', '', '<p>Đông trùng hạ thảo Hàn Quốc là những sản phẩm được chiết xuất từ đông trùng hạ thảo thiên nhiên và mùi vị hấp dẫn. Những sản phẩm này không những có tác dụng giải khát mà còn là những loại thực phẩm giúp phục hồi khá nhiều bệnh tật. Đông trùng hạ thảo Hàn Quốc thường ở dạng chai hoặc dạng gói, được đóng hộp rất sang trọng và đảm bảo vệ sinh rất tốt cho sức khỏe,rất tiện lợi cho người sử dụng.<br />\r\nThành phần:<br />\r\nĐông trùng hạ thảo dạng viên nhỏ của hãng dược thảo Danbi food Korea, khối lượng 2x100gr, thành phần đông trùng hạ thảo 70%, linh chi 10%, còn lại là thành phần khác.<br />\r\n&nbsp;Công dụng:<br />\r\nBổ thận tráng dương<br />\r\nTăng cường hệ miễn dịch<br />\r\nNgăn ngừa sự hình thành và phát triển của tế bào ung thư<br />\r\nỔn định nhịp tim cho người mắc bệnh tim mạch<br />\r\nTăng cường sức khỏe hậu phẫu thuật cho người mới mổ<br />\r\nChống viêm hen phế quản<br />\r\nLàm chậm quá trình lão hóa của cơ thể<br />\r\nCách dùng:&nbsp;<br />\r\n1 ngày 2 lần mỗi lần 30 – 40 viên trước bữa ăn hoặc trong khi ăn</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180415'),
(206, 'vn', 'N;', '', '', NULL, 'Sữa rửa mặt DewDrop Beauty White Plus Renew Cleansing Foam ', '', '<p>Sữa rửa mặt trắng da DewDrop Beauty với thành phần chiết xuất tự nhiên dịu nhẹ cho da là giải pháp chăm sóc, làm sạch da hoàn hảo giúp loại bỏ hoàn toàn bụi bẩn, dầu nhờn, tế bào da chết, hỗ trợ se khít lỗ chân lông, cải thiện bề mặt da xỉn màu nhiều đốm nâu, giúp tái sinh làn da trắng hồng, khỏe mạnh dài lâu.<br />\r\n- Lấy đi các tế bào da nâu xỉn trên bề mặt da, cải thiện độ chắc khỏe và rạng rỡ cho da.<br />\r\n- Thành phần thảo dược của sữa rửa mặt dewdrop beauty từ cây phỉ từ Bắc Mỹ giúp se khít lỗ chân lông, ngăn ngừa bụi bẩn làm nang lông bưng bít hình thành mụn cám, mụn trứng cá.<br />\r\n- Tăng độ cường độ đàn hồi giúp da trắng sáng, mềm mại và săn chắc.<br />\r\n- Duy trì độ ẩm tự nhiên giúp da mượt mà, ngừa bong tróc<br />\r\n- Làm sạch sâu giúp da trắng sáng tự nhiên, loại bỏ các chất bẩn và lớp trang điểm dễ dàng.<br />\r\n- Sản phẩm thích hợp cho da khô, da thường, da hỗn hợp. Kể cả da nhạy cảm<br />\r\n&nbsp;Cách sử dụng :<br />\r\n- Làm ướt da mặt bằng nước sạch, cho một lượng sữa rửa mặt vừa đủ vào lòng bàn tay tạo bọt hay miếng bọt rửa tạo bọt.<br />\r\n- Thoa lên khắp mặt rồi nhẹ nhàng massage theo vòng xoáy ốc trong 1-3 phút.<br />\r\n- Rửa lại với nước mát và thấm khô bằng khăn mềm.<br />\r\n&nbsp;</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180416'),
(207, 'vn', 'N;', '', '', NULL, 'Dewdrop Beauty Volcanic Pore Bubble Cleansing 150ml - Bọt rửa mặt Hàn Quốc dewdrop beauty', '', '<p>Bọt rửa mặt trị mụn Hàn Quốc Dewdrop Beauty Volcanic Pore Bubble Cleansing 150ml – Trị sạch mụn da mịn màng<br />\r\nCông dụng:<br />\r\n- Chiết xuất từ ​​rau diếp cá cung cấp các hiệu ứng chống viêm, se khít lỗ chân lông.<br />\r\n- Đất sét núi lửa (Volcanic Clay) là thành phần quan trọng để hút ra tất cả các tạp chất từ bên dưới lỗ chân lông. Nó rút ra dầu và bụi bẩn từ sâu bên trong da. Da sạch chất nhờn bụi bẩn giúp giảm mụn đầu đen rõ rệt.<br />\r\n- Chiết xuất từ quả đu đủ giúp tẩy sạch tế bào chết, mang lại làn da tươi trẻ.<br />\r\n- Mát lạnh và sảng khoái từ các tinh dầu thiên nhiên đem lại những giây phút thư giản cho làn da của bạn.<br />\r\n* Thành phần:<br />\r\nVolcanic Clay, Eoseongcho extracts, Centella Asiatica,&nbsp;Camellia Japonica, Green Tea…<br />\r\n* Hướng dẫn sử dụng:<br />\r\n- Cho một lượng bọt kem vừa đủ và thoa lên vùng chữ T và U (trán, cằm trái, phải, mũi, và cằm) sau đó massage vòng tròn đều, nhẹ nhàng từ 2-3 phút, sau đó rửa lại thật sạch bằng nước ấm.<br />\r\n- Để có kết quả tốt nhất, sử dụng vào buổi sáng và buổi tối, giúp bạn nhanh chóng lấy lại được làn da tươi trẻ, trắng sáng mịn màng chỉ sau 1 tuần sử dụng.<br />\r\n- Bảo quản sản phẩm nơi thoáng mát, tránh lưu trữ ở nhiệt độ cao.<br />\r\n&nbsp;</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180417'),
(208, 'vn', 'N;', '', '', NULL, 'Soultem skin vitamin k3', '', '<p>Gồm &nbsp;tinh chất nước biển sâu , tinh chất Thuỷ điệt ( con đỉa) , tinh chất Mã hoàng ( đĩa trâu) , menadione-vitamin k3, tinh dầu hạt thìa là ai cập đen , Vitamin C energy waterfull gel, tinh chất ngũ bội tử, tinh chất hoàng cầm , rễ cây hoa mẫu đơn, sâm cổ lâu năm , Camellia Sinensis Leaf Extract- tinh chất lá trà xanh , tinh chất lá đào, tinh chất lá cây bạch quả và cùng một số thảo dược khác …<br />\r\n2. Công Dụng : Chỉ trong vòng 2 tuần đầu sử dụng bạn sẽ cảm nhận được làn da bạn sẽ có những thay đổi không ngờ và hoàn toàn khiến bạn hài lòng<br />\r\n&nbsp; – &nbsp;Cung cấp độ ẩm cho da<br />\r\n&nbsp; – &nbsp;Vết thâm,nám và các tì vết sẽ nhạt dần và được cải thiện đáng kể.<br />\r\n&nbsp; – &nbsp;Các vùng da bị tụ huyết, mầm mụn nằm sâu dưới da, tăng cường khả năng tuần hoàn máu , kháng khuẩn, vitamin k3 là thành phần quan trọng để bảo vệ da tránh khỏi mọi tác nhân gây hại từ bên trong và bên ngoài môi trường.<br />\r\n&nbsp; – &nbsp;Vết nhăn giảm một cách rõ rệt.<br />\r\n&nbsp; – &nbsp;Cấu trúc làn da được cải tạo và da trở nên săn chắc hơn, khỏe mạnh hơn từ hạ bì đến lớp ngoài cùng của da.<br />\r\n&nbsp; – &nbsp;Độ sáng của da thay đổi một cách tích cực.<br />\r\n&nbsp;– &nbsp;Nhẹ nhàng tẩy tế bào chết, giúp điều tiết chu trình tái tạo da.<br />\r\n&nbsp;– &nbsp; Các đốm hắc tố mờ dần đi, giảm sự xuất hiện của các nếp nhăn, kết cấu da trở nên mịn màng hơn, da săn chắc hơn, và làm da sáng ngời rạng rỡ.<br />\r\n&nbsp;– &nbsp;Làn da của bạn sẽ trở nên trong suốt như pha lê.<br />\r\n3. &nbsp;Hướng Dẫn Sử Dụng :<br />\r\n– Sử dụng 2 lần/ngày, buổi sáng và buổi tối. Sau khi rửa mặt, cho một lượng nhỏ SOULTEM SKIN VITAMIN K3 Facial Treatment Esence &nbsp;vào bông cotton ( bằng khoảng 1 đồng xu) . Dùng bông thấm đều lên mặt, nhẹ nhàng dùng lực nhẹ để tinh chất được thẩm thấu vào da của bạn.<br />\r\n&nbsp;</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180418'),
(209, 'vn', 'N;', '', '', NULL, 'KEM TRẮNG DA CHỐNG LÃO HÓA SOULTEM SKIN VITAMIN K3 TREATMENT CREAM', '', '<p>KEM TRẮNG DA CHỐNG LÃO HÓA SOULTEM SKIN VITAMIN K3 TREATMENT CREAM<br />\r\nThành phần :&nbsp;<br />\r\nMenadione-vitaminK3, tinh chất nước biển sâu, tinh chất Hoàng Liên, tinh chất Ngũ Bội Tử, cao khô Hoàng Cầm, rễ cây Mẫu Đơn, Sâm cổ lâu năm, tinh chất lá trà xanh, tinh chất lá Đào, tinh chất Bạch Quả, tinh dầu Hạt Nho Đen, Arginine ( gốc Amino), Dimethicone, cùng với một số thảo dược khác<br />\r\nCông dụng :&nbsp;<br />\r\n- Kem Vitamin K3 có tác dụng chống lão hoá một cách thần kì, đối với các làn da sần sùi, thô ráp, lỗ chân lông to....chỉ cần sử dụng vài lần bạn sẽ cảm nhận làn da thay đổi rõ rệt, da mịn màng, mềm mượt hẳn lên.<br />\r\n- Kem Vitamin K3 có tác dụng nhanh làm mờ và mất hẳn vết thâm do mụn để lại... Các vết nám, tàn nhang, da không đều màu sẽ được cải thiện rất đáng kể chỉ sau một thời gian sử dụng...<br />\r\n- Sự kết hợp tuyệt vời giữa công nghệ chống lão hóa và làm trắng sáng da tân tiến , giúp da sáng rực rỡ và mượt mà , ngăn ngừa hình thành nám trong tương lai .<br />\r\n- Thích hợp với mọi loại da , kể cả da mỏng . ( không dùng cho da mụn , da đã sử dụng qua kem trộn , kem lột tẩy )<br />\r\nHướng dẫn sử dụng :<br />\r\n- Sử dụng vào buổi tối , nếu bạn muốn dùng vào ban ngày thì nên tránh nắng kỹ , bạn nào ngồi trong mát thì dùng được vào ban ngày.<br />\r\n- Dùng muỗng (có sẵn) lấy 1 lượng kem vừa đủ thoa đều khắp mặt, sau đó vỗ nhẹ cho kem thấm sâu vào, bạn sẽ cảm nhận được kem đang được thấm vào da.<br />\r\n&nbsp;</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180419'),
(210, 'vn', 'N;', '', '', NULL, 'Dewdrop beauty 24K gold collagen', '', '<p>- Serum DewDrop Beauty chiết xuất hoàn toàn từ thiên nhiên , serum dạng nước có đường kính nhỏ hơn lỗ chân lông nên thẩm thấu rất nhanh vào da và đặc biệt là không gây nhờn cho da . Ngoài ra serum DewDrop Beauty còn làm giảm thiểu tối đa những nếp nhăn xuất hiện do các nguyên nhân gây lão hóa , khoanh vùng và cắt đứt ngăn ngừa sự hội tụ liên kết của sắc tố melanin là nguyên nhân gây sạm nám , tàn nhang , đồi mồi . Serum còn giúp dưỡng ẩm , làm mềm và căng mịn và trắng sáng làn da của bạn .<br />\r\n* Thông tin sản phẩm :<br />\r\nThành phần : Tinh chất dâu tằm, tinh chất dâu tây, tinh chất trà xanh, phức hợp Allantoin, tinh chất thiên sâm, Collagen tự nhiên 5mg, tinh chất trái sơ ri (Acerola cherry), vàng 24k 5mg và một số thảo mộc thiên nhiên....<br />\r\nCông dụng : tinh chất serum 24k gold collagen<br />\r\n- Với tinh chất dâu tằm, dâu tây giúp ức chế sắc tố melanin, tinh chất trà xanh và phức hợp Allantoin giúp loại bỏ hoàn toàn bã nhờn và tế bào chết trên da, giúp tăng khả năng hấp thụ dưỡng chất sâu cho da.<br />\r\n- Độ ẩm phong phú, kết cấu không bết dính giúp cho da khô trở nên ẩm mượt và phẳng mịn ngay khi dùng. Tinh chất dưỡng trắng hoạt động cùng lúc với tinh chất dưỡng ẩm chứa phức hợp vàng 24k giúp cải thiện những vùng da bị tổn hại do hoá chất làm xạm màu, làn da ngay lập tức sáng hơn và rạng rỡ hơn.&nbsp;<br />\r\n- Chống lão hóa , chống nhăn . Cho làn da sáng mịn và săn chắc chỉ sau 14 ngày sử dụng .&nbsp;<br />\r\n- Tái tạo , phục hồi các tế bào da đã hư tổn, kích thích hình thành tế bào da mới trắng hồng rạng rỡ. Kết hợp với tinh chất collagen tăng cường liên kết tế bào da, làm săn chắc da , nâng cơ , tăng đàn hồi , chống oxy hóa mạnh mẽ , làm chậm tiến trình lão hóa . Giữ ẩm , giảm lượng melanin làm da sáng , giúp làn da khỏe mạnh , tươi tắn<br />\r\nHướng dẫn sử dụng :<br />\r\n- Sau khi rửa mặt cho 1-2 giọt thoa đều trên mặt và cổ của bạn , sau đó massage nhẹ nhàng để tinh chất hấp thu vào sâu bên trong da sau khi làm sạch mặt .&nbsp;<br />\r\n- Để có kết quả tốt nhất , sử dụng vào buổi sáng và buổi tối ,có thể dùng kết hợp với kem dưỡng để giúp tăng sức mạnh của làn da , cho bạn nhanh chóng lấy lại độ deo dai và độ mềm của da , ngay lập tức da được biến đổi mịn màng chỉ sau 1 tuần da được hồi sinh , làn da trắng sáng mịn màng .<br />\r\n- Bảo quản sản phẩm ở môi trường nhiệt độ mát , tránh lưu trữ ở nhiệt độ nóng sau khi đã lưu trữ trong tủ lạnh .<br />\r\n&nbsp;</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180419'),
(211, 'vn', 'N;', '', '', NULL, 'DewDrop Beauty Acne Treatment Spot Ampoule ', '', '<p>serum tri mụn DewDrop Beauty Acne Treatment Spot Ampoule - sản phẩm trị mụn hiệu quả tại Hàn Quốc giúp bạn nhanh chóng ngăn ngừa, loại bỏ mụn nhanh chóng, ngăn ngừa những tổn thương cho da, tái tạo và bảo vệ da một cách toàn diện, cho làn da luôn tươi tắn, rạng rỡ và mịn màng.<br />\r\nCông dụng :<br />\r\n- Có thành phần trị mụn được chiết xuất từ thiên nhiên trong y học mang lại 1 làn da mềm mại , đặc biệt thích hợp với mọi loại da .<br />\r\n- &nbsp;Cân bằng các chất nhờn trên da , trị mụn 1 cách hiệu quả mà không để lại sẹo , vết thâm .<br />\r\n- Sử dụng các thành phần thiên nhiên , không có tác dụng phụ , không làm bít lỗ chân lông , làm cho da mịn màng mềm mại mà không gây kích ứng .<br />\r\n- Ngăn ngừa tái phát mụn do nội tiết phát ra làm tổn hại đến da .<br />\r\n- Sử dụng kỹ thuật quốc tế tiên tiến nhất , sử dụng các tinh chất làm từ thiên nhiên .<br />\r\n- Làm hết mụn 1 cách nhanh nhất, phục hồi làn da bị hư tổn và thu nhỏ lỗ chân lông .<br />\r\n- Với các nguyên liệu được chiết xuất từ thiên nhiên thẩm thấu sâu vào lỗ chân lông , làm cho mụn bọc , mụn mủ , mụn cám sẽ giảm bớt , thu nhỏ khô dần và hết dần trong thời gian ngắn nhất .<br />\r\n- Làm cải thiện làn da bị hư tổn , loại bỏ tất cả độc tố bám trên da , giúp lỗ chân lông trên mặt được thông thoáng . Phục hồi da , làm mờ các vết sẹo trên mặt , làm cho da mặt trắng sáng tràn đầy sức sống .<br />\r\nCách dùng :<br />\r\n&nbsp;Sau khi rửa mặt sạch bằng sữa rửa mặt , lấy serum xoa đều vào những chỗ mụn mọc lên , dùng tay massage nhẹ nhàng chỗ đó để serum được thẩm thấu một các triệt để vào bên trong da .<br />\r\n&nbsp;</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180420'),
(212, 'vn', 'N;', '', '', NULL, 'Serum Hàn Quốc Dewdrop Beauty 24K Gold Collagen Whitening 30ml ', '', '<p>- Chiết xuất từ vàng, thành phần mà rất nhiều phụ nữ hiện đại đã được sử dụng để duy trì làn da tươi trẻ của mình, tái tạo làn da tươi trẻ, ngăn chặn quá trình lão hóa của da, xóa mờ dấu vết của tàn nhang và đốm lão hóa.<br />\r\n- Tinh chất collagen thúc đẩy sự trao đổi chất da, tạo lớp màng ẩm bảo vệ, nâng cao mức độ dinh dưỡng da và giữ ẩm cho da mịn màng, đàn hồi.<br />\r\n- Với tinh chất dâu tằm, dâu tây giúp da sáng, nuôi dưỡng một làn da tươi sáng bằng cách ức chế melanin gây nám da, tàn nhang và để duy trì làn da khỏe mạnh.<br />\r\n- Tinh chất trà xanh và phức hợp Allantoin giúp loại bỏ hoàn toàn bã nhờn và tế bào chết trên da, giúp tăng khả năng hấp thụ dưỡng chất sâu cho da.<br />\r\n* Thành phần:<br />\r\nChiết xuất từ vàng, Tinh chất collagen, Tinh chất dâu tằm, dâu tây, Allantoin, Green Tea…<br />\r\n* Hướng dẫn sử dụng:<br />\r\n- Sau khi rửa mặt sạch, nhỏ vào đầu ngón tay giữa và thoa lên vùng chữ T và U (trán, cằm trái, phải, mũi, và cằm) sau đó massage đều, nhẹ nhàng 2-3 giọt/lần sử dụng.<br />\r\n- Để có kết quả tốt nhất, sử dụng vào buổi sáng và buổi tối, để giúp đạt hiệu quả nhanh hơn, giúp bạn nhanh chóng lấy lại được làn da tươi trẻ, trắng sáng mịn màng chỉ sau 1 tuần sử dụng.<br />\r\n- Bảo quản sản phẩm nơi thoáng mát, tránh lưu trữ ở nhiệt độ cao.<br />\r\n&nbsp;</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180421'),
(213, 'vn', 'N;', '', '', NULL, 'Serum Hàn Quốc Dewdrop Beauty 24K Gold Collagen Anti Wrinkle 30ml ', '', '<p>Thành phần:<br />\r\n- Chiết xuất từ vàng, giúp cải thiện hiệu quả vùng da bị chảy xệ, kém săn chắc và bị tổn thương do hóa chất và môi trường, ngăn ngừa sắc tố melanin.<br />\r\n- Tinh chất collagen thúc đẩy sự trao đổi chất da, tạo lớp màng ẩm bảo vệ, nâng cao mức độ dinh dưỡng da và giữ ẩm cho da mịn màng, đàn hồi.<br />\r\n- Thành phần tannin, chiết xuất từ trà xanh ức chế quá trình oxy hóa, cung cấp sức sống mới cho làn da.<br />\r\n- Chiết xuất từ mận Nhật và chiết xuất rượu vang nuôi dưỡng da, cho làn da khỏe mạnh và tươi sáng.<br />\r\n- Tinh chất trứng cá tầm thẩm thấu sâu dưới da cung cấp dưỡng chất nuôi dưỡng và tái tạo làn da mới căng mịn màng và săn chắc.<br />\r\n* Lưu ý: Tác dụng của sản phẩm có thể thay đổi tùy theo tình trạng cơ địa của mỗi người.<br />\r\n* Hướng dẫn sử dụng:<br />\r\n- Sau khi rửa mặt sạch, nhỏ vào đầu ngón tay giữa và thoa lên vùng chữ T và U (trán, cằm trái, phải, mũi và cằm) sau đó massage đều, nhẹ nhàng 2-3 giọt/lần sử dụng.<br />\r\n- Để có kết quả tốt nhất, sử dụng vào buổi sáng và buổi tối, để giúp đạt hiệu quả nhanh hơn, giúp bạn nhanh chóng lấy lại được làn da tươi trẻ, trắng sáng mịn màng chỉ sau 1 tuần sử dụng.<br />\r\n- Bảo quản sản phẩm nơi thoáng mát, tránh lưu trữ ở nhiệt độ cao.<br />\r\n&nbsp;</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180422'),
(214, 'vn', 'N;', '', '', NULL, 'Shining lip mask ( mặt nạ ngủ môi )', '', '<p>Công dụng:&nbsp;<br />\r\n- Giúp loại bỏ tế bào chết trên môi, cung cấp độ ẩm sâu cho môi .<br />\r\n- Giúp môi sáng dần và hồng hào tự nhiên, &nbsp;môi mềm, căng mịn, ko còn khô và nhiều nếp nhăn ...<br />\r\n- Đặc biệt làm môi ửng hồng chứ không còn thiếu sức sống. Bạn nào môi bị tình trạng khô, tróc da, nứt môi, thậm chí môi thâm (môi chì) thì dùng thử đi ạh... rất hiệu quả!!!<br />\r\n&nbsp;Thành phần :<br />\r\nTinh dầu quả Macca, tinh dầu Olive, Sáp Ong rừng , Hydrogenated Oil ( Tinh dầu giúp hồng môi ), Dầu khoáng thiên nhiên, Vitamin E cùng 1 số thảo mộc khác...&nbsp;<br />\r\nHướng dẫn sử dụng :&nbsp;<br />\r\nLấy 1 lượng vừa đủ thoa đều lên môi vào mỗi tối.&nbsp;<br />\r\n&nbsp;</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180423'),
(215, 'vn', 'N;', '', '', NULL, 'Salmon Mask Pack (mặt nạ cá Hồi)', '', '<p>Được chiết xuất từ nước biển sâu, tinh chất trứng cá Hồi 1000ppm, muối Hyaluronate, tinh dầu tự nhiên, tinh dầu PEG-60 Hydrogenated Castor Oil, cùng với những tinh chất thảo mộc thiên nhiên...<br />\r\n- Công dụng:&nbsp;<br />\r\nHàm lượng DHA và axit béo Omega 3 trong trứng cá Hồi giúp tăng cường khả năng miễn dịch, đánh bay chân mụn, mụn cám, mụn đầu đen. Phục hồi da bị tổn thương do ánh nắng mặt trời, tia cực tím.... hàm lượng Protein giúp ngăn ngừa lão hoá, dưỡng ẩm, chống nhăn, làm trắng hiệu quả cho da.<br />\r\n- Cách dùng:&nbsp;<br />\r\nLấy lượng tinh chất có sẵn trong mặt nạ massage khoảng 5’, sau đó đặt mặt nạ lên khuôn mặt, tránh vùng mắt và môi. Vỗ nhẹ nhàng cho tinh chất hoàn toàn thấm vào da. Gỡ bỏ mặt nạ sau khoảng 15-25 phút, rồi rửa lại bằng nước sạch.&nbsp;<br />\r\n&nbsp;</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180424'),
(216, 'vn', 'N;', '', '', NULL, 'Dewdrop beauty shining perfect body scrub', '', '<p>1. Thành Phần Chính :<br />\r\n&nbsp;Tinh chất trái Dứa (Thơm), tế bào thực vật, tinh chất tạo Phi Thảo, saponaria oficinalis( cẩm chướng), Hamamelis Virginiana (Witch Hazel) Leaf Extract (tinh chất cây Phỉ)… cùng một số tinh dầu dưỡng chất thảo mộc khác<br />\r\n2. Công Dụng :<br />\r\n&nbsp;Loại bỏ da chết 1 cách dễ dàng giúp da sáng mịn.<br />\r\n&nbsp;Là bước quan trọng giúp tăng cường hấp thu dưỡng chất cho liệu trình sau.<br />\r\n&nbsp;Cung cấp dưỡng chất giúp dưỡng ẩm cho da.<br />\r\n&nbsp;Se khít lỗ chân lông, làm mềm mịn da, ngăn ngừa làm chậm quá trình lão hóa của da, tăng độ đàn hồi và tuyệt đối an toàn cho da.<br />\r\n&nbsp;Ngoài tác dụng giúp lấy đi tế bào chết trên da, body scrub còn có các hạt massage nhỏ nhẹ nhàng chà xát trên body giúp đẩy mạnh lưu thông tuần hoàn máu trong cơ thể , giúp bạn có một làn da bóng khỏe, mềm mượt.<br />\r\nLàm sạch lớp sừng chết và hổ trợ lưu thông máu nhờ tinh chất lá cây phỉ kết hợp tinh tuý cùng các thảo mộc giúp chữa lành và ngăn ngừa mụn trứng cá, lở loét, vết bầm tím, bệnh vẩy nến, da nhờn hư tổn do ánh nắng mặt trời và cháy nắng… với những thành phần và dưỡng chất giàu vitamin giúp da khỏe mạnh và toàn thân trắng hồng tự nhiên.<br />\r\nThích hợp với mọi loại da.<br />\r\n3. &nbsp;Hướng Dẫn Sử Dụng :<br />\r\nLàm ướt toàn thân , lấy lượng kem vừa đủ lên bông tắm, massage theo chuyển động tròn từ 1-3 phút rồi tắm lại bằng nước sạch. Sau đó nên sử dụng kem dưỡng để chăm sóc da được toàn diện hơn , 1 tuần sử dụng 1 -2 lần . Đây là phương pháp tẩy da chết an toàn, do đó bạn nên chú ý trong quá trình tẩy da chết để đạt hiệu quả tốt nhất nhé !<br />\r\n&nbsp;</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180425'),
(217, 'vn', 'N;', '', '', NULL, 'Soultem Skin Eyelash Advance Ampoul - HUYẾT TƯƠNG DƯỠNG DÀI MI ', '', '<p>Thành phần:<br />\r\nMuối khoáng Hyaluronate,Tinh chất hoa hồng,rễ cây thông dù nhật bản,Tinh chất rau sam,Tinh chất đậu đen,Tinh chất chi mã dề, tinh chất củ hoàng cầm (hoa môi),Cao lá liễu trắng,cao lá liễu sam,tinh chất rau má ấn độ,tế bào gốc copper tripeptid,...cùng với một số thảo dược thiên nhiên khác.<br />\r\nCông dụng:<br />\r\nChống lão hoá lông mi, cung cấp dưỡng chất cần thiết để nuôi dưỡng lông mi, tạo độ ẩm để tránh lông mi bị giòn và dễ gãy,với thành phần tế bào gốc hàm lượng cao giúp lông mi khoẻ mạnh, mọc dày, dài và sẫm màu tự nhiên , tế bào gốc copper giúp lông mi công hơn...<br />\r\nCách dùng:<br />\r\nTrước tiên hãy dùng chai Tonic quát nhẹ nhàng lên chân lông mi ( như kẻ mắt nước eyeliner) sau đó lấy chai Essence quét nhẹ nhàng 2-3 lần lên lông mi từ trong ra ngoài. Để tăng tính hiệu hiệu quả nên sử dụng 2 lần/ngày.<br />\r\n14.soultem skin sexy girl - bọt vệ sinh vùng kín<br />\r\nTHÀNH PHẦN :&nbsp;<br />\r\nNước tinh khuyết , muối khoáng , butylene glycol , tinh dầu PEG-60 , tinh chất lá hương thảo , tinh chất rễ sâm tự nhiên , tinh chất trái ớt chuông , tinh chất lá cú khi ( cây hoàn ngọc ) , tinh chất quả mâm xôi , tinh chất củ Angelica Dahurica, tinh dầu lá thông , tinh chất lá dầu tằm , hà thủ ô cùng một số thảo dược khác .<br />\r\nCÔNG DỤNG :<br />\r\nKháng khuẩn , khử mùi hôi , hỗ trợ cân bằng sinh lý , tăng khả năng đàn hồi vùng da bị lão hoá , trẻ hoá mô mềm , làm giảm nhăn nheo , khô ráp , sáng hồng vùng kín , hỗ trợ điều trị viêm nhiễm vùng kín . Đặc biệt thích hợp cho phụ nữ thời kì kinh nguyệt và thai sản , sự kết hợp tinh tuý những thảo mộc thiên nhiên giúp vùng kín luôn sạch và thơm mát suốt ngày .<br />\r\nCách dùng :<br />\r\n&nbsp;Lấy 1 lượng nhỏ vừa đủ thoa đều , massage nhẹ nhàng 30 giây sau đó rửa lại bằng nước sạch .</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180426'),
(218, 'vn', 'N;', '', '', NULL, 'Soultem skin sexy girl - bọt vệ sinh vùng kín', '', '<p>THÀNH PHẦN :&nbsp;<br />\r\nNước tinh khuyết , muối khoáng , butylene glycol , tinh dầu PEG-60 , tinh chất lá hương thảo , tinh chất rễ sâm tự nhiên , tinh chất trái ớt chuông , tinh chất lá cú khi ( cây hoàn ngọc ) , tinh chất quả mâm xôi , tinh chất củ Angelica Dahurica, tinh dầu lá thông , tinh chất lá dầu tằm , hà thủ ô cùng một số thảo dược khác .<br />\r\nCÔNG DỤNG :<br />\r\nKháng khuẩn , khử mùi hôi , hỗ trợ cân bằng sinh lý , tăng khả năng đàn hồi vùng da bị lão hoá , trẻ hoá mô mềm , làm giảm nhăn nheo , khô ráp , sáng hồng vùng kín , hỗ trợ điều trị viêm nhiễm vùng kín . Đặc biệt thích hợp cho phụ nữ thời kì kinh nguyệt và thai sản , sự kết hợp tinh tuý những thảo mộc thiên nhiên giúp vùng kín luôn sạch và thơm mát suốt ngày .<br />\r\nCách dùng :<br />\r\n&nbsp;Lấy 1 lượng nhỏ vừa đủ thoa đều , massage nhẹ nhàng 30 giây sau đó rửa lại bằng nước sạch .</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180426'),
(219, 'vn', 'N;', '', '', NULL, '1.LANEIGE WARTER BANK - GEL CREAM', '', '<p>Ưu điểm:</p>\r\n\r\n<p>Cung&nbsp;Cấp&nbsp;Độ&nbsp;Ẩm&nbsp;Trong&nbsp;Từng&nbsp;Khoảnh&nbsp;Khắc!<br />\r\n-&nbsp;Kem&nbsp;dưỡng&nbsp;giảm&nbsp;nhiệt&nbsp;độ&nbsp;của&nbsp;da&nbsp;nhanh&nbsp;chóng&nbsp;và&nbsp;hiệu&nbsp;qu<br />\r\n-&nbsp;Bổ&nbsp;sung&nbsp;độ&nbsp;ẩm&nbsp;cho&nbsp;da<br />\r\n-&nbsp;Giữ&nbsp;cho&nbsp;da&nbsp;ẩm&nbsp;mượt&nbsp;trong&nbsp;cả&nbsp;ngày&nbsp;và&nbsp;giúp&nbsp;làm&nbsp;giảm&nbsp;lượng&nbsp;dầu&nbsp;trên&nbsp;da.</p>\r\n\r\n<p>-&nbsp;&nbsp;Kem&nbsp;dưỡng&nbsp;ẩm&nbsp;dạng&nbsp;gel&nbsp;giúp&nbsp;kích&nbsp;thích&nbsp;các&nbsp;thành&nbsp;phần&nbsp;dưỡng&nbsp;ẩm&nbsp;sâu&nbsp;trong&nbsp;da&nbsp;để&nbsp;tăng&nbsp;cường&nbsp;sự&nbsp;sản&nbsp;xuất&nbsp;ẩm&nbsp;đồng&nbsp;thời&nbsp;củng&nbsp;cố&nbsp;khả&nbsp;năng&nbsp; dưỡng&nbsp;ẩm&nbsp;tự&nbsp;nhiên&nbsp;của&nbsp;làn&nbsp;da.<br />\r\n-&nbsp;&nbsp;Nước&nbsp;chứa&nbsp;các&nbsp;ion&nbsp;khoáng&nbsp;chất&nbsp;“Hydro-Ion&nbsp;Mineral&nbsp;Water”<br />\r\nĐược&nbsp;hình&nbsp;thành&nbsp;từ&nbsp;6&nbsp;loại&nbsp;khoáng&nbsp;chất&nbsp;cần&nbsp;thiết&nbsp;cho&nbsp;làn&nbsp;da,&nbsp;nước&nbsp;chứa&nbsp;các&nbsp;ion&nbsp;khoáng&nbsp;chất&nbsp;“Hydro&nbsp;Ion&nbsp;Mineral&nbsp;Water”&nbsp;dễ&nbsp;dàng&nbsp;thẩm&nbsp;thấu&nbsp;vào&nbsp;sâu&nbsp; bên&nbsp;trong&nbsp;giúp&nbsp;tăng&nbsp;cường&nbsp;khả&nbsp;năng&nbsp;tự&nbsp;tạo&nbsp;độ&nbsp;ẩm&nbsp;của&nbsp;làn&nbsp;da&nbsp;bằng&nbsp;cách&nbsp;kích&nbsp;hoạt&nbsp;các&nbsp;genes&nbsp;dưỡng&nbsp;ẩm.<br />\r\n-&nbsp;&nbsp;Giúp&nbsp;dưỡng&nbsp;ẩm&nbsp;sâu&nbsp;cho&nbsp;da.</p>\r\n\r\n<p>-&nbsp;Tăng&nbsp;cường&nbsp;khả&nbsp;năng&nbsp;dưỡng&nbsp;ẩm,&nbsp;giữ&nbsp;cho&nbsp;da&nbsp;ẩm&nbsp;mượt&nbsp;trong&nbsp;cả&nbsp;ngày.</p>\r\n\r\n<p>Thành&nbsp;phần&nbsp;:&nbsp;</p>\r\n\r\n<p>WATER,&nbsp;BUTYLENE&nbsp;GLYCOL,&nbsp;CYCLOPENTASILOXANE,&nbsp;GLYCERIN,&nbsp;ALCOHOL,&nbsp;CYCLOHEXASILOXANE,&nbsp;DIMETHICONE,&nbsp;CHENOPODIUM&nbsp;QUINOA&nbsp;SEED&nbsp;EXTRACT,&nbsp;MAGNESIUM&nbsp;SULFATE,&nbsp;ZINC&nbsp;SULFATE,&nbsp;MANGANESE&nbsp;SULFATE,&nbsp;CALCIUM&nbsp;CHLORIDE,&nbsp;ASCORBYL&nbsp;GLUCOSIDE,&nbsp;CHAMAECYPARIS&nbsp;OBTUSA&nbsp;WATER,&nbsp;SODIUM&nbsp;HYALURONATE,&nbsp;CERAMIDE&nbsp;3,&nbsp;ACETYL&nbsp;GLUCOSAMINE,&nbsp;COPPER&nbsp;TRIPEPTIDE-1,&nbsp;NIACINAMIDE,&nbsp;TOCOPHEROL,&nbsp;LIMNANTHES&nbsp;ALBA&nbsp;(MEADOWFOAM)&nbsp;SEED&nbsp;OIL,&nbsp;GLYCERYL&nbsp;STEARATE,&nbsp;DICAPRYLYL&nbsp;CARBONATE,&nbsp;CYCLOMETHICONE,&nbsp;CETEARYL&nbsp;ALCOHOL,&nbsp;CETYL&nbsp;ETHYLHEXANOATE,&nbsp;STEARIC&nbsp;ACID,&nbsp;AMMONIUM&nbsp;ACRYLOYLDIMETHYLTAURATE/VP&nbsp;COPOLYMER,&nbsp;ETHYLHEXYLGLYCERIN,&nbsp;TRISILOXANE,&nbsp;PALMITIC&nbsp;ACID,&nbsp;PHENYL&nbsp;METHICONE,&nbsp;POTASSIUM&nbsp;CETYL&nbsp;PHOSPHATE,&nbsp;POLYGLYCERYL-10&nbsp;STEARATE,&nbsp;POLYGLYCERYL-3&nbsp;METHYLGLUCOSE&nbsp;DISTEARATE,&nbsp;POLYSORBATE&nbsp;20,&nbsp;POLYSILICONE-11,&nbsp;POLYACRYLATE-13,&nbsp;POLYETHYLENE,&nbsp;POLYISOBUTENE,&nbsp;PROPYLENE&nbsp;GLYCOL,&nbsp;PEG-100&nbsp;STEARATE,&nbsp;PEG-5&nbsp;RAPESEED&nbsp;STEROL,&nbsp;PEG/PPG-20/15&nbsp;DIMETHICONE,&nbsp;PHYTOSPHINGOSINE,&nbsp;HYDROGENATED&nbsp;LECITHIN,&nbsp;HYDROGENATED&nbsp;POLYISOBUTENE,&nbsp;HYDROXYETHYL&nbsp;ACRYLATE/SODIUM&nbsp;ACRYLOYLDIMETHYL&nbsp;TAURATE&nbsp;COPOLYMER,&nbsp;DISODIUM&nbsp;EDTA,&nbsp;PHENOXYETHANOL,&nbsp;FRAGRANC</p>\r\n\r\n<p>Cách&nbsp;sử&nbsp;dụng:</p>\r\n\r\n<p>Lấy&nbsp;1&nbsp;lượng&nbsp;sản&nbsp;phẩm&nbsp;vừa&nbsp;đủ&nbsp;thoa&nbsp;đều&nbsp;lên&nbsp;da,&nbsp;và&nbsp;vỗ&nbsp;nhẹ&nbsp;để&nbsp;sản&nbsp;phẩm&nbsp;thấm&nbsp;vào&nbsp;da.</p>\r\n\r\n<p>Lưu&nbsp;ý&nbsp;khi&nbsp;sử&nbsp;dụng:&nbsp;</p>\r\n\r\n<p>1.&nbsp;Trong&nbsp;quá&nbsp;trình&nbsp;sử&nbsp;dụng&nbsp;nếu&nbsp;thấy&nbsp;da&nbsp;có&nbsp;các&nbsp;biểu&nbsp;hiện&nbsp;khác&nbsp;thường&nbsp;giống&nbsp;như&nbsp;sau&nbsp;thì&nbsp;phải&nbsp;ngưng&nbsp;sử&nbsp;dụng&nbsp;ngay,&nbsp;vì&nbsp;nếu&nbsp;tiếp&nbsp;tục&nbsp;sử&nbsp;dụng&nbsp;thì&nbsp;các&nbsp;triệu&nbsp;chứng&nbsp;đó&nbsp;sẽ&nbsp;càng&nbsp;trở&nbsp;nên&nbsp;nghiêm&nbsp;trọng&nbsp;hơn.&nbsp;Ngưng&nbsp;sử&nbsp;dụng&nbsp;và&nbsp;hỏi&nbsp;ý&nbsp;kiến&nbsp;tư&nbsp;vấn&nbsp;từ&nbsp;chuyên&nbsp;gia&nbsp;da&nbsp;liễu:<br />\r\na)&nbsp;Trường&nbsp;hợp&nbsp;trên&nbsp;da&nbsp;xuất&nbsp;hiện&nbsp;các&nbsp;vết&nbsp;đỏ,&nbsp;da&nbsp;bị&nbsp;sưng&nbsp;tấy,&nbsp;bị&nbsp;ngứa,&nbsp;hay&nbsp;bị&nbsp;kích&nbsp;ứng<br />\r\nb)&nbsp;Trường&nbsp;hợp&nbsp;phần&nbsp;da&nbsp;sử&nbsp;dụng&nbsp;sản&nbsp;phẩm&nbsp;khi&nbsp;tiếp&nbsp;xúc&nbsp;với&nbsp;ánh&nbsp;sáng&nbsp;trực&nbsp;tiếp&nbsp;có&nbsp;các&nbsp;triệu&nbsp;chứng&nbsp;bất&nbsp;thường&nbsp;như&nbsp;trên</p>\r\n\r\n<p>2.&nbsp;Không&nbsp;thoa&nbsp;lên&nbsp;các&nbsp;vùng&nbsp;da&nbsp;bị&nbsp;viêm,&nbsp;bị&nbsp;chàm&nbsp;bội&nbsp;nhiễm&nbsp;hay&nbsp;các&nbsp;vùng&nbsp;da&nbsp;bị&nbsp;thương.<br />\r\n3.&nbsp;Những&nbsp;điều&nbsp;cần&nbsp;chú&nbsp;ý&nbsp;khi&nbsp;sử&nbsp;dụng&nbsp;và&nbsp;bảo&nbsp;quản<br />\r\na)&nbsp;Đậy&nbsp;nắp&nbsp;lại&nbsp;sau&nbsp;khi&nbsp;sử&nbsp;dụng.<br />\r\nb)&nbsp;Bảo&nbsp;quản&nbsp;để&nbsp;nơi&nbsp;xa&nbsp;tầm&nbsp;tay&nbsp;trẻ&nbsp;nhỏ&nbsp;và&nbsp;trẻ&nbsp;em.<br />\r\nc)&nbsp;Không&nbsp;đặt&nbsp;ở&nbsp;những&nbsp;nơi&nbsp;có&nbsp;ánh&nbsp;sáng&nbsp;trực&nbsp;tiếp&nbsp;chiếu&nbsp;vào,&nbsp;hay&nbsp;những&nbsp;nơi&nbsp;có&nbsp;nhiệt&nbsp;độ&nbsp;quá&nbsp;cao&nbsp;hoặc&nbsp;quá&nbsp;thấp.</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180427'),
(220, 'vn', 'N;', '', '', NULL, 'LANEIGE WATER BANK MOISTURE CREAM', '', '<p>Cung&nbsp;cấp&nbsp;nước&nbsp;và&nbsp;độ&nbsp;ẩm&nbsp;cho&nbsp;da&nbsp;trong&nbsp;mọi&nbsp;khoảnh&nbsp;khắc</p>\r\n\r\n<p>-&nbsp;Kem&nbsp;dưỡng&nbsp;dịu&nbsp;nhẹ,&nbsp;giữ&nbsp;cho&nbsp;da&nbsp;ẩm&nbsp;mượt&nbsp;lên&nbsp;tới&nbsp;24&nbsp;giờ<br />\r\n-&nbsp;Giàu&nbsp;khoáng&nbsp;chất&nbsp;giúp&nbsp;giảm&nbsp;các&nbsp;đốm&nbsp;nâu&nbsp;sạm&nbsp;trên&nbsp;da<br />\r\n-&nbsp;Tăng&nbsp;cường&nbsp;khả&nbsp;năng&nbsp;tái&nbsp;tạo&nbsp;độ&nbsp;ẩm&nbsp;tự&nbsp;nhiên&nbsp;của&nbsp;da</p>\r\n\r\n<p>•&nbsp;Kem&nbsp;dưỡng&nbsp;ẩm&nbsp;dịu&nbsp;nhẹ&nbsp;chứa&nbsp;hợp&nbsp;chất&nbsp;squalane&nbsp;thực&nbsp;vật&nbsp;được&nbsp;chiết&nbsp;xuất&nbsp;từ&nbsp;cây&nbsp;ô-liu,&nbsp;giữ&nbsp;cho&nbsp;da&nbsp;ẩm&nbsp;mượt&nbsp;lên&nbsp;tới&nbsp;24&nbsp;giờ.&nbsp;<br />\r\n•&nbsp;Kem&nbsp;dưỡng&nbsp;ẩm&nbsp;giúp&nbsp;kích&nbsp;thích&nbsp;các&nbsp;thành&nbsp;phần&nbsp;dưỡng&nbsp;ẩm&nbsp;sâu&nbsp;trong&nbsp;da&nbsp;và&nbsp;tăng&nbsp;cường&nbsp;sự&nbsp;sản&nbsp;xuất&nbsp;ẩm&nbsp;đồng&nbsp;thời&nbsp;củng&nbsp;cố&nbsp;khả&nbsp;năng&nbsp;dưỡng&nbsp;ẩm&nbsp;tự&nbsp; nhiên&nbsp;của&nbsp;làn&nbsp;da.<br />\r\n•&nbsp;Chiết&nbsp;xuất&nbsp;Salicornia&nbsp;Herbacea&nbsp;(tinh&nbsp;chất&nbsp;chiết&nbsp;xuất&nbsp;từ&nbsp;rong&nbsp;biển)&nbsp;giàu&nbsp;khoáng&nbsp;chất&nbsp;giúp&nbsp;làm&nbsp;giảm&nbsp;các&nbsp;triệu&nbsp;trứng&nbsp;mẫn&nbsp;đỏ&nbsp;trên&nbsp;da&nbsp;vào&nbsp;mùa&nbsp;đông.</p>\r\n\r\n<p>•&nbsp;Kem&nbsp;dưỡng&nbsp;ẩm&nbsp;dịu&nbsp;nhẹ&nbsp;phù&nbsp;hợp&nbsp;sử&nbsp;dụng&nbsp;với&nbsp;làn&nbsp;da&nbsp;nhạy&nbsp;cảm.</p>\r\n\r\n<p>Công&nbsp;thức&nbsp;dưỡng&nbsp;ẩm&nbsp;của&nbsp;water&nbsp;bank&nbsp;Moisture&nbsp;cream</p>\r\n\r\n<p>Nước&nbsp;Khoáng&nbsp;Hydro&nbsp;Ion<br />\r\nNước&nbsp;iôn&nbsp;hóa&nbsp;được&nbsp;hình&nbsp;thành&nbsp;từ&nbsp;sáu&nbsp;loại&nbsp;khoáng&nbsp;chất&nbsp;có&nbsp;tác&nbsp;dụng&nbsp;giúp&nbsp;kiểm&nbsp;soát&nbsp;độ&nbsp;ẩm&nbsp;trong&nbsp;da,&nbsp;giúp&nbsp;các&nbsp;hạt&nbsp;ẩm&nbsp;thấm&nbsp;sâu&nbsp;hơn&nbsp;vào&nbsp;trong&nbsp;da.<br />\r\nChiết&nbsp;xuất&nbsp;hạt&nbsp;Diêm&nbsp;mạch<br />\r\nHạt&nbsp;diêm&nbsp;mạch&nbsp;được&nbsp;biết&nbsp;đến&nbsp;với&nbsp;công&nbsp;dụng&nbsp;bảo&nbsp;vệ&nbsp;da&nbsp;trước&nbsp;những&nbsp;tổn&nbsp;hại&nbsp;và&nbsp;dưỡng&nbsp;ẩm&nbsp;cho&nbsp;da.<br />\r\nDầu&nbsp;ô-liu&nbsp;tự&nbsp;nhiên<br />\r\nDầu&nbsp;thực&nbsp;vật&nbsp;thẩm&nbsp;thấu&nbsp;nhanh,&nbsp;không&nbsp;những&nbsp;dưỡng&nbsp;ẩm&nbsp;mà&nbsp;còn&nbsp;cho&nbsp;da&nbsp;vẻ&nbsp;mềm&nbsp;mượt&nbsp;mà&nbsp;ai&nbsp;cũng&nbsp;ao&nbsp;ước.<br />\r\nChiết&nbsp;xuất&nbsp;ionantha&nbsp;từ&nbsp;cây&nbsp;Tillandsia<br />\r\nChiết&nbsp;xuất&nbsp;ionantha&nbsp;từ&nbsp;cây&nbsp;Tillandsia&nbsp;rất&nbsp;giàu&nbsp;betaine&nbsp;có&nbsp;tác&nbsp;dụng&nbsp;giữ&nbsp;cho&nbsp;da&nbsp;ẩm&nbsp;mượt.<br />\r\n<br />\r\nWater,&nbsp;Glycerin,&nbsp;Butylene&nbsp;Glycol,&nbsp;Glycereth-26,&nbsp;Cyclopentasiloxane,&nbsp;Hydrogenated&nbsp;Poly(C6-14&nbsp;Olefin),&nbsp;Dimethicone,&nbsp;Limnanthes&nbsp;Alba&nbsp;(Meadowfoam)&nbsp;Seed&nbsp;Oil,&nbsp;Tribehenin,&nbsp;Cyclohexasiloxane,&nbsp;Chenopodium&nbsp;Quinoa&nbsp;Seed&nbsp;Extract,&nbsp;Magnesium&nbsp;Sulfate,&nbsp;Zinc&nbsp;Sulfate,&nbsp;Manganese&nbsp;Sulfate,&nbsp;Calcium&nbsp;Chloride,&nbsp;Ascorbyl&nbsp;Glucoside,&nbsp;Salix&nbsp;Alba&nbsp;(Willow)&nbsp;Bark&nbsp;Extract,&nbsp;Tillandsia&nbsp;Usneoides&nbsp;Extract,&nbsp; Ceratonia&nbsp;Siliqua&nbsp;(Carob)&nbsp;Fruit&nbsp;Extract,&nbsp;Dimethiconol,&nbsp;Betaine,&nbsp;Ammonium&nbsp;Acryloyldimethyltaurate/VP&nbsp;Copolymer,&nbsp;Ethylhexylglycerin,&nbsp;Isopropyl&nbsp;Palmitate,&nbsp;Carrageenan,&nbsp;Phenyl&nbsp;Trimethicone,&nbsp;Propylene&nbsp;Glycol,&nbsp;PCA&nbsp;Dimethicone,&nbsp;Hydrogenated&nbsp;Lecithin,&nbsp;Hydroxyethyl&nbsp;Acrylate/Sodium&nbsp;Acryloyldimethyl&nbsp; Taurate&nbsp;Copolymer,&nbsp;Disodium&nbsp;EDTA,&nbsp;Phenoxyethanol,&nbsp;Fragrance</p>\r\n\r\n<p>Cách&nbsp;sử&nbsp;dụng:</p>\r\n\r\n<p>Lấy&nbsp;1&nbsp;lượng&nbsp;sản&nbsp;phẩm&nbsp;vừa&nbsp;đủ&nbsp;thoa&nbsp;đều&nbsp;lên&nbsp;da,&nbsp;và&nbsp;vỗ&nbsp;nhẹ&nbsp;để&nbsp;sản&nbsp;phẩm&nbsp;thấm&nbsp;vào&nbsp;da.</p>\r\n\r\n<p>Lưu&nbsp;ý&nbsp;khi&nbsp;sử&nbsp;dụng:</p>\r\n\r\n<p>1.&nbsp;Trong&nbsp;quá&nbsp;trình&nbsp;sử&nbsp;dụng&nbsp;nếu&nbsp;thấy&nbsp;da&nbsp;có&nbsp;các&nbsp;biểu&nbsp;hiện&nbsp;khác&nbsp;thường&nbsp;giống&nbsp;như&nbsp;sau&nbsp;thì&nbsp;phải&nbsp;ngưng&nbsp;sử&nbsp;dụng&nbsp;ngay,&nbsp;vì&nbsp;nếu&nbsp;tiếp&nbsp;tục&nbsp;sử&nbsp;dụng&nbsp;thì&nbsp;các&nbsp; triệu&nbsp;chứng&nbsp;đó&nbsp;sẽ&nbsp;càng&nbsp;trở&nbsp;nên&nbsp;nghiêm&nbsp;trọng&nbsp;hơn.&nbsp;Nên&nbsp;ngưng&nbsp;sử&nbsp;dụng&nbsp;và&nbsp;hỏi&nbsp;ý&nbsp;kiến&nbsp;tư&nbsp;vấn&nbsp;từ&nbsp;chuyên&nbsp;gia&nbsp;da&nbsp;liễu:<br />\r\na)&nbsp;Trường&nbsp;hợp&nbsp;trên&nbsp;da&nbsp;xuất&nbsp;hiện&nbsp;các&nbsp;vết&nbsp;đỏ,&nbsp;da&nbsp;bị&nbsp;sưng&nbsp;tấy,&nbsp;bị&nbsp;ngứa,&nbsp;hay&nbsp;bị&nbsp;kích&nbsp;ứng.<br />\r\nb)&nbsp;Trường&nbsp;hợp&nbsp;phần&nbsp;da&nbsp;sử&nbsp;dụng&nbsp;sản&nbsp;phẩm&nbsp;khi&nbsp;tiếp&nbsp;xúc&nbsp;với&nbsp;ánh&nbsp;sáng&nbsp;trực&nbsp;tiếp&nbsp;có&nbsp;các&nbsp;triệu&nbsp;chứng&nbsp;bất&nbsp;thường&nbsp;như&nbsp;trên.<br />\r\n<br />\r\n2.&nbsp;Không&nbsp;thoa&nbsp;lên&nbsp;các&nbsp;vùng&nbsp;da&nbsp;bị&nbsp;viêm,&nbsp;bị&nbsp;chàm&nbsp;bội&nbsp;nhiễm&nbsp;hay&nbsp;các&nbsp;vùng&nbsp;da&nbsp;bị&nbsp;thương.<br />\r\n<br />\r\n3.&nbsp;Những&nbsp;điều&nbsp;cần&nbsp;chú&nbsp;ý&nbsp;khi&nbsp;sử&nbsp;dụng&nbsp;và&nbsp;bảo&nbsp;quản.<br />\r\na)&nbsp;Đậy&nbsp;nắp&nbsp;lại&nbsp;sau&nbsp;khi&nbsp;sử&nbsp;dụng.<br />\r\nb)&nbsp;Bảo&nbsp;quản&nbsp;để&nbsp;nơi&nbsp;xa&nbsp;tầm&nbsp;tay&nbsp;trẻ&nbsp;nhỏ&nbsp;và&nbsp;trẻ&nbsp;em.<br />\r\nc)&nbsp;Không&nbsp;đặt&nbsp;ở&nbsp;những&nbsp;nơi&nbsp;có&nbsp;ánh&nbsp;sáng&nbsp;trực&nbsp;tiếp&nbsp;chiếu&nbsp;vào,&nbsp;hay&nbsp;những&nbsp;nơi&nbsp;có&nbsp;nhiệt&nbsp;độ&nbsp;quá&nbsp;cao&nbsp;hoặc&nbsp;quá&nbsp;thấp.</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180428'),
(221, 'vn', 'N;', '', '', NULL, '24K GOLD NINE PREMIUM AMPOULE 99.9% PURE GOLD', '', '<p>Vàng&nbsp;nguyên&nbsp;chất&nbsp;hay&nbsp;vàng&nbsp;24k&nbsp;không&nbsp;còn&nbsp;xa&nbsp;lạ&nbsp;gì&nbsp;với&nbsp;công&nbsp;dụng&nbsp;làm&nbsp;đẹp&nbsp;tại&nbsp;các&nbsp;spa,&nbsp;các&nbsp;trung&nbsp;tâm&nbsp;chăm&nbsp;sóc&nbsp;sắc&nbsp;đẹp&nbsp;với&nbsp;giá&nbsp;cả&nbsp;đắt&nbsp;đỏ&nbsp;&nbsp;bởi&nbsp;việc&nbsp; sử&nbsp;dụng&nbsp;phần&nbsp;lớn&nbsp;chiết&nbsp;xuất&nbsp;từ&nbsp;vàng&nbsp;bởi&nbsp;nguyên&nbsp;liệu&nbsp;quý&nbsp;hiếm&nbsp;này&nbsp;sẽ&nbsp;mang&nbsp;lại&nbsp;sự&nbsp;tái&nbsp;sinh&nbsp;tức&nbsp;thì&nbsp;để&nbsp;có&nbsp;được&nbsp;một&nbsp;làn&nbsp;da&nbsp;đẹp&nbsp;vạn&nbsp;người&nbsp;mê.</p>\r\n\r\n<p>Chính&nbsp;vì&nbsp;vậy,&nbsp;xứ&nbsp;sở&nbsp;Hàn&nbsp;quốc&nbsp;đã&nbsp;cho&nbsp;ra&nbsp;đời&nbsp;loại&nbsp;tinh&nbsp;chất&nbsp;vàng&nbsp;“chuẩn&nbsp;đến&nbsp;từng&nbsp;giọt”&nbsp;để&nbsp;làm&nbsp;hài&nbsp;lòng&nbsp;các&nbsp;tín&nbsp;đồ&nbsp;làm&nbsp;đẹp&nbsp;tại&nbsp;nhà&nbsp;với&nbsp;giá&nbsp;cả&nbsp;phải&nbsp;chăng&nbsp;mà&nbsp;hiệu&nbsp;quả&nbsp;không&nbsp;ngờ&nbsp;tới.</p>\r\n\r\n<h2>CÔNG&nbsp;DỤNG:</h2>\r\n\r\n<ol>\r\n	<li>Làm&nbsp;trắng&nbsp;da,&nbsp;săn&nbsp;mịn&nbsp;da</li>\r\n	<li>&nbsp;Da&nbsp;được&nbsp;tái&nbsp;sinh&nbsp;lại&nbsp;thuở&nbsp;ban&nbsp;đầu,&nbsp;phục&nbsp;hồi&nbsp;tái&nbsp;tạo&nbsp;da&nbsp;từ&nbsp;sâu&nbsp;bên&nbsp;trong</li>\r\n	<li>Cấp&nbsp;nước,&nbsp;cân&nbsp;bằng&nbsp;độ&nbsp;ẩm&nbsp;cho&nbsp;da&nbsp;giúp&nbsp;da&nbsp;luôn&nbsp;căng&nbsp;bóng,&nbsp;rạng&nbsp;ngời</li>\r\n	<li>&nbsp;Giúp&nbsp;da&nbsp;chống&nbsp;lão&nbsp;hoá,&nbsp;trẻ&nbsp;hoá&nbsp;da,&nbsp;xoá&nbsp;mờ&nbsp;nếp&nbsp;nhăn</li>\r\n	<li>Hiệu&nbsp;quả&nbsp;được&nbsp;kiểm&nbsp;nghiệm&nbsp;chỉ&nbsp;trong&nbsp;1-2&nbsp;tuần&nbsp;sử&nbsp;dụng,&nbsp;làn&nbsp;da&nbsp;sáng&nbsp;mịn&nbsp;rõ&nbsp;rệt,&nbsp;các&nbsp;vết&nbsp;lão&nbsp;hóa.&nbsp;nhăn&nbsp;được&nbsp;cải&nbsp;thiện,&nbsp;trẻ&nbsp;hoá.</li>\r\n	<li>Điểm&nbsp;đặc&nbsp;biệt&nbsp;là&nbsp;chai&nbsp;serum&nbsp;chứa&nbsp;hàm&nbsp;lượng&nbsp;vàng&nbsp;nguyên&nbsp;chất&nbsp;cực&nbsp;cao&nbsp;đột&nbsp;phá&nbsp;vượt&nbsp;trội&nbsp;cùng&nbsp;tinh&nbsp;chất&nbsp;vàng&nbsp;24k&nbsp;tới&nbsp;99,9%&nbsp;kết&nbsp;hợp&nbsp;với&nbsp;collagen,&nbsp;peptide&nbsp;và&nbsp;chất&nbsp;Betalugan,&nbsp;mức&nbsp;độ&nbsp;phục&nbsp;hồi&nbsp;ngay&nbsp;cả&nbsp;làn&nbsp;da&nbsp;nhạy&nbsp;cảm&nbsp;và&nbsp;thảm&nbsp;hại&nbsp;nhất,&nbsp;da&nbsp;thuộc&nbsp;dạng&nbsp;“khó&nbsp;chiều”&nbsp;dễ&nbsp;bị&nbsp;dị&nbsp;ứng&nbsp;khi&nbsp;xài&nbsp;mỹ&nbsp;phẩm&nbsp;thì&nbsp;dùng&nbsp;em&nbsp;serum&nbsp;này&nbsp;thật&nbsp;sự&nbsp;là&nbsp;cứu&nbsp;tinh&nbsp;cho&nbsp;bạn&nbsp;khi&nbsp;băn&nbsp;khoăn&nbsp;sử&nbsp;dụng&nbsp;và&nbsp;đầu&nbsp;tư&nbsp;thế&nbsp;nào&nbsp;với&nbsp;làn&nbsp;da&nbsp;đỏng&nbsp;đảnh&nbsp;của&nbsp;mình.</li>\r\n	<li>Tinh&nbsp;chất&nbsp;24K&nbsp;Gold&nbsp;Nine&nbsp;giúp&nbsp;da&nbsp;mềm&nbsp;mịn&nbsp;căng&nbsp;bóng&nbsp;rõ&nbsp;rệt&nbsp;sau&nbsp;mỗi&nbsp;lần&nbsp;sử&nbsp;dụng,&nbsp;giúp&nbsp;da&nbsp;trở&nbsp;lên&nbsp;sáng&nbsp;đều&nbsp;màu&nbsp;hơn.&nbsp;So&nbsp;với&nbsp;liệu&nbsp;pháp&nbsp; tốn&nbsp;kém&nbsp;ở&nbsp;spa&nbsp;thì&nbsp;chai&nbsp;serum&nbsp;hàm&nbsp;lượng&nbsp;vàng&nbsp;24k&nbsp;này&nbsp;quá&nbsp;tiết&nbsp;kiệm&nbsp;và&nbsp;cho&nbsp;bạn&nbsp;hiệu&nbsp;quả&nbsp;tương&nbsp;đương.&nbsp;Chất&nbsp;serum&nbsp;sệt&nbsp;nhẹ&nbsp;nên&nbsp;mỗi&nbsp; lần&nbsp;chỉ&nbsp;cần&nbsp;một&nbsp;hàm&nbsp;lượng&nbsp;nhỏ&nbsp;vài&nbsp;giọt&nbsp;serum&nbsp;tinh&nbsp;chất&nbsp;vàng&nbsp;mỗi&nbsp;ngày&nbsp;sẽ&nbsp;giúp&nbsp;làn&nbsp;da&nbsp;trẻ&nbsp;hoá,&nbsp;căng&nbsp;bóng,&nbsp;trắng&nbsp;mịn&nbsp;rạng&nbsp;ngời.</li>\r\n	<li>\r\n	<h2>HƯỚNG&nbsp;DẪN&nbsp;SỬ&nbsp;DỤNG:</h2>\r\n	</li>\r\n	<li>Làm&nbsp;sạch&nbsp;da&nbsp;bằng&nbsp;sửa&nbsp;rửa&nbsp;mặt&nbsp;và&nbsp;cân&nbsp;bằng&nbsp;lại&nbsp;da&nbsp;bằng&nbsp;toner&nbsp;(nước&nbsp;hoa&nbsp;hồng)</li>\r\n	<li>Nhỏ&nbsp;vài&nbsp;giọt&nbsp;serum&nbsp;24K&nbsp;Gold&nbsp;Nine&nbsp;ra&nbsp;tay,&nbsp;xoa&nbsp;đều&nbsp;và&nbsp;apply&nbsp;vỗ&nbsp;nhẹ,&nbsp;thoa&nbsp;đều&nbsp;khắp&nbsp;mặt</li>\r\n	<li>Sử&nbsp;dụng&nbsp;kem&nbsp;dưỡng&nbsp;(nếu&nbsp;có)&nbsp;để&nbsp;khóa&nbsp;ẩm.</li>\r\n	<li>Có&nbsp;thể&nbsp;sử&nbsp;dụng&nbsp;serum&nbsp;để&nbsp;dưỡng&nbsp;trước&nbsp;khi&nbsp;trang&nbsp;điểm&nbsp;giúp&nbsp;da&nbsp;ẩm&nbsp;mịn,&nbsp;tạo&nbsp;hiệu&nbsp;ứng&nbsp;căng&nbsp;mọng&nbsp;và&nbsp;sáng&nbsp;bừng,&nbsp;nhờ&nbsp;thế&nbsp;lớp&nbsp;nền&nbsp; makeup&nbsp;sẽ&nbsp;đẹp&nbsp;hơn.</li>\r\n	<li>Làm&nbsp;sạch&nbsp;da,&nbsp;nhỏ&nbsp;serum&nbsp;ra&nbsp;tay&nbsp;và&nbsp;vỗ&nbsp;nhẹ&nbsp;cho&nbsp;thấm&nbsp;đều,&nbsp;sau&nbsp;đó&nbsp;bắt&nbsp;đầu&nbsp;dùng&nbsp;kem&nbsp;lót,&nbsp;kem&nbsp;nền&nbsp;trang&nbsp;điểm&nbsp;cho&nbsp;khuôn&nbsp;mặt</li>\r\n</ol>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180429'),
(222, 'vn', 'N;', '', '', NULL, '4.VITAMIN C TREATMENT SERUM', '', '<p>VITAMIN&nbsp;C&nbsp;TREATMENT&nbsp;SERUM-&nbsp;MANG&nbsp;LAI&nbsp;LÀN&nbsp;DA&nbsp;TRẮNG&nbsp;SÁNG&nbsp;CĂNG&nbsp;TRÀN&nbsp;SỨC&nbsp;SỐNG<br />\r\nThành&nbsp;phần:</p>\r\n\r\n<p>Không&nbsp;chất&nbsp;nhuộm&nbsp;màu,&nbsp;KHÔNG&nbsp;hương&nbsp;liệu,&nbsp;Không&nbsp;paraben<br />\r\nTinh&nbsp;chất&nbsp;VITAMIN&nbsp;C&nbsp;20%&nbsp;SERUM&nbsp;nguyên&nbsp;chất&nbsp;chiếm&nbsp;đến&nbsp;20%&nbsp;tỉ&nbsp;lệ&nbsp;trong&nbsp;thành&nbsp;phần&nbsp;từ&nbsp;cam,&nbsp;quýt,&nbsp;dâu…giúp&nbsp;da&nbsp;dễ&nbsp;dàng&nbsp;hấp&nbsp;thụ&nbsp;Vitamin&nbsp;C&nbsp;nhờ&nbsp;vào&nbsp;chức&nbsp;năng&nbsp;tẩy&nbsp;đi&nbsp;các&nbsp;tế&nbsp;bào&nbsp;chết,&nbsp;nhanh&nbsp;chóng&nbsp;lấy&nbsp;đi&nbsp;các&nbsp;vết&nbsp;thâm&nbsp;do&nbsp;mụn&nbsp;để&nbsp;lại,&nbsp;tẩy&nbsp;mụn&nbsp;cám&nbsp;trên&nbsp;da,&nbsp; giúp&nbsp;cho&nbsp;làn&nbsp;da&nbsp;thêm&nbsp;trắng&nbsp;sáng,&nbsp;mịn&nbsp;màng.&nbsp;Giúp&nbsp;da&nbsp;thêm&nbsp;săn&nbsp;chắc&nbsp;và&nbsp;giảm&nbsp;cháy&nbsp;nắng&nbsp;khi&nbsp;tiếp&nbsp;xúc&nbsp;nhiều&nbsp;với&nbsp;ánh&nbsp;nắng&nbsp;nhờ&nbsp;vậy&nbsp;mà&nbsp;ngăn&nbsp;ngừa&nbsp; được&nbsp;ung&nbsp;thư&nbsp;da,&nbsp;Giúp&nbsp;da&nbsp;thêm&nbsp;khoẻ&nbsp;mạnh.&nbsp;Bạn&nbsp;sẽ&nbsp;có&nbsp;một&nbsp;làn&nbsp;da&nbsp;như&nbsp;ý&nbsp;sau&nbsp;2&nbsp;tuần&nbsp;sử&nbsp;dụng&nbsp;trải&nbsp;nghiệm&nbsp;nhé.</p>\r\n\r\n<p>-&nbsp;Da&nbsp;trắng&nbsp;mịn&nbsp;làm&nbsp;mờ&nbsp;những&nbsp;vết&nbsp;thâm&nbsp;nám&nbsp;tiềm&nbsp;ẩn&nbsp;bên&nbsp;trong.<br />\r\n-&nbsp;Trị&nbsp;thâm,&nbsp;làm&nbsp;giảm&nbsp;mụn&nbsp;sưng&nbsp;đỏ<br />\r\n-&nbsp;Se&nbsp;khít&nbsp;lỗ&nbsp;chân&nbsp;lông<br />\r\n-&nbsp;Kích&nbsp;thích&nbsp;tái&nbsp;tạo&nbsp;tế&nbsp;bào&nbsp;da&nbsp;mới.<br />\r\n-&nbsp;Gia&nbsp;tăng&nbsp;tổng&nbsp;hợp&nbsp;Collagen.<br />\r\n-&nbsp;Làm&nbsp;lành&nbsp;vết&nbsp;thương&nbsp;và&nbsp;làm&nbsp;liền&nbsp;sẹo&nbsp;trên&nbsp;da.<br />\r\n-&nbsp;Cung&nbsp;cấp&nbsp;độ&nbsp;ẩm&nbsp;da&nbsp;cho&nbsp;da.<br />\r\n-&nbsp;Kết&nbsp;hợp&nbsp;điện&nbsp;di&nbsp;để&nbsp;tăng&nbsp;cường&nbsp;hiệu&nbsp;quả&nbsp;tối&nbsp;đa&nbsp;</p>\r\n\r\n<p>Cách&nbsp;sử&nbsp;dụng:</p>\r\n\r\n<p>-&nbsp;Sau&nbsp;khi&nbsp;rửa&nbsp;mặt&nbsp;sạch,&nbsp;lúc&nbsp;da&nbsp;còn&nbsp;ẩm&nbsp;nhỏ&nbsp;vào&nbsp;đầu&nbsp;ngón&nbsp;tay&nbsp;giữa&nbsp;và&nbsp;thoa&nbsp;lên&nbsp;vùng&nbsp;chữ&nbsp;T&nbsp;và&nbsp;chữ&nbsp;U&nbsp;(trán&nbsp;cằm&nbsp;phải,&nbsp;trái,mũi&nbsp;cằm)và&nbsp;sau&nbsp;đó&nbsp;massage&nbsp;đều,&nbsp;nhẹ&nbsp;nhàng,&nbsp;mỗi&nbsp;lần&nbsp;sử&nbsp;dụng&nbsp;từ&nbsp;2-3&nbsp;giọt.&nbsp;Có&nbsp;thể&nbsp;làm&nbsp;lớp&nbsp;nền&nbsp;trong&nbsp;bước&nbsp;đầu&nbsp;tiên&nbsp;trang&nbsp;điểm.</p>\r\n\r\n<p>-&nbsp;Để&nbsp;có&nbsp;kết&nbsp;quả&nbsp;tốt&nbsp;nhất,&nbsp;sử&nbsp;dụng&nbsp;vào&nbsp;buổi&nbsp;sáng&nbsp;sớm&nbsp;khi&nbsp;làm&nbsp;sạch&nbsp;da&nbsp;mặt&nbsp;xong&nbsp;và&nbsp;buổi&nbsp;tối&nbsp;trước&nbsp;khi&nbsp;đi&nbsp;ngủ,&nbsp;tránh&nbsp;sử&nbsp;dụng&nbsp;khi&nbsp;đi&nbsp;ra&nbsp;ngoài&nbsp;nắng&nbsp;vì&nbsp;sẽ&nbsp; làm&nbsp;mất&nbsp;tác&nbsp;dụng.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180430'),
(223, 'vn', 'N;', '', '', NULL, '24K GOLD COLLAGEN SERUM', '', '<p>COLLAGEN&nbsp;24k&nbsp;GOLD&nbsp;THIÊN&nbsp;THẦN&nbsp;HỘ&nbsp;MỆNH&nbsp;CHO&nbsp;CHỊ&nbsp;EM&nbsp;PHỤ&nbsp;NỮ&nbsp;<br />\r\nVới&nbsp;tinh&nbsp;chất&nbsp;collagen&nbsp;và&nbsp;vàng&nbsp;24k&nbsp;có&nbsp;2&nbsp;năng&nbsp;chính&nbsp;là&nbsp;cải&nbsp;thiện&nbsp;nếp&nbsp;nhăn&nbsp;và&nbsp;làm&nbsp;trắng&nbsp;da.&nbsp;:&nbsp;<br />\r\n-&nbsp;Bổ&nbsp;sung&nbsp;collagen&nbsp;giúp&nbsp;tái&nbsp;tạo&nbsp;và&nbsp;phục&nbsp;hồi&nbsp;da.<br />\r\n-&nbsp;Xóa&nbsp;bỏ&nbsp;các&nbsp;nếp&nbsp;nhăn,&nbsp;ngăn&nbsp;ngừa&nbsp;chảy&nbsp;xệ.<br />\r\n-&nbsp;Dưỡng&nbsp;ẩm&nbsp;sâu&nbsp;cho&nbsp;da,&nbsp;giúp&nbsp;da&nbsp;tươi&nbsp;trẻ,&nbsp;mịn&nbsp;màng.<br />\r\n-&nbsp;Làm&nbsp;sáng&nbsp;da,&nbsp;phục&nbsp;hồi&nbsp;độ&nbsp;săn&nbsp;chắc.&nbsp;<br />\r\n-&nbsp;Ngăn&nbsp;chặn&nbsp;quá&nbsp;trình&nbsp;lão&nbsp;hóa&nbsp;sớm&nbsp;của&nbsp;làn&nbsp;da&nbsp;và&nbsp;các&nbsp;tác&nbsp;nhân&nbsp;gây&nbsp;sạm&nbsp;nám,&nbsp;tàn&nbsp;nhang&nbsp;và&nbsp;đốm&nbsp;nâu.<br />\r\n-&nbsp;Sản&nbsp;phẩm&nbsp;phù&nbsp;hợp&nbsp;với&nbsp;mọi&nbsp;làn&nbsp;da,&nbsp;tuyệt&nbsp;đối&nbsp;an&nbsp;toàn.</p>\r\n\r\n<p>&nbsp;Cách&nbsp;sử&nbsp;dụng:</p>\r\n\r\n<p>-&nbsp;Sau&nbsp;khi&nbsp;rửa&nbsp;mặt&nbsp;sạch,&nbsp;lúc&nbsp;da&nbsp;còn&nbsp;ẩm&nbsp;nhỏ&nbsp;vào&nbsp;đầu&nbsp;ngón&nbsp;tay&nbsp;giữa&nbsp;và&nbsp;thoa&nbsp;lên&nbsp;vùng&nbsp;chữ&nbsp;T&nbsp;và&nbsp;chữ&nbsp;U&nbsp;(trán&nbsp;cằm&nbsp;phải,&nbsp;trái,mũi&nbsp;cằm)và&nbsp;sau&nbsp;đó&nbsp;massage&nbsp;đều,&nbsp;nhẹ&nbsp;nhàng,&nbsp;mỗi&nbsp;lần&nbsp;sử&nbsp;dụng&nbsp;từ&nbsp;2-3&nbsp;giọt.&nbsp;Có&nbsp;thể&nbsp;làm&nbsp;lớp&nbsp;nền&nbsp;trong&nbsp;bước&nbsp;đầu&nbsp;tiên&nbsp;trang&nbsp;điểm.</p>\r\n\r\n<p>-&nbsp;Để&nbsp;có&nbsp;kết&nbsp;quả&nbsp;tốt&nbsp;nhất,&nbsp;sử&nbsp;dụng&nbsp;vào&nbsp;buổi&nbsp;sáng&nbsp;sớm&nbsp;khi&nbsp;làm&nbsp;sạch&nbsp;da&nbsp;mặt&nbsp;xong&nbsp;và&nbsp;buổi&nbsp;tối&nbsp;trước&nbsp;khi&nbsp;đi&nbsp;ngủ,&nbsp;tránh&nbsp;sử&nbsp;dụng&nbsp;khi&nbsp;đi&nbsp;ra&nbsp;ngoài&nbsp;nắng&nbsp;vì&nbsp;sẽ&nbsp;làm&nbsp;mất&nbsp;tác&nbsp;dụng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>&nbsp;</li>\r\n</ol>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180431'),
(224, 'vn', 'N;', '', '', NULL, '6.ANCE TREATMENT AMPOULE', '', '<p>SERUM&nbsp;TRỊ&nbsp;MỤN&nbsp;&nbsp;ANCE&nbsp;TREATMENT&nbsp;AMPOULE30ML</p>\r\n\r\n<p>Công&nbsp;dụng&nbsp;:</p>\r\n\r\n<p>–&nbsp;Serum&nbsp;trị&nbsp;mụn&nbsp;SERUM&nbsp;TRỊ&nbsp;MỤN&nbsp;&nbsp;ANCE&nbsp;TREATMENT&nbsp;AMPOULE</p>\r\n\r\n<p>Có&nbsp;thể&nbsp;loại&nbsp;bỏ&nbsp;được&nbsp;các&nbsp;loại&nbsp;mụn&nbsp;trứng&nbsp;cá&nbsp;,&nbsp;mụn&nbsp;bọc&nbsp;,&nbsp;mụn&nbsp;đầu&nbsp;đen&nbsp;và&nbsp;các&nbsp;vết&nbsp;thâm&nbsp;,&nbsp;dưỡng&nbsp;trắng&nbsp;và&nbsp;trẻ&nbsp;hóa&nbsp;làn&nbsp;da&nbsp;.<br />\r\n- Dưỡng&nbsp;trắng&nbsp;,&nbsp;ngăn&nbsp;ngừa&nbsp;sự&nbsp;hình&nbsp;thành&nbsp;và&nbsp;phát&nbsp;triển&nbsp;của&nbsp;mụn&nbsp;bọc&nbsp;,&nbsp;mụn&nbsp;đầu&nbsp;đen&nbsp;,&nbsp;mụn&nbsp;trứng&nbsp;cá&nbsp;.&nbsp;Rất&nbsp;tốt&nbsp;và&nbsp;hiệu&nbsp;quả&nbsp;nhất&nbsp;là&nbsp;với&nbsp;những&nbsp;bạn&nbsp;da&nbsp; nhờn&nbsp;,&nbsp;nhiều&nbsp;mụn&nbsp;và&nbsp;những&nbsp;vết&nbsp;thâm&nbsp;lâu&nbsp;ngày&nbsp;.&nbsp;Làm&nbsp;se&nbsp;khít&nbsp;lỗ&nbsp;chân&nbsp;lông&nbsp;,&nbsp;mang&nbsp;lại&nbsp;làn&nbsp;da&nbsp;mịn&nbsp;màng&nbsp;,&nbsp;trắng&nbsp;sáng&nbsp;và&nbsp;săn&nbsp;chắc&nbsp;hơn&nbsp;.<br />\r\n&nbsp;Hạn&nbsp;chế&nbsp;tối&nbsp;da&nbsp;sự&nbsp;hình&nbsp;thành&nbsp;và&nbsp;phát&nbsp;triển&nbsp;của&nbsp;các&nbsp;loại&nbsp;mụn&nbsp;thể&nbsp;nặng&nbsp;như&nbsp;mụn&nbsp;trứng&nbsp;cá,&nbsp;mụn&nbsp;bọc,&nbsp;mụn&nbsp;viêm,&nbsp;mụn&nbsp;đầu&nbsp;trắng,&nbsp;mụn&nbsp;đầu&nbsp;đen,&nbsp;mụn&nbsp;mủ,&nbsp;mụn&nbsp;sưng&nbsp;tấy&nbsp;viêm&nbsp;nhiễm,&nbsp;mụn&nbsp;phát&nbsp;ban&nbsp;dạng&nbsp;trứng&nbsp;cá.<br />\r\n&nbsp;Ngăn&nbsp;mụn&nbsp;quay&nbsp;trở&nbsp;lại&nbsp;nhờ&nbsp;các&nbsp;dưỡng&nbsp;chất&nbsp;tác&nbsp;động&nbsp;trực&nbsp;tiếp&nbsp;vào&nbsp;các&nbsp;nguyên&nbsp;nhân&nbsp;gây&nbsp;ra&nbsp;mụn:&nbsp;loại&nbsp;bỏ&nbsp;chất&nbsp;nhờn,&nbsp;dầu&nbsp;thừa,&nbsp;tăng&nbsp;sức&nbsp;đề&nbsp;kháng&nbsp;và&nbsp;hạn&nbsp;chế&nbsp;sự&nbsp;xâm&nbsp;nhập&nbsp;của&nbsp;vi&nbsp;khuẩn&nbsp;.<br />\r\n–&nbsp;Cải&nbsp;thiện&nbsp;da&nbsp;bị&nbsp;tổn&nbsp;thương&nbsp;do&nbsp;mụn&nbsp;(vết&nbsp;thâm,&nbsp;sạm,&nbsp;sẹo),&nbsp;loại&nbsp;bỏ&nbsp;cồi&nbsp;mụn&nbsp;khỏi&nbsp;bề&nbsp;mặt&nbsp;da,&nbsp;se&nbsp;khít&nbsp;lỗ&nbsp;chân&nbsp;lông,&nbsp;làm&nbsp;dịu&nbsp;kích&nbsp;ứng&nbsp;da<br />\r\n–&nbsp;Cung&nbsp;cấp&nbsp;và&nbsp;duy&nbsp;trì&nbsp;độ&nbsp;ẩm&nbsp;giúp&nbsp;da&nbsp;mềm&nbsp;mại&nbsp;và&nbsp;mịn&nbsp;màng.</p>\r\n\r\n<p>Cách&nbsp;dùng:</p>\r\n\r\n<p>-&nbsp;Lấy&nbsp;một&nbsp;lượng&nbsp;vừa&nbsp;đủ&nbsp;chấm&nbsp;lên&nbsp;các&nbsp;nốt&nbsp;mụn.&nbsp;Dùng&nbsp;ngón&nbsp;tay&nbsp;vỗ&nbsp;nhẹ&nbsp;để&nbsp;dưỡng&nbsp;chất&nbsp;thẩm&nbsp;thấu&nbsp;hoàn&nbsp;toàn&nbsp;.&nbsp;Tránh&nbsp;thoa&nbsp;vào&nbsp;mắt&nbsp;,&nbsp;sử&nbsp;dụng&nbsp;vào&nbsp;buổi&nbsp; sáng&nbsp;và&nbsp;tối&nbsp;,&nbsp;sau&nbsp;bước&nbsp;làm&nbsp;sạch&nbsp;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180433'),
(225, 'vn', 'N;', '', '', NULL, 'UV SUN BLOCK SPF 50/PA+++', '', '<p>Kem chống nắng UV Sun Block, Hàng nhập khẩu xuất xứ Hàn Quốc ,</p>\r\n\r\n<p>Sản phẩm chống nắng đa chức năng, vừa có khả năng bảo vệ da khỏi tác hại của ánh nắng mặt trời,vừa giúp ngăn ngừa tình trạng sạm đen và lão hóa sớm cho da của bạn, cun,g cấp đủ độ ẩm cho da . Kết cấu nhẹ nhàng, tự nhiên và khi thoa lên da bạn sẽ hoàn toàn không gây cảm giác dính rít.<br />\r\n<strong>Thành phần</strong>: vitamin C,hidrocollagen tinh chất nha đam, tinh chất hồng sâm, tinh dầu bơ, tinh dầu bí ngô và mmoojt số thành phần thảo mộc<br />\r\n<strong>Hướng dẫn sử dụng:&nbsp;</strong>&nbsp;Sử dụng sau các bước dưỡng da và trước khi trang điểm. Lấy một lượng sản phẩm vừa đủ và dàn trải khắp vùng da mặt và vùng da cổ.</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180434'),
(226, 'vn', 'N;', '', '', NULL, '1.	 Ohui Advanced Powder Foundation 10gr -  Phấn Nền Che Khuyết Điểm', '', '<ol>\r\n	<li>Sử dụng phấn nền là một bước trang điểm quan trọng. Công thức cho gương mặt bừng sáng. Bảo vệ làn da trước những tác động của thời tiết.Trên thị trường có rất nhiều loại phấn nền khác nhau chính vì vậy:</li>\r\n	<li>Lựa chọn phấn nền vì thế cũng rất quan trọng. Luôn phải cân nhắc trước những loại phấn nền. Sao cho vừa có khả năng che phủ tốt, lại không gây bí bách da.</li>\r\n	<li>Với Advanced Powder Foundation Phấn nền cao cấp của Ohui. Với độ che phủ và bám dính mạnh mẽ. Che phủ hoàn hảo những khiếm khuyết và hạn chế gây khô da. Hiệu chỉnh lỗ chân lông, tạo độ láng mịn. Sản phẩm che khuyết điểm dạng phấn bột. Hạn chế được sự vón cục và không đều phấn. Che mờ lỗ chân lông to, vết thâm, vết nám nhờ đó giúp làn da sáng mịn, bóng mượt.</li>\r\n	<li><strong>Mô tả sản phẩm </strong></li>\r\n	<li>– Thiết kế dạng hộp vuông trang điểm. Nhỏ gọn và hiện đại. Mặt kính bên trong sáng và to. Mang lại cảm giác thuận tiện sử dụng mọi lúc mọi nơi.</li>\r\n	<li>– Dạng phấn bột không có chứa chất độc hại cho da.</li>\r\n	<li><strong>Công dụng của Phấn nền che khuyết điểm Ohui Advanced Powder Foundation</strong></li>\r\n	<li>– Có độ che phủ và bám dính mạnh mẽ. Che phủ hoàn hảo những khiếm khuyết và hạn chế gây khô da. Hiệu chỉnh lỗ chân lông, tạo độ láng mịn.</li>\r\n	<li>– Sản phẩm che khuyết điểm dạng phấn bột. Hạn chế được sự vón cục và không đều phấn. Làm mờ lỗ chân lông nhờ đó giúp làn da mịn màng, bóng mượt như nhung lụa.</li>\r\n	<li>– Tính năng chống nắng (SPF35 , PA++). Đồng thời chống tia UVB chống tia UVA.</li>\r\n	<li>– Cho da láng mượt như nhung. Hạn chế tối đa sự khô da, che phủ khuyết điểm cho làn da sáng rạng rỡ.</li>\r\n	<li>– Thích hợp mọi loại da</li>\r\n	<li><strong>Hướng dẫn sử dụng</strong></li>\r\n	<li>Dùng cọ hoặc bông phấn chấm một ít phấn tán đều lên khuôn mặt cho đến khi vừa đủ. Bạn sẽ có ngay lớp nền tự nhiên, bóng khỏe.</li>\r\n</ol>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180440');
INSERT INTO `bakcodt_content_ln` (`id`, `ln`, `ln_fields_extra`, `ln_icon`, `ln_image`, `sef_url`, `name`, `intro`, `content`, `title`, `desc`, `keyword`, `priceSale`, `priceBuy`, `status`, `mobilePhone`, `link`, `codePro`) VALUES
(227, 'vn', 'N;', '', '', NULL, 'Phấn Phủ Ohui Varnishing Pact SPF30/PA+', '', '<p>Phấn phủ là yếu tố rất quan trọng giúp vẻ đẹp hoàn thiện sau khi trang điểm. Đây là bước cuối cùng của trang điểm. Tạo nên lớp bảo vệ ngăn chặn tia tử hoại có hại cho da. Đồng thời cũng giúp cho làn da chống lại ánh nắng mặt trời. Ngoài ra, sử dụng phấn phủ là cách che phủ khuyết điểm. Hút dầu hiệu quả, làm gương mặt rạng rỡ tự nhiên.</p>\r\n\r\n<h2>Đặc điểm&nbsp;Phấn Phủ Ohui Varnishing Pact</h2>\r\n\r\n<p>Được thiết kế với hộp tròn đen bóng rất cao cấp. &nbsp;OHUI rất chăm chút cho các sản phẩm trang điểm của mình. Không những phải dễ dàng sử dụng. Mà còn phải đẳng cấp, sang trọng. Bên trong là lõi phấn mịn màn và mặt kính sắc nét. Rất thuận lợi cho việc trang điểm.</p>\r\n\r\n<p>Với thành phần chính chiết xuất từ thiên nhiên chứa các dưỡng chất dịu nhẹ không gây kích ứng. Dùng cho tất cả loại da, hình thành lớp bảo vệ da khỏi các tác nhân gây hại. Sản phẩm có độ bám dính cao giúp bạn luôn tự tin khi hoạt động cả ngày dài</p>\r\n\r\n<h2>Công dụng&nbsp;Phấn Phủ Ohui Varnishing Pact SPF30/PA+</h2>\r\n\r\n<p>– Phấn phủ giúp nâng cao độ bền màu của lớp trang điểm. Hoàn chỉnh nếp da láng mượt, không bị khô.</p>\r\n\r\n<p>– Tính năng chống nắng. Với chỉ số chống nắng lên tới SPF30/PA++.</p>\r\n\r\n<p>– Phấn phủ phù hợp với mọi loại da</p>\r\n\r\n<h2>Hướng dẫn sử dụng Phấn Phủ Ohui Varnishing Pact</h2>\r\n\r\n<p>Sau khi đánh lớp kem lót trang điểm và kem nền. Dùng chổi hoặc bông phấn chấm phấn vừa đủ sau đó đánh đều lên các vùng da.</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180441'),
(228, 'vn', 'N;', '', '', NULL, ' Ohui Miracle moisture - Sữa rửa mặt', '', '<ol>\r\n	<li>&nbsp;<strong>Công dụng</strong>:</li>\r\n	<li>Sữa rửa mặt dưỡng ẩm cleansing foam OHUI với công thức dưỡng ẩm hiệu quả&nbsp;giúp bạn làm sạch da mặt, loại bỏ các tác nhân bên ngoài như thời tiết, khói bụi, thoái quen sinh hoạt…., để da bạn luôn sạch và ẩm mịn. Sữa rửa mặt giúp cung cấp chất ẩm, giữ da săn chắc và giúp da có độ đàn hồi cao, đồng thời phục hồi những vùng da bị hư hỏng, chống mất nước làm khô da, ngăn ngừa sự lão hóa cho làn da của bạn luôn sạch mịn và thông thoáng.</li>\r\n	<li><strong>Cách dùng:</strong></li>\r\n	<li>- Sữa rửa mặt: lấy một lượng vừa đủ vào lòng bàn tay, tạo bọt, xoa đều lên mặt và cổ sau đó massage trong khoảng 1 phút. Rửa sạch lại bằng nước ấm</li>\r\n	<li>.- Giấy tẩy trang: Lớp trang điểm dễ dàng được làm sạch khi bạn lau trên da. Sử dụng sau khi trang điểm</li>\r\n</ol>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180442'),
(229, 'vn', 'N;', '', '', NULL, 'SU:M BRIGHT AWARD SPECIAL SET - MẶT NẠ TẠO BỌT', '', '<p>&nbsp;Set bao gồm:<br />\r\n- 01 hũ mặt nạ tạo bọt và thải độc da&nbsp;100ml</p>\r\n\r\n<p>Có tặng kèm theo:<br />\r\n- 01 tuýp srm sum37 skin save essencetial cleansing foam 40ml<br />\r\n- 01 lọ sum37 bright &nbsp;award micro whipping deep cleansing foam</p>\r\n\r\n<p>Sum:37 Bright award là dòng sản phẩm chuyên biệt dưỡng trắng cao cấp, hiệu quả, an toàn và được ưa chuộng hàng đầu, sản phẩm cũng là dòng dưỡng da yêu thích của rất nhiều các ngôi sao Han Quốc.</p>\r\n\r\n<p>- Mặt nạ tạo bọt của su:m37 với 3 chức năng chính: trắng sáng, sạch sâu lỗ chân lông, mềm da.<br />\r\nloại mặt nạ làm sạch tạo bong bóng oxy thấm sâu vào da để lấy ra các chất thải, bã nhờn, độc tố nằm sâu bên trong các lỗ chân lông giúp giải độc và làm sáng da.<br />\r\nsản phẩm có chứa thành phần NAPS (N-Acetyl phytosphingosine) lên men và chất chống oxi hóa mạnh có trong acai berry giúp tạo làn da tươi sáng. chiết xuất Portulaca giúp da thư giãn nhẹ nhàng và mềm mại.</p>\r\n\r\n<p>CÁCH SỬ DỤNG</p>\r\n\r\n<p>sau khi rửa sạch mặt và để da mặt khô ráo, bơm 1 lượng và dàn đồng đều lên da mặt trừ vùng da quanh mắt. để trong tầm 10-15p rồi rửa sạch lại bằng nước ấm. tuần sd 1-2 lần</p>\r\n\r\n<p>Cách bảo quản: sau mỗi lần sử dụng, lau sạch đầu bơm của hũ, đậy kín để giảm thiểu các bong bóng tạo thành do các vi khuẩn trên tay gây ra. để sản phẩm ở chỗ thoáng mát.</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180443'),
(230, 'vn', 'N;', '', '', NULL, 'GONGJINHYANG:SEOL BRIGHTENING FOAM CLEANSER SPECIAL SET ', '', '<p><strong>S</strong><strong>ữa Rửa Mặt Làm Sáng Da Gongjinhyang Seol Brightening Cleansing Foam&nbsp;</strong>là một trong những dòng sản phẩm&nbsp;<strong>Gongjinhyang Seol&nbsp;</strong>của&nbsp;<strong>Whoo</strong><strong> một thương hiệu mỹ phẩm nổi tiếng của Hàn Quốc được nhiều ngôi sao của Hàn Quốc tin dung </strong><strong>Gongjinhyang Seol Brightening Cleansing Foam&nbsp;</strong> &nbsp;với các hạt bọt mịn giúp loại bỏ bụi bẩn, bã nhờn sâu trong lỗ chân lông của da, đồng thời hỗ trợ làm trắng da , tăng cường khả năng bảo vệ da và duy trì độ ẩm mịn cho da.</p>\r\n\r\n<p><strong>T</strong><strong>hành phần:</strong></p>\r\n\r\n<p>- Thất hương bát bạch tán – thành phần chăm sóc vết nám ẩn dấu bên trong: Đơn thuốc Đông y hoàng cung làm trắng không chỉ mang lại độ sáng cho da, giúp điều hoà ngũ tạng lão hoá mà còn chỉnh đốn cả tinh thần mệt mỏi.</p>\r\n\r\n<p>- Thất hương gồm: Mộc hương, Đinh hương, Bạch đàn hương, Cam tùng hương, Đinh hương bì, Trầm hương, Quất hồng.</p>\r\n\r\n<p>- Bát bạch tán gồm: Bạch truật, Bạch cập, Bạch thược dược, Bạch sâm, Bạch tật lệ, Bạch phục linh, Bạch quả, Bạch liêm.</p>\r\n\r\n<p>- Chiết xuất cam cúc - thành phần chăm sóc các vết nám nhìn thấy: Thành phần làm trắng mới, độc quyền của LG giúp loại bỏ tận gốc các độc tố melanin có thể nhìn thấy bằng mắt.</p>\r\n\r\n<p><strong>Công dụng</strong>:</p>\r\n\r\n<p>- Vừa làm sạch vừa duy trì độ ẩm mịn cho da.</p>\r\n\r\n<p>- Chứa dưỡng chất hỗ trợ làm sáng da.</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng:</strong></p>\r\n\r\n<p>- Rửa mặt qua với nước</p>\r\n\r\n<p>- Lấy một ít sửa vào lòng bàn tay, xoa đều tạo bọt và thoa lên da.</p>\r\n\r\n<p>- Massage mặt nhẹ nhàng theo chiều cấu tạo da từ 30 giây đến 1 phút.</p>\r\n\r\n<p>- Rửa sạch lại với nước</p>\r\n\r\n<p><strong>Bảo quản</strong></p>\r\n\r\n<p>- Bảo quản nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp</p>\r\n\r\n<p>- Để xa tầm tay trẻ em</p>\r\n', '', '', '', '', '0', NULL, NULL, NULL, '000180444');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bakcodt_form`
--

CREATE TABLE `bakcodt_form` (
  `ID` int(11) NOT NULL,
  `Name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Content` text COLLATE utf8_unicode_ci NOT NULL,
  `Config` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bakcodt_home`
--

CREATE TABLE `bakcodt_home` (
  `ID` int(11) NOT NULL,
  `Name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Content` text COLLATE utf8_unicode_ci NOT NULL,
  `Theme` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Summary` text COLLATE utf8_unicode_ci NOT NULL,
  `Icon` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Groups` int(11) NOT NULL,
  `createDate` datetime NOT NULL,
  `modifyDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bakcodt_infor`
--

CREATE TABLE `bakcodt_infor` (
  `ID` int(11) NOT NULL,
  `Name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Content` text COLLATE utf8_unicode_ci NOT NULL,
  `Config` text COLLATE utf8_unicode_ci NOT NULL,
  `dataConfig` text COLLATE utf8_unicode_ci NOT NULL,
  `createDate` datetime NOT NULL DEFAULT current_timestamp(),
  `modifyDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bakcodt_infor`
--

INSERT INTO `bakcodt_infor` (`ID`, `Name`, `Title`, `Content`, `Config`, `dataConfig`, `createDate`, `modifyDate`) VALUES
(2, 'SDT', 'Số Điện Thoại', '02713.717.366', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-21 23:41:20', '2018-06-21 23:41:20'),
(3, 'DiaChi', 'Địa Chỉ', ' Xã Phú Văn - Huyện Bù Gia Mập - Tỉnh Bình Phước, TP HCM', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-21 23:45:33', '2018-06-21 23:45:33'),
(5, 'WebName', 'Website', 'https://cantinnhanai.vkhealth.vn', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 00:01:09', '2018-06-22 00:01:09'),
(8, 'Logo', 'Hình Logo', '/public/img/images/information/img-16557098621402-8.png', '{\"Type\":\"file\"}', '{\"Type\":\"file\"}', '2018-06-22 00:03:46', '2018-06-22 00:03:46'),
(10, 'linkFacebook', 'Page Facebook', '#', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 00:06:14', '2018-06-22 00:06:14'),
(11, 'linkGoogle', 'Link Google', '#', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 00:06:40', '2018-06-22 00:06:40'),
(12, 'linkTwitter', 'twitter', '#', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 00:07:16', '2018-06-22 00:07:16'),
(13, 'linkPinterest', 'pinterest', '#', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 00:07:18', '2018-06-22 00:07:18'),
(19, 'Title', 'Tiêu Đề Trang', 'Bệnh viện Nhân Ái', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 01:53:07', '2018-06-22 01:53:07'),
(20, 'Des', 'Mô Tả Trang', 'Điều trị và chăm sóc hoàn toàn miễn phí cho bệnh nhân HIV/AIDS, cung cấp các dịch vụ y tế, điều trị có hiệu quả bằng thuốc kháng virus HIV và các bệnh nhiễm trùng cơ hội khác, chăm sóc giảm nhẹ. Nâng cao sức khỏe và cải thiện chất lượng cuộc sống. Tiên phong trong việc chống lại sự kỳ thị, phân biệt đối xử với người nhiễm HIV/AIDS.   ', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 01:55:35', '2018-06-22 01:55:35'),
(23, 'Keyword', 'Từ Khóa', 'Bệnh viện Nhân Ái ', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-27 21:37:45', '2018-06-27 21:37:45'),
(24, 'Auth', 'Người Phát Triển', 'VKHS', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-27 22:09:29', '2018-06-27 22:09:29'),
(26, 'Hotline', 'HOTLINE', '02713.717.366', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-28 11:10:14', '2018-06-28 11:10:14'),
(27, 'lblThongTinCongty', 'title Thông Tin Công Ty', 'Thông Tin Công Ty', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-28 11:12:32', '2018-06-28 11:12:32'),
(28, 'lblDichVu', 'title Dịch Vụ', 'Dịch Vụ', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-28 11:13:34', '2018-06-28 11:13:34'),
(29, 'lblCongTy', 'title Công Ty', 'Công Ty', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-28 11:14:14', '2018-06-28 11:14:14'),
(30, 'lblHoTro', 'title Hỗ Trợ', 'Hỗ Trợ', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-28 11:14:49', '2018-06-28 11:14:49'),
(31, 'Email', 'Email', 'bv.nhanai@tphcm.gov.vn', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-28 11:15:44', '2018-06-28 11:15:44'),
(32, 'lblHotline', 'lbl Hotline', 'Hotline', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-07-04 19:05:13', '2018-07-04 19:05:13'),
(33, 'lblEmail', 'lbl Email', 'Email', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-07-04 19:06:01', '2018-07-04 19:06:01'),
(34, 'lblPhone', 'lbl Phone', 'SĐT', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-07-04 19:06:39', '2018-07-04 19:06:39'),
(35, 'lblAddress', 'lbl Địa Chỉ', 'Địa Chỉ', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-07-04 19:06:40', '2018-07-04 19:06:40'),
(36, 'lblNhapMail', 'lbl nhập Email', 'Nhập Email để nhận thông tin', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-07-04 19:20:05', '2018-07-04 19:20:05'),
(37, 'Icon', 'Icon', '/public/img/images/information/img-16557102751003-37.png', '{\"Type\":\"file\"}', '{\"Type\":\"file\"}', '2021-05-11 17:43:32', '2021-05-11 17:43:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bakcodt_khachhang`
--

CREATE TABLE `bakcodt_khachhang` (
  `Id` int(11) NOT NULL,
  `Name` varchar(500) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Saler` varchar(200) NOT NULL,
  `Tinh` int(11) NOT NULL,
  `Huyen` int(11) NOT NULL,
  `DiaChi` text NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bakcodt_khachhang`
--

INSERT INTO `bakcodt_khachhang` (`Id`, `Name`, `Username`, `Phone`, `Email`, `Saler`, `Tinh`, `Huyen`, `DiaChi`, `Password`) VALUES
(3, 'Nguyễn Văn Độ', '0366997840', '0366997840', 'namdong92@gmail.com', '', 32, 50, '115 phạm đình hổ, Phường 6', '0366997840'),
(4, 'NGUYỄN MÙA THÁI NGÂN', '0902869475', '0902869475', 'nguyenthaingan16@gmail.com', '', 32, 52, '92/49/20 Phạm Đức Sơn Phường 16, quận 8', '0902869475'),
(5, 'aaa', '123', '123', '', '', 32, 33, '111', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bakcodt_khachhang_diachi`
--

CREATE TABLE `bakcodt_khachhang_diachi` (
  `Id` int(11) NOT NULL,
  `IdKhachHang` int(11) NOT NULL,
  `Tinh` int(11) NOT NULL,
  `Huyen` int(11) NOT NULL,
  `DiaChi` text NOT NULL,
  `Phuong` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bakcodt_location`
--

CREATE TABLE `bakcodt_location` (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Code` varchar(10) NOT NULL,
  `Parent` varchar(10) NOT NULL,
  `Lang` varchar(5) NOT NULL,
  `Stt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bakcodt_menu`
--

CREATE TABLE `bakcodt_menu` (
  `IDMenu` int(11) NOT NULL,
  `Name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Link` text COLLATE utf8_unicode_ci NOT NULL,
  `Parent` int(11) NOT NULL,
  `Groups` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Theme` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `OrderBy` int(11) NOT NULL,
  `Note` text COLLATE utf8_unicode_ci NOT NULL,
  `createDate` datetime NOT NULL,
  `UpdateDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bakcodt_menu`
--

INSERT INTO `bakcodt_menu` (`IDMenu`, `Name`, `Link`, `Parent`, `Groups`, `Theme`, `OrderBy`, `Note`, `createDate`, `UpdateDate`) VALUES
(3, 'Trang Chủ', '/', 0, 'FooterMenu', 'home', 0, '', '0000-00-00 00:00:00', '2022-07-12 10:50:20'),
(10, 'Sản Phẩm', '#', 0, 'FooterMenu', 'home', 0, '', '2018-05-26 04:37:47', '2022-07-12 10:50:20'),
(11, 'Giới Thiệu', '#', 0, 'FooterMenu', 'home', 0, '', '2018-05-26 05:28:56', '2022-07-12 10:50:20'),
(14, 'Giới Thiệu', '#', 0, 'FooterMenuCongTy', 'home', 0, '', '2018-05-26 09:46:26', '2021-05-19 13:50:32'),
(15, 'Tuyển Dụng', '#', 0, 'FooterMenuCongTy', 'home', 0, '', '2018-05-26 09:47:26', '2021-05-19 13:50:32'),
(17, 'Tin Tức', '#', 0, 'FooterMenuCongTy', 'home', 0, '', '2018-05-26 09:49:11', '2021-05-19 13:50:32'),
(18, 'Liên Hệ', '#', 0, 'FooterMenuCongTy', 'home', 0, '', '2018-05-26 09:53:14', '2021-05-19 13:50:32'),
(20, 'Giỏ hàng', '#', 0, 'FooterMenuHoTro', 'home', 1, '', '2018-05-26 09:56:56', '2021-05-17 02:12:41'),
(21, 'Đổi  Trả Sản Phẩm', '#', 0, 'FooterMenuHoTro', 'home', 2, '', '2018-05-26 10:00:47', '2021-05-17 02:12:41'),
(23, 'Giới thiệu', '#', 0, 'FooterMenuDichVu', 'home', 0, '', '2018-05-26 10:14:08', '2018-10-15 14:56:57'),
(24, 'Chinh sách công ty', '#', 0, 'FooterMenuDichVu', 'home', 0, '', '2018-05-26 10:14:37', '2018-10-15 14:56:57'),
(43, 'Trang Chủ', '/', 0, 'TopMainMenu', 'home', 1, '', '2018-07-04 17:40:54', '2022-07-12 09:21:37'),
(46, 'Hỗ Trợ', '#', 0, 'TopHeaderMenu', 'home', 1, '', '2021-05-11 10:55:09', '2022-07-12 09:27:08'),
(48, 'Giới Thiệu', '#', 0, 'TopHeaderMenu', 'home', 0, '', '2021-05-11 10:56:01', '2022-07-12 09:27:08'),
(49, 'fa fa-facebook', '#', 0, 'HeaderSocial', 'home', 0, '', '2021-05-11 10:57:20', '2021-05-11 10:58:33'),
(50, 'fa fa-instagram', '#', 0, 'HeaderSocial', 'home', 0, '', '2021-05-11 10:58:05', '2021-05-11 10:58:33'),
(51, 'fa fa-twitter', '#', 0, 'HeaderSocial', 'home', 0, '', '2021-05-11 10:58:06', '2021-05-11 10:58:33'),
(52, 'fa fa-google-plus', '#', 0, 'HeaderSocial', 'home', 0, '', '2021-05-11 10:58:07', '2021-05-11 10:58:33'),
(56, 'Giao hàng tại TPHCM', '#', 0, 'FooterMenuHoTro', 'home', 3, '', '2021-05-17 02:12:19', '2021-05-17 02:12:41'),
(57, 'Giao hàng toàn quốc', '#', 0, 'FooterMenuHoTro', 'home', 4, '', '2021-05-17 02:12:20', '2021-05-17 02:12:41'),
(1632752548, 'Thực phẩm chế biến', '/thuc-pham-che-bien', 1632752364, 'TopMainMenu', 'home', 51, '', '2021-09-27 21:22:28', '2022-07-12 09:21:37'),
(1632752553, 'Đồ khô', '/do-kho', 1632752364, 'TopMainMenu', 'home', 52, '', '2021-09-27 21:22:33', '2022-07-12 09:21:12'),
(1657592756, 'Đồ khô', '/do-kho', 0, 'FooterMenu', 'home', 0, '', '2022-07-12 09:25:56', '2022-07-12 10:50:20'),
(1657592765, 'Thực phẩm chế biến', '/thuc-pham-che-bien', 0, 'FooterMenu', 'home', 0, '', '2022-07-12 09:26:05', '2022-07-12 10:50:20'),
(1657592807, 'Thực phẩm chế biến', '/thuc-pham-che-bien', 0, 'TopHeaderMenu', 'home', 0, '', '2022-07-12 09:26:47', '2022-07-12 09:27:08'),
(1657592815, 'Đồ khô', '/do-kho', 0, 'TopHeaderMenu', 'home', 0, '', '2022-07-12 09:26:55', '2022-07-12 09:27:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bakcodt_news`
--

CREATE TABLE `bakcodt_news` (
  `ID` varchar(50) NOT NULL DEFAULT '0',
  `PageID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Alias` text NOT NULL,
  `Summary` text NOT NULL,
  `Content` longtext NOT NULL,
  `title` varchar(250) NOT NULL,
  `keyword` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `AnHien` tinyint(4) NOT NULL DEFAULT 1,
  `NgayDang` datetime DEFAULT NULL,
  `UrlHinh` text DEFAULT NULL,
  `TinNoiBat` int(11) NOT NULL,
  `SoLanXem` int(11) NOT NULL DEFAULT 0,
  `Stt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bakcodt_news`
--

INSERT INTO `bakcodt_news` (`ID`, `PageID`, `Name`, `Alias`, `Summary`, `Content`, `title`, `keyword`, `description`, `AnHien`, `NgayDang`, `UrlHinh`, `TinNoiBat`, `SoLanXem`, `Stt`) VALUES
('1527226196e4f12df246', 1, 'liên hệ', 'lien-he', '', '', '', '', '', 0, '2018-05-25 07:29:56', '', 0, 0, 0),
('152722633118680e5f03', 2, 'DỊch Vụ', 'dich-vu', '', '', '', '', '', 0, '2018-05-25 07:32:11', '/public/img/images/news/2018/05/news-152722633118680e5f03.jpeg', 0, 0, 0),
('1527226362aba2aaf008', 2, 'Thiết Bị', 'thiet-bi', '', '', '', '', '', 0, '2018-05-25 07:32:42', '/public/img/images/news/2018/05/news-1527226362aba2aaf008.jpeg', 0, 0, 0),
('1527226378afcbc5f756', 2, 'Năng Lực', 'nang-luc', '', '', '', '', '', 0, '2018-05-25 07:32:58', '/public/img/images/news/2018/05/news-1527226378afcbc5f756.png', 0, 0, 0),
('152722757475630e9180', 1, 'Dịch Vụ', 'dich-vu', '', '', '', '', '', 1, '2018-05-25 07:52:54', '/public/img/images/news/152722757475630e9180/news-152722757475630e9180.jpeg', 0, 0, 0),
('162143228742b5c0aa9b', 1, 'thanh ly abc', 'thanh-ly-abc', '', '', '', '', '', 1, '2021-05-19 13:51:27', '', 0, 0, 0),
('16217716749fd7f09815', 1, 'CHÍNH SÁCH KÝ GỬI THANH LÝ', 'chinh-sach-ky-gui-thanh-ly', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 'CHÀO CÁC BẠN ĐẾN VỚI GÓC VOI ', 'CHÀO CÁC BẠN ĐẾN VỚI GÓC VOI ', 'CHÀO CÁC BẠN ĐẾN VỚI GÓC VOI ', 1, '2021-05-23 12:07:54', '', 1, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bakcodt_news_category`
--

CREATE TABLE `bakcodt_news_category` (
  `Id` int(11) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` text NOT NULL,
  `isActive` int(11) NOT NULL,
  `Alias` text NOT NULL,
  `Parents` int(11) DEFAULT NULL,
  `Title` text DEFAULT NULL,
  `Des` text DEFAULT NULL,
  `Keyword` text DEFAULT NULL,
  `Content` longtext DEFAULT NULL,
  `Images` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bakcodt_news_category`
--

INSERT INTO `bakcodt_news_category` (`Id`, `Code`, `Name`, `isActive`, `Alias`, `Parents`, `Title`, `Des`, `Keyword`, `Content`, `Images`) VALUES
(1, '8798fdaf-482a-4b61-bd8f-691227eda09b', 'Hướng Dẫn', 1, 'huong-dan', 0, '', '', '', '', '/public/img/images/adv/VTYT_adv.jpg'),
(2, '98a6311b-4a7d-4c69-ab0c-8339dbfed6bf', 'Mua dịch', 0, 'mua-dich', 0, '', '', '', '', ''),
(3, 'a6fb8619-1976-11ec-8b28-0cc47acc8ffc', 'Abc asdasdas', 1, 'abc-asdasdas', 0, 'asd asdasd', 'asda', 'sdasdas', 'asdasdas', '/public/img/images/information/img-1631357199257-37.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bakcodt_order`
--

CREATE TABLE `bakcodt_order` (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `MaBenhNhan` varchar(100) DEFAULT NULL,
  `KhoaBenh` varchar(50) NOT NULL,
  `MaThe` varchar(100) DEFAULT NULL,
  `TotalPrice` double NOT NULL,
  `CodeOrder` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Status` int(11) NOT NULL,
  `Note` text NOT NULL,
  `Tinh` int(11) DEFAULT NULL,
  `Huyen` int(11) DEFAULT NULL,
  `Address` text NOT NULL,
  `Saler` varchar(200) DEFAULT NULL,
  `NgayTao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bakcodt_order`
--

INSERT INTO `bakcodt_order` (`Id`, `Name`, `MaBenhNhan`, `KhoaBenh`, `MaThe`, `TotalPrice`, `CodeOrder`, `Email`, `Phone`, `Status`, `Note`, `Tinh`, `Huyen`, `Address`, `Saler`, `NgayTao`) VALUES
(2, '042C6992073480', '6', 'Nội', '042C6992073480', 38000, 'f0fa9c02-1d39-4e67-a865-7c1ffd4dc2c8', '', '', 5, '', 0, 0, '', 'admin', '2022-08-01 08:21:27'),
(3, '042C6992073480', '', '', '', 120000, '300b974b-f8a5-4744-bfff-bfbc75b846f1', '', '', 5, '', 0, 0, '', '', '2022-08-04 14:28:20'),
(4, 'KhachHangVangLai', '', '', '', 1724000, '92e5f4fe-f16c-471c-b6f7-4716a5ca7786', '', '', 4, '', 0, 0, '', '', '2022-08-04 14:32:54'),
(5, 'KhachHangVangLai', '', '', '', 40000, 'ffc36058-8d3f-4b24-9c57-fb04a370a0e8', '', '', 4, '', 0, 0, '', '', '2022-08-04 14:53:30'),
(6, 'KhachHangVangLai', '', '', '', 30000, 'a24963b5-150e-4e42-bdf2-410fc176859e', '', '', 4, '', 0, 0, '', '', '2022-08-04 15:01:42'),
(7, '042C6992073480', '6', 'Nội', '042C6992073480', 0, '8cfd0867-a539-44b2-97cd-c8335240db1d', '', '', 5, '', 0, 0, '', 'admin', '2022-08-04 16:17:04'),
(8, '042C6992073480', '6', 'Nội', '042C6992073480', 0, '3762da5c-e3a2-4c2d-b8a8-77b6c2cd1a99', '', '', 5, '', 0, 0, '', 'admin', '2022-08-04 16:19:42'),
(9, '042C6992073480', '6', 'Nội', '042C6992073480', 0, '65b99d68-0e5a-4ee9-ab45-07694a487d30', '', '', 5, '', 0, 0, '', 'admin', '2022-08-04 16:20:48'),
(10, '042C6992073480', '6', 'Nội', '042C6992073480', 80000, 'f4259c3d-541b-43a2-bb5e-6957b51b50b9', '', '', 5, '', 0, 0, '', 'admin', '2022-08-04 16:21:04'),
(11, '042C6992073480', '6', 'Nội', '042C6992073480', 0, 'ccb9c621-a947-4f9f-9f57-6c05e8fd53f0', '', '', 5, '', 0, 0, '', 'admin', '2022-08-05 15:39:30'),
(12, 'KhachHangVangLai', '', '', '', 45000, 'b47bf24c-37ee-4308-a70c-541cae908652', '', '', 4, '', 0, 0, '', '', '2022-08-10 14:09:50'),
(13, 'KhachHangVangLai', '', '', '', 45000, 'bbf30a98-af57-407b-b7db-4a5926335f84', '', '', 4, '', 0, 0, '', '', '2022-08-10 14:10:16'),
(14, '04231272D85C80', '40173', '', '04231272D85C80', 17000, 'a8c3a733-94a3-4f80-8a63-e155ed43a1ce', '', '0997775553', 4, '', 0, 0, '', 'admin', '2022-08-10 14:46:06'),
(15, '04231272D85C80', '40173', '', '04231272D85C80', 3500, 'f8ec2d69-508e-4129-b983-aa477975dc6d', '', '0997775553', 4, '', 0, 0, '', 'admin', '2022-08-10 14:49:33'),
(16, '04231272D85C80', '40173', '', '04231272D85C80', 3500, 'a4bdc267-08fe-40d9-9517-130e22d42cbb', '', '0997775553', 4, '', 0, 0, '', 'admin', '2022-08-10 14:51:09'),
(17, '04231272D85C80', '40173', '', '04231272D85C80', 3500, '811bcffc-bb70-416e-8033-739a0106dd4d', '', '0997775553', 4, '', 0, 0, '', 'admin', '2022-08-10 14:51:20'),
(18, '04231272D85C80', '40173', '', '04231272D85C80', 3500, 'b4667106-ae95-4737-91fd-558ab08afae6', '', '0997775553', 4, '', 0, 0, '', 'admin', '2022-08-10 14:55:30'),
(19, '04231272D85C80', '40173', '', '04231272D85C80', 3500, '8912b8a1-4203-4fbe-84de-676e089f9355', '', '0997775553', 4, '', 0, 0, '', 'admin', '2022-08-10 14:56:55'),
(20, '04231272D85C80', '40173', '', '04231272D85C80', 3500, '830ed5fe-55d5-4895-ab45-79a3f0346ee0', '', '0997775553', 4, '', 0, 0, '', 'admin', '2022-08-10 14:59:03'),
(21, '042C6992073480', '6', 'Nội', '042C6992073480', 3500, '252f8785-1223-4451-98b7-3ecfd702f9c7', '', '', 5, '', 0, 0, '', 'admin', '2022-08-10 15:00:31'),
(22, '042C6992073480', '6', 'Nội', '042C6992073480', 3500, '653bd12a-b4e9-4a62-a379-8d619544d16f', '', '', 5, '', 0, 0, '', 'admin', '2022-08-10 15:00:56'),
(23, '042C6992073480', '6', 'Nội', '042C6992073480', 3500, '0607d19f-d949-4969-98d5-1690a9881a23', '', '', 5, '', 0, 0, '', 'admin', '2022-08-10 15:01:48'),
(24, 'KhachHangVangLai', '', '', '', 220000, '66f68588-b5e4-4a1e-8d82-fa6ce31fda69', '', '', 4, '', 0, 0, '', '', '2022-08-10 15:02:25'),
(25, '042380720F6A80', '40176', 'D', '042380720F6A80', 11000, '22cfa6fa-4a04-426a-b587-200ce3e7c921', '', '', 5, '', 0, 0, '', 'quanly1', '2022-08-10 15:03:02'),
(26, '04231272D85C80', '40173', '', '04231272D85C80', 17000, 'ad211060-6bb7-4a66-9f75-cc4a63fc0579', '', '0997775553', 4, '', 0, 0, '', 'admin', '2022-08-11 08:51:18'),
(27, '04231272D85C80', '40173', 'Nội', '04231272D85C80', 17000, 'c22c479a-92ef-4e23-b490-4eb541919556', '', '0997775553', 5, '', 0, 0, '', 'admin', '2022-08-11 08:51:58'),
(28, '04231272D85C80', '40173', 'Nội', '04231272D85C80', 28000, '39d5e34b-81d4-42d0-a582-5ee609553af7', '', '0997775553', 5, '', 0, 0, '', 'admin', '2022-08-11 08:54:01'),
(29, '042380720F6A80', '40176', 'D', '042380720F6A80', 28000, '55678310-fd06-4811-83e5-603bdc48af54', '', '', 5, '', 0, 0, '', 'admin', '2022-08-11 10:19:35'),
(30, '042380720F6A80', '40176', 'D', '042380720F6A80', 11000, 'f85e03fb-deb2-4f38-a974-8f6e2621d571', '', '', 5, '', 0, 0, '', 'quanly1', '2022-08-11 14:03:36'),
(31, '042380720F6A80', '40176', 'D', '042380720F6A80', 11000, 'e1d34ae5-95d2-4e44-a7c4-9c025faa8c00', '', '', 5, '', 0, 0, '', 'quanly1', '2022-08-11 14:03:39'),
(33, 'KhachHangVangLai', '', '', '', 21000, '00db594f-ef44-4b3c-92ee-0533a5281242', '', '', 4, '', 0, 0, '', '', '2022-08-16 15:37:37'),
(34, '045F6B720F6A80', '40233', '1', '045F6B720F6A80', 21000, '493c4258-b6b2-41b9-9fdd-05e7e5d39bea', '', '', 5, '', 0, 0, '', 'quanly1', '2022-08-16 15:39:02'),
(35, '043BAF720F6A80', '40234', '1', '043BAF720F6A80', 28000, 'fde4c91c-51c5-4638-aa71-cc556ad80cb4', '', '', 5, '', 0, 0, '', 'quanly1', '2022-08-16 15:49:53'),
(36, '043BAF720F6A80', '40234', '1', '043BAF720F6A80', 28000, '2d61b6bb-066e-4db4-b84b-4bcd38adacf8', '', '', 5, '', 0, 0, '', 'quanly1', '2022-08-16 15:49:55'),
(37, '043BAF720F6A80', '40234', '1', '043BAF720F6A80', 28000, 'da1e5edd-2350-4c5b-bbba-c811a2e7a429', '', '', 5, '', 0, 0, '', 'quanly1', '2022-08-16 15:50:41'),
(38, '043BAF720F6A80', '40234', '1', '043BAF720F6A80', 28000, '70ecbc32-d699-40ec-a788-cae49c915896', '', '', 5, '', 0, 0, '', 'quanly1', '2022-08-16 15:50:41'),
(39, '048E68720F6A80', '40232', '1', '048E68720F6A80', 28000, '016a1bec-a2c5-4679-9778-4a93a4d4619f', '', '', 5, '', 0, 0, '', 'quanly1', '2022-08-16 15:51:18'),
(40, '048E68720F6A80', '40232', '1', '048E68720F6A80', 28000, '0f4afb3b-01b5-4a1c-8975-b95825953f51', '', '', 5, '', 0, 0, '', 'quanly1', '2022-08-16 15:51:23'),
(41, '048E68720F6A80', '40232', '1', '048E68720F6A80', 28000, '6001b869-1cc5-4b9b-a1cb-c500a2106199', '', '', 5, '', 0, 0, '', 'quanly1', '2022-08-16 15:51:23'),
(42, '043BAF720F6A80', '40234', '1', '043BAF720F6A80', 36000, '9381d0ef-c83c-4570-89a0-d76ca5592e12', '', '', 5, '', 0, 0, '', 'quanly1', '2022-08-17 15:29:10'),
(43, '043BAF720F6A80', '40234', '1', '043BAF720F6A80', 36000, 'a175a61b-7bc4-4e65-b797-9ee23b014140', '', '', 5, '', 0, 0, '', 'quanly1', '2022-08-17 15:29:13'),
(44, '04231272D85C80', '40173', 'Nội', '04231272D85C80', 10000, '6d3ee5a4-7638-4012-b406-d4cc1c619598', '', '0997775553', 5, '', 0, 0, '', 'admin', '2022-08-23 19:13:50'),
(45, '04231272D85C80', '40173', 'Nội', '04231272D85C80', 17000, '4b8705b4-d96d-4d88-a02a-1026c36cc074', '', '0997775553', 5, '', 0, 0, '', 'admin', '2022-08-23 19:18:29'),
(46, '04231272D85C80', '40173', 'Nội', '04231272D85C80', 14000, '125780b5-4dca-40ce-b1dd-5e56942bea2e', '', '0997775553', 5, '', 0, 0, '', 'admin', '2022-08-23 19:19:52'),
(47, '04231272D85C80', '40173', 'Nội', '04231272D85C80', 17000, 'fe0e09d0-882a-4bca-892f-3a287074d26a', '', '0997775553', 5, '', 0, 0, '', 'admin', '2022-08-23 19:21:21'),
(48, 'KhachHangVangLai', '', '', '', 83500, '8a58a6a8-1e1f-4934-9d72-1faba3ab89dc', '', '', 4, '', 0, 0, '', '', '2022-08-25 14:37:41'),
(49, 'KhachHangVangLai', '', '', '', 47000, '80900d63-6325-469a-9d4d-f2e2bbb82205', '', '', 4, '', 0, 0, '', '', '2022-08-25 14:38:55'),
(50, 'KhachHangVangLai', '', '', '', 34500, '38c20222-c923-45c6-85e7-6af2d0a16cd7', '', '', 4, '', 0, 0, '', '', '2022-08-25 15:04:34'),
(51, 'KhachHangVangLai', '', '', '', 72500, '23a7eadd-f06e-461e-bb89-b5b29247de95', '', '', 4, '', 0, 0, '', '', '2022-08-25 15:06:49'),
(52, '046E70720F6A80', '40373', '', '046E70720F6A80', 72500, '1c083d18-7c05-47ac-ac35-bae1d6e21377', '', '', 4, '', 0, 0, '', '', '2022-08-25 15:10:19'),
(53, '042C6992073480', '2212', 'Nội', '042C6992073480', 14000, '389b6298-4d0c-49ac-a02f-8baf00fe84d7', '', '', 5, '', 0, 0, '', 'admin', '2022-08-26 09:30:30'),
(54, '042C6992073480', '2212', 'Tim', '', 11000, 'abf21c77-1372-4337-bfff-034d93673f70', '', '', 5, '', 0, 0, '', '', '2022-08-26 09:33:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bakcodt_orderdetail`
--

CREATE TABLE `bakcodt_orderdetail` (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `IdProduct` varchar(50) NOT NULL,
  `CodeOrder` varchar(50) NOT NULL,
  `Price` double NOT NULL,
  `Number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bakcodt_orderdetail`
--

INSERT INTO `bakcodt_orderdetail` (`Id`, `Name`, `IdProduct`, `CodeOrder`, `Price`, `Number`) VALUES
(3, 'Chi Tiết Đơn Hàng aa85be72-fe9c-406c-a7d9-30c1d9a312fe', 'B008', 'aa85be72-fe9c-406c-a7d9-30c1d9a312fe', 80000, 3),
(4, 'Chi Tiết Đơn Hàng aa85be72-fe9c-406c-a7d9-30c1d9a312fe', 'B012', 'aa85be72-fe9c-406c-a7d9-30c1d9a312fe', 300000, 3),
(5, 'Chi Tiết Đơn Hàng f0fa9c02-1d39-4e67-a865-7c1ffd4dc2c8', 'A001', 'f0fa9c02-1d39-4e67-a865-7c1ffd4dc2c8', 19000, 2),
(7, 'Thêm Mới', 'A002', 'aa85be72-fe9c-406c-a7d9-30c1d9a312fe', 17000, 3),
(8, 'Thêm Mới', 'B002', 'aa85be72-fe9c-406c-a7d9-30c1d9a312fe', 20000, 2),
(9, 'Chi Tiết Đơn Hàng 300b974b-f8a5-4744-bfff-bfbc75b846f1', 'B008', '300b974b-f8a5-4744-bfff-bfbc75b846f1', 80000, 1),
(10, 'Chi Tiết Đơn Hàng 300b974b-f8a5-4744-bfff-bfbc75b846f1', 'B004', '300b974b-f8a5-4744-bfff-bfbc75b846f1', 40000, 1),
(11, 'Chi Tiết Đơn Hàng 92e5f4fe-f16c-471c-b6f7-4716a5ca7786', 'B008', '92e5f4fe-f16c-471c-b6f7-4716a5ca7786', 80000, 1),
(12, 'Chi Tiết Đơn Hàng 92e5f4fe-f16c-471c-b6f7-4716a5ca7786', 'B004', '92e5f4fe-f16c-471c-b6f7-4716a5ca7786', 40000, 1),
(13, 'Chi Tiết Đơn Hàng 92e5f4fe-f16c-471c-b6f7-4716a5ca7786', 'A002', '92e5f4fe-f16c-471c-b6f7-4716a5ca7786', 17000, 1),
(14, 'Chi Tiết Đơn Hàng 92e5f4fe-f16c-471c-b6f7-4716a5ca7786', 'B013', '92e5f4fe-f16c-471c-b6f7-4716a5ca7786', 400000, 1),
(15, 'Chi Tiết Đơn Hàng 92e5f4fe-f16c-471c-b6f7-4716a5ca7786', 'B009', '92e5f4fe-f16c-471c-b6f7-4716a5ca7786', 90000, 1),
(16, 'Chi Tiết Đơn Hàng 92e5f4fe-f16c-471c-b6f7-4716a5ca7786', 'B005', '92e5f4fe-f16c-471c-b6f7-4716a5ca7786', 50000, 1),
(17, 'Chi Tiết Đơn Hàng 92e5f4fe-f16c-471c-b6f7-4716a5ca7786', 'B001', '92e5f4fe-f16c-471c-b6f7-4716a5ca7786', 10000, 1),
(18, 'Chi Tiết Đơn Hàng 92e5f4fe-f16c-471c-b6f7-4716a5ca7786', 'A007', '92e5f4fe-f16c-471c-b6f7-4716a5ca7786', 20000, 1),
(19, 'Chi Tiết Đơn Hàng 92e5f4fe-f16c-471c-b6f7-4716a5ca7786', 'A004', '92e5f4fe-f16c-471c-b6f7-4716a5ca7786', 17000, 1),
(20, 'Chi Tiết Đơn Hàng 92e5f4fe-f16c-471c-b6f7-4716a5ca7786', 'B015', '92e5f4fe-f16c-471c-b6f7-4716a5ca7786', 1000000, 1),
(21, 'Chi Tiết Đơn Hàng ffc36058-8d3f-4b24-9c57-fb04a370a0e8', 'B004', 'ffc36058-8d3f-4b24-9c57-fb04a370a0e8', 40000, 1),
(22, 'Chi Tiết Đơn Hàng a24963b5-150e-4e42-bdf2-410fc176859e', 'B001', 'a24963b5-150e-4e42-bdf2-410fc176859e', 10000, 1),
(23, 'Chi Tiết Đơn Hàng a24963b5-150e-4e42-bdf2-410fc176859e', 'B002', 'a24963b5-150e-4e42-bdf2-410fc176859e', 20000, 1),
(24, 'Chi Tiết Đơn Hàng f4259c3d-541b-43a2-bb5e-6957b51b50b9', 'B008', 'f4259c3d-541b-43a2-bb5e-6957b51b50b9', 80000, 1),
(25, 'Chi Tiết Đơn Hàng b47bf24c-37ee-4308-a70c-541cae908652', 'A002', 'b47bf24c-37ee-4308-a70c-541cae908652', 17000, 1),
(26, 'Chi Tiết Đơn Hàng b47bf24c-37ee-4308-a70c-541cae908652', 'A003', 'b47bf24c-37ee-4308-a70c-541cae908652', 17000, 1),
(27, 'Chi Tiết Đơn Hàng b47bf24c-37ee-4308-a70c-541cae908652', 'A005', 'b47bf24c-37ee-4308-a70c-541cae908652', 11000, 1),
(28, 'Chi Tiết Đơn Hàng bbf30a98-af57-407b-b7db-4a5926335f84', 'A002', 'bbf30a98-af57-407b-b7db-4a5926335f84', 17000, 1),
(29, 'Chi Tiết Đơn Hàng bbf30a98-af57-407b-b7db-4a5926335f84', 'A003', 'bbf30a98-af57-407b-b7db-4a5926335f84', 17000, 1),
(30, 'Chi Tiết Đơn Hàng bbf30a98-af57-407b-b7db-4a5926335f84', 'A005', 'bbf30a98-af57-407b-b7db-4a5926335f84', 11000, 1),
(31, 'Chi Tiết Đơn Hàng a8c3a733-94a3-4f80-8a63-e155ed43a1ce', 'A004', 'a8c3a733-94a3-4f80-8a63-e155ed43a1ce', 17000, 1),
(32, 'Chi Tiết Đơn Hàng f8ec2d69-508e-4129-b983-aa477975dc6d', 'A006', 'f8ec2d69-508e-4129-b983-aa477975dc6d', 3500, 1),
(33, 'Chi Tiết Đơn Hàng a4bdc267-08fe-40d9-9517-130e22d42cbb', 'A006', 'a4bdc267-08fe-40d9-9517-130e22d42cbb', 3500, 1),
(34, 'Chi Tiết Đơn Hàng 811bcffc-bb70-416e-8033-739a0106dd4d', 'A006', '811bcffc-bb70-416e-8033-739a0106dd4d', 3500, 1),
(35, 'Chi Tiết Đơn Hàng b4667106-ae95-4737-91fd-558ab08afae6', 'A006', 'b4667106-ae95-4737-91fd-558ab08afae6', 3500, 1),
(36, 'Chi Tiết Đơn Hàng 8912b8a1-4203-4fbe-84de-676e089f9355', 'A006', '8912b8a1-4203-4fbe-84de-676e089f9355', 3500, 1),
(37, 'Chi Tiết Đơn Hàng 830ed5fe-55d5-4895-ab45-79a3f0346ee0', 'A006', '830ed5fe-55d5-4895-ab45-79a3f0346ee0', 3500, 1),
(38, 'Chi Tiết Đơn Hàng 252f8785-1223-4451-98b7-3ecfd702f9c7', 'A006', '252f8785-1223-4451-98b7-3ecfd702f9c7', 3500, 1),
(39, 'Chi Tiết Đơn Hàng 653bd12a-b4e9-4a62-a379-8d619544d16f', 'A006', '653bd12a-b4e9-4a62-a379-8d619544d16f', 3500, 1),
(40, 'Chi Tiết Đơn Hàng 0607d19f-d949-4969-98d5-1690a9881a23', 'A006', '0607d19f-d949-4969-98d5-1690a9881a23', 3500, 1),
(41, 'Chi Tiết Đơn Hàng 66f68588-b5e4-4a1e-8d82-fa6ce31fda69', 'A005', '66f68588-b5e4-4a1e-8d82-fa6ce31fda69', 11000, 20),
(42, 'Chi Tiết Đơn Hàng 22cfa6fa-4a04-426a-b587-200ce3e7c921', 'A005', '22cfa6fa-4a04-426a-b587-200ce3e7c921', 11000, 1),
(43, 'Chi Tiết Đơn Hàng ad211060-6bb7-4a66-9f75-cc4a63fc0579', 'A002', 'ad211060-6bb7-4a66-9f75-cc4a63fc0579', 17000, 1),
(44, 'Chi Tiết Đơn Hàng c22c479a-92ef-4e23-b490-4eb541919556', 'A002', 'c22c479a-92ef-4e23-b490-4eb541919556', 17000, 1),
(45, 'Chi Tiết Đơn Hàng 39d5e34b-81d4-42d0-a582-5ee609553af7', 'A002', '39d5e34b-81d4-42d0-a582-5ee609553af7', 17000, 1),
(46, 'Chi Tiết Đơn Hàng 39d5e34b-81d4-42d0-a582-5ee609553af7', 'A005', '39d5e34b-81d4-42d0-a582-5ee609553af7', 11000, 1),
(47, 'Chi Tiết Đơn Hàng 55678310-fd06-4811-83e5-603bdc48af54', 'A008', '55678310-fd06-4811-83e5-603bdc48af54', 17000, 1),
(48, 'Chi Tiết Đơn Hàng 55678310-fd06-4811-83e5-603bdc48af54', 'A009', '55678310-fd06-4811-83e5-603bdc48af54', 11000, 1),
(49, 'Chi Tiết Đơn Hàng f85e03fb-deb2-4f38-a974-8f6e2621d571', 'A005', 'f85e03fb-deb2-4f38-a974-8f6e2621d571', 11000, 1),
(50, 'Chi Tiết Đơn Hàng e1d34ae5-95d2-4e44-a7c4-9c025faa8c00', 'A005', 'e1d34ae5-95d2-4e44-a7c4-9c025faa8c00', 11000, 1),
(51, 'Chi Tiết Đơn Hàng DH-20220815144942474', '4358', 'DH-20220815144942474', 17000, 7),
(52, 'Chi Tiết Đơn Hàng 00db594f-ef44-4b3c-92ee-0533a5281242', 'A005', '00db594f-ef44-4b3c-92ee-0533a5281242', 11000, 1),
(53, 'Chi Tiết Đơn Hàng 00db594f-ef44-4b3c-92ee-0533a5281242', 'B001', '00db594f-ef44-4b3c-92ee-0533a5281242', 10000, 1),
(54, 'Chi Tiết Đơn Hàng 493c4258-b6b2-41b9-9fdd-05e7e5d39bea', 'A005', '493c4258-b6b2-41b9-9fdd-05e7e5d39bea', 11000, 1),
(55, 'Chi Tiết Đơn Hàng 493c4258-b6b2-41b9-9fdd-05e7e5d39bea', 'B001', '493c4258-b6b2-41b9-9fdd-05e7e5d39bea', 10000, 1),
(56, 'Chi Tiết Đơn Hàng fde4c91c-51c5-4638-aa71-cc556ad80cb4', 'A003', 'fde4c91c-51c5-4638-aa71-cc556ad80cb4', 17000, 1),
(57, 'Chi Tiết Đơn Hàng fde4c91c-51c5-4638-aa71-cc556ad80cb4', 'A005', 'fde4c91c-51c5-4638-aa71-cc556ad80cb4', 11000, 1),
(58, 'Chi Tiết Đơn Hàng 2d61b6bb-066e-4db4-b84b-4bcd38adacf8', 'A003', '2d61b6bb-066e-4db4-b84b-4bcd38adacf8', 17000, 1),
(59, 'Chi Tiết Đơn Hàng 2d61b6bb-066e-4db4-b84b-4bcd38adacf8', 'A005', '2d61b6bb-066e-4db4-b84b-4bcd38adacf8', 11000, 1),
(60, 'Chi Tiết Đơn Hàng da1e5edd-2350-4c5b-bbba-c811a2e7a429', 'A003', 'da1e5edd-2350-4c5b-bbba-c811a2e7a429', 17000, 1),
(61, 'Chi Tiết Đơn Hàng da1e5edd-2350-4c5b-bbba-c811a2e7a429', 'A005', 'da1e5edd-2350-4c5b-bbba-c811a2e7a429', 11000, 1),
(62, 'Chi Tiết Đơn Hàng 70ecbc32-d699-40ec-a788-cae49c915896', 'A003', '70ecbc32-d699-40ec-a788-cae49c915896', 17000, 1),
(63, 'Chi Tiết Đơn Hàng 70ecbc32-d699-40ec-a788-cae49c915896', 'A005', '70ecbc32-d699-40ec-a788-cae49c915896', 11000, 1),
(64, 'Chi Tiết Đơn Hàng 016a1bec-a2c5-4679-9778-4a93a4d4619f', 'A003', '016a1bec-a2c5-4679-9778-4a93a4d4619f', 17000, 1),
(65, 'Chi Tiết Đơn Hàng 016a1bec-a2c5-4679-9778-4a93a4d4619f', 'A005', '016a1bec-a2c5-4679-9778-4a93a4d4619f', 11000, 1),
(66, 'Chi Tiết Đơn Hàng 0f4afb3b-01b5-4a1c-8975-b95825953f51', 'A003', '0f4afb3b-01b5-4a1c-8975-b95825953f51', 17000, 1),
(67, 'Chi Tiết Đơn Hàng 0f4afb3b-01b5-4a1c-8975-b95825953f51', 'A005', '0f4afb3b-01b5-4a1c-8975-b95825953f51', 11000, 1),
(68, 'Chi Tiết Đơn Hàng 6001b869-1cc5-4b9b-a1cb-c500a2106199', 'A003', '6001b869-1cc5-4b9b-a1cb-c500a2106199', 17000, 1),
(69, 'Chi Tiết Đơn Hàng 6001b869-1cc5-4b9b-a1cb-c500a2106199', 'A005', '6001b869-1cc5-4b9b-a1cb-c500a2106199', 11000, 1),
(70, 'Chi Tiết Đơn Hàng 9381d0ef-c83c-4570-89a0-d76ca5592e12', 'A194', '9381d0ef-c83c-4570-89a0-d76ca5592e12', 16000, 1),
(71, 'Chi Tiết Đơn Hàng 9381d0ef-c83c-4570-89a0-d76ca5592e12', 'A193', '9381d0ef-c83c-4570-89a0-d76ca5592e12', 10000, 1),
(72, 'Chi Tiết Đơn Hàng 9381d0ef-c83c-4570-89a0-d76ca5592e12', 'A192', '9381d0ef-c83c-4570-89a0-d76ca5592e12', 10000, 1),
(73, 'Chi Tiết Đơn Hàng a175a61b-7bc4-4e65-b797-9ee23b014140', 'A194', 'a175a61b-7bc4-4e65-b797-9ee23b014140', 16000, 1),
(74, 'Chi Tiết Đơn Hàng a175a61b-7bc4-4e65-b797-9ee23b014140', 'A193', 'a175a61b-7bc4-4e65-b797-9ee23b014140', 10000, 1),
(75, 'Chi Tiết Đơn Hàng a175a61b-7bc4-4e65-b797-9ee23b014140', 'A192', 'a175a61b-7bc4-4e65-b797-9ee23b014140', 10000, 1),
(76, 'Chi Tiết Đơn Hàng 6d3ee5a4-7638-4012-b406-d4cc1c619598', 'A193', '6d3ee5a4-7638-4012-b406-d4cc1c619598', 10000, 1),
(77, 'Chi Tiết Đơn Hàng 4b8705b4-d96d-4d88-a02a-1026c36cc074', 'A204', '4b8705b4-d96d-4d88-a02a-1026c36cc074', 17000, 1),
(78, 'Chi Tiết Đơn Hàng 125780b5-4dca-40ce-b1dd-5e56942bea2e', 'A205', '125780b5-4dca-40ce-b1dd-5e56942bea2e', 14000, 1),
(79, 'Chi Tiết Đơn Hàng fe0e09d0-882a-4bca-892f-3a287074d26a', 'A204', 'fe0e09d0-882a-4bca-892f-3a287074d26a', 17000, 1),
(80, 'Chi Tiết Đơn Hàng 8a58a6a8-1e1f-4934-9d72-1faba3ab89dc', 'A200', '8a58a6a8-1e1f-4934-9d72-1faba3ab89dc', 3500, 3),
(81, 'Chi Tiết Đơn Hàng 8a58a6a8-1e1f-4934-9d72-1faba3ab89dc', 'A201', '8a58a6a8-1e1f-4934-9d72-1faba3ab89dc', 20000, 1),
(82, 'Chi Tiết Đơn Hàng 8a58a6a8-1e1f-4934-9d72-1faba3ab89dc', 'A203', '8a58a6a8-1e1f-4934-9d72-1faba3ab89dc', 53000, 1),
(83, 'Chi Tiết Đơn Hàng 80900d63-6325-469a-9d4d-f2e2bbb82205', 'A201', '80900d63-6325-469a-9d4d-f2e2bbb82205', 20000, 1),
(84, 'Chi Tiết Đơn Hàng 80900d63-6325-469a-9d4d-f2e2bbb82205', 'A010', '80900d63-6325-469a-9d4d-f2e2bbb82205', 27000, 1),
(85, 'Chi Tiết Đơn Hàng 38c20222-c923-45c6-85e7-6af2d0a16cd7', 'A199', '38c20222-c923-45c6-85e7-6af2d0a16cd7', 3500, 7),
(86, 'Chi Tiết Đơn Hàng 38c20222-c923-45c6-85e7-6af2d0a16cd7', 'A191', '38c20222-c923-45c6-85e7-6af2d0a16cd7', 10000, 1),
(87, 'Chi Tiết Đơn Hàng 23a7eadd-f06e-461e-bb89-b5b29247de95', 'CTZE', '23a7eadd-f06e-461e-bb89-b5b29247de95', 44000, 1),
(88, 'Chi Tiết Đơn Hàng 23a7eadd-f06e-461e-bb89-b5b29247de95', 'CTT1', '23a7eadd-f06e-461e-bb89-b5b29247de95', 1000, 1),
(89, 'Chi Tiết Đơn Hàng 23a7eadd-f06e-461e-bb89-b5b29247de95', 'CT128', '23a7eadd-f06e-461e-bb89-b5b29247de95', 9000, 1),
(90, 'Chi Tiết Đơn Hàng 23a7eadd-f06e-461e-bb89-b5b29247de95', 'A202', '23a7eadd-f06e-461e-bb89-b5b29247de95', 8000, 1),
(91, 'Chi Tiết Đơn Hàng 23a7eadd-f06e-461e-bb89-b5b29247de95', 'A200', '23a7eadd-f06e-461e-bb89-b5b29247de95', 3500, 3),
(92, 'Chi Tiết Đơn Hàng 1c083d18-7c05-47ac-ac35-bae1d6e21377', 'CTZE', '1c083d18-7c05-47ac-ac35-bae1d6e21377', 44000, 1),
(93, 'Chi Tiết Đơn Hàng 1c083d18-7c05-47ac-ac35-bae1d6e21377', 'CTT1', '1c083d18-7c05-47ac-ac35-bae1d6e21377', 1000, 1),
(94, 'Chi Tiết Đơn Hàng 1c083d18-7c05-47ac-ac35-bae1d6e21377', 'CT128', '1c083d18-7c05-47ac-ac35-bae1d6e21377', 9000, 1),
(95, 'Chi Tiết Đơn Hàng 1c083d18-7c05-47ac-ac35-bae1d6e21377', 'A202', '1c083d18-7c05-47ac-ac35-bae1d6e21377', 8000, 1),
(96, 'Chi Tiết Đơn Hàng 1c083d18-7c05-47ac-ac35-bae1d6e21377', 'A200', '1c083d18-7c05-47ac-ac35-bae1d6e21377', 3500, 3),
(97, 'Chi Tiết Đơn Hàng 389b6298-4d0c-49ac-a02f-8baf00fe84d7', 'A213', '389b6298-4d0c-49ac-a02f-8baf00fe84d7', 14000, 1),
(98, 'Chi Tiết Đơn Hàng abf21c77-1372-4337-bfff-034d93673f70', 'CT5Z', 'abf21c77-1372-4337-bfff-034d93673f70', 11000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bakcodt_order_log`
--

CREATE TABLE `bakcodt_order_log` (
  `Id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Name` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `OrderId` int(11) NOT NULL,
  `Status` int(11) NOT NULL,
  `Content` text CHARACTER SET utf8 NOT NULL,
  `Saler` varchar(50) CHARACTER SET utf8 NOT NULL,
  `DateCreate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bakcodt_order_log`
--

INSERT INTO `bakcodt_order_log` (`Id`, `Name`, `OrderId`, `Status`, `Content`, `Saler`, `DateCreate`) VALUES
('37b86845-a435-428f-be19-abb4657fd435', 'Đã Xác Nhận Đơn Hàng', 2, 7, '[admin] Xác Nhận Đơn Hàng', 'admin', '2022-06-21 17:15:43'),
('fcb6ab8c-47c1-416f-9ba7-2fb5e2a65dd9', 'Đã Xác Nhận Đơn Hàng', 103, 7, '[admin] Xác Nhận Đơn Hàng', 'admin', '2022-07-29 14:57:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bakcodt_pages`
--

CREATE TABLE `bakcodt_pages` (
  `idPa` int(11) NOT NULL,
  `idGroup` tinyint(4) NOT NULL,
  `Name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `Alias` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Des` text COLLATE utf8_unicode_ci NOT NULL,
  `Keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Summary` text COLLATE utf8_unicode_ci NOT NULL,
  `Content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `Urlimages` text COLLATE utf8_unicode_ci NOT NULL,
  `isShow` tinyint(4) NOT NULL DEFAULT 1,
  `Type` int(11) NOT NULL,
  `Note` text COLLATE utf8_unicode_ci NOT NULL,
  `OrderBy` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bakcodt_pages`
--

INSERT INTO `bakcodt_pages` (`idPa`, `idGroup`, `Name`, `Alias`, `Title`, `Des`, `Keyword`, `Summary`, `Content`, `Urlimages`, `isShow`, `Type`, `Note`, `OrderBy`) VALUES
(6, 1, 'Liên hệ', 'lien-he', '', '', '', '', '', '/public/img/images/adv/VTYT_adv.jpg', 1, 0, '{\"showhomesevice\":\"0\",\"showhomenews\":\"0\",\"IsSevicer\":\"0\"}', 0),
(21, 0, 'Giới Thiệu', 'gioi-thieu', '', '', '', '', '', '/public/img/images/quangcao/homeslide/DTCN_adv.jpg', 0, 0, '{}', 0),
(19, 1, 'Tin Tức', 'tin-tuc', '', '', '', '', '', '/public/img/images/pages/2018/08/pages-19.jpeg', 1, 1, '{\"IsSevicer\":\"0\"}', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bakcodt_product`
--

CREATE TABLE `bakcodt_product` (
  `Code` varchar(50) NOT NULL DEFAULT '0',
  `ID` int(11) NOT NULL,
  `Username` varchar(200) NOT NULL,
  `catID` int(11) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `nameProduct` text NOT NULL,
  `unitPrice` varchar(50) NOT NULL,
  `Alias` varchar(200) NOT NULL,
  `Price` decimal(15,4) NOT NULL,
  `GiaNhap` decimal(18,4) NOT NULL,
  `oldPrice` decimal(15,4) DEFAULT 0.0000,
  `Summary` text DEFAULT NULL,
  `Content` text DEFAULT NULL,
  `UrlHinh` varchar(255) DEFAULT NULL,
  `DateCreate` datetime DEFAULT NULL,
  `Number` int(11) DEFAULT 0,
  `Note` varchar(500) DEFAULT NULL,
  `BuyTimes` int(11) DEFAULT 0,
  `Views` int(11) DEFAULT 0,
  `isShow` tinyint(4) NOT NULL,
  `Serial` int(11) NOT NULL,
  `lang` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bakcodt_product`
--

INSERT INTO `bakcodt_product` (`Code`, `ID`, `Username`, `catID`, `brand`, `nameProduct`, `unitPrice`, `Alias`, `Price`, `GiaNhap`, `oldPrice`, `Summary`, `Content`, `UrlHinh`, `DateCreate`, `Number`, `Note`, `BuyTimes`, `Views`, `isShow`, `Serial`, `lang`) VALUES
('A001', 4356, 'quanly1', 1, '', 'Bạc hà', 'kg', 'bac-ha', '19000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 0, '', 0, 0, 0, 1658302854, 'vi'),
('A002', 4357, 'quanly1', 1, '0d402400-583c-4847-a7dc-15c782479262', 'Bánh bèo', 'hộp', 'banh-beo', '17000.0000', '0.0000', '0.0000', '', '', '', '2022-08-08 10:55:54', 0, '', 0, 0, 0, 1658302854, 'vi'),
('A003', 4358, 'quanly1', 1, '0d402400-583c-4847-a7dc-15c782479262', 'Bột lộc', 'hộp', 'bot-loc', '17000.0000', '0.0000', '0.0000', '', '', '', '2022-08-08 10:57:53', 0, '', 0, 7, 0, 1658302854, 'vi'),
('A004', 4359, 'quanly1', 1, '0d402400-583c-4847-a7dc-15c782479262', 'Bánh bò nhỏ', 'bịch', 'banh-bo-nho', '17000.0000', '0.0000', '0.0000', '', '', '/public/img/images/sanpham/dainam_copy.jpg', '2022-08-23 15:42:24', 1, '', 0, 1, 0, 1658302854, 'vi'),
('A005', 4360, 'quanly1', 1, '0d402400-583c-4847-a7dc-15c782479262', 'Bánh bông lan', 'cái', 'banh-bong-lan', '11000.0000', '0.0000', '0.0000', '', '', '', '2022-08-08 10:57:02', 0, '', 0, 0, 0, 1658302854, 'vi'),
('A006', 4361, 'quanly1', 1, '', 'Bánh cam', 'cái', 'banh-cam', '3500.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 2, 0, 1658302854, 'vi'),
('A007', 4362, 'quanly1', 1, '', 'Bánh cuốn', 'kg', 'banh-cuon', '20000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A008', 4363, 'quanly1', 1, '', 'Bánh cưốn chả', 'hộp', 'banh-cuon-cha', '17000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A009', 4364, 'quanly1', 1, '', 'Bánh chưng nhỏ', 'cây', 'banh-chung-nho', '11000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 2, 0, 1658302854, 'vi'),
('A010', 4365, 'quanly1', 1, '', 'Bánh da heo', 'bịch', 'banh-da-heo', '27000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A011', 4366, 'quanly1', 1, '', 'Bánh giầy', 'cái', 'banh-giay', '3500.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A012', 4367, 'quanly1', 1, '', 'Bánh ít lớn', 'cái', 'banh-it-lon', '8000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A013', 4368, 'quanly1', 1, '', 'Bánh kem', 'cái', 'banh-kem', '155000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A014', 4369, 'quanly1', 1, '', 'Bánh mì không', 'ổ', 'banh-mi-khong', '4500.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 2, 0, 1658302854, 'vi'),
('A015', 4370, 'quanly1', 1, '', 'Bánh mì thịt', 'ổ', 'banh-mi-thit', '17000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A016', 4371, 'quanly1', 1, '', 'Bánh phồng tôm', 'bịch', 'banh-phong-tom', '11000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A017', 4372, 'quanly1', 1, '', 'Bánh tét nhỏ', 'cây', 'banh-tet-nho', '13000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A018', 4373, 'quanly1', 1, '', 'Bánh tráng mỏng', 'bịch', 'banh-trang-mong', '13000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A019', 4374, 'quanly1', 1, '', 'Bánh ướt', 'gram', 'banh-uot', '20000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A020', 4375, 'quanly1', 1, '', 'Bánh ướt chả', 'hộp', 'banh-uot-cha', '19000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A021', 4376, 'quanly1', 1, '', 'Bắp cải', 'kg', 'bap-cai', '31000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A022', 4377, 'quanly1', 1, '', 'Bắp trái', 'trái', 'bap-trai', '7000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A023', 4378, 'quanly1', 1, '', 'Bầu', 'kg', 'bau', '19000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A024', 4379, 'quanly1', 1, '', 'Bí đao+bí đỏ', 'kg', 'bi-daobi-do', '19000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A025', 4380, 'quanly1', 1, '', 'Bì heo', 'kg', 'bi-heo', '55000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A026', 4381, 'quanly1', 1, '', 'Bò kho', 'tô', 'bo-kho', '30000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A027', 4382, 'quanly1', 1, '', 'Bông cúc ', 'bó', 'bong-cuc', '44000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A028', 4383, 'quanly1', 1, '', 'Bông hẹ + hành', 'kg', 'bong-he-hanh', '55000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A029', 4384, 'quanly1', 1, '', 'Bột bán+bột khoai', 'kg', 'bot-banbot-khoai', '33000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A030', 4385, 'quanly1', 1, '', 'Bột bánh xèo', 'gói', 'bot-banh-xeo', '22000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A031', 4386, 'quanly1', 1, '', 'Bột chiên xù', 'gói', 'bot-chien-xu', '11000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A032', 4387, 'quanly1', 1, '', 'Bún thịt nướng', 'kg', 'bun-thit-nuong', '30000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A033', 4388, 'quanly1', 1, '', 'Bột năng', 'kg', 'bot-nang', '33000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A034', 4389, 'quanly1', 1, '', 'Bột ngọt', 'kg', 'bot-ngot', '66000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A035', 4390, 'quanly1', 1, '', 'Bún bò huế', 'tô', 'bun-bo-hue', '30000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A036', 4391, 'quanly1', 1, '', 'Bún gạo', 'kg', 'bun-gao', '39000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A037', 4392, 'quanly1', 1, '', 'Bún riêu', 'tô', 'bun-rieu', '30000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A038', 4393, 'quanly1', 1, '', 'Bún tươi', 'kg', 'bun-tuoi', '15000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A039', 4394, 'quanly1', 1, '', 'Bưởi', 'kg', 'buoi', '66000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A040', 4395, 'quanly1', 1, '', 'Ca  khô đù,cơm', 'kg', 'ca-kho-du-com', '105000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A041', 4396, 'quanly1', 1, '', 'Cá ba sa', 'kg', 'ca-ba-sa', '66000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A042', 4397, 'quanly1', 1, '', 'Tỏi ớt', 'kg', 'toi-ot', '10000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A043', 4398, 'quanly1', 1, '', 'Cà chua', 'kg', 'ca-chua', '33000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A044', 4399, 'quanly1', 1, '', 'Cà pháo', 'kg', 'ca-phao', '27000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A045', 4400, 'quanly1', 1, '', 'Cà pháo chua', 'kg', 'ca-phao-chua', '30000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A046', 4401, 'quanly1', 1, '', 'Cà rốt', 'kg', 'ca-rot', '27000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A047', 4402, 'quanly1', 1, '', 'Cà tím', 'kg', 'ca-tim', '19000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A048', 4403, 'quanly1', 1, '', 'Cá tra+ cá trê', 'kg', 'ca-tra-ca-tre', '60000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A049', 4404, 'quanly1', 1, '', 'Cải bệ xanh', 'kg', 'cai-be-xanh', '20000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A050', 4405, 'quanly1', 1, '', 'Cải chua', 'kg', 'cai-chua', '27000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A051', 4406, 'quanly1', 1, '', 'Cải ngọt', 'kg', 'cai-ngot', '20000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A052', 4407, 'quanly1', 1, '', 'Cải thảo', 'kg', 'cai-thao', '24000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A053', 4408, 'quanly1', 1, '', 'Cải thìa', 'kg', 'cai-thia', '27000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A054', 4409, 'quanly1', 1, '', 'Cải trắng', 'kg', 'cai-trang', '19000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A055', 4410, 'quanly1', 1, '', 'Cam', 'kg', 'cam', '44000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A056', 4411, 'quanly1', 1, '', 'Cần bó nước', 'bó', 'can-bo-nuoc', '17000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A057', 4412, 'quanly1', 1, '', 'Cần tây', 'kg', 'can-tay', '44000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A058', 4413, 'quanly1', 1, '', 'Cóc', 'kg', 'coc', '33000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A059', 4414, 'quanly1', 1, '', 'Cơm tấm', 'hộp', 'com-tam', '30000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A060', 4415, 'quanly1', 1, '', 'Củ dền', 'kg', 'cu-den', '27000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A061', 4416, 'quanly1', 1, '', 'Củ sắn', 'kg', 'cu-san', '17000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A062', 4417, 'quanly1', 1, '', 'Chả cá', 'kg', 'cha-ca', '83000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A063', 4418, 'quanly1', 1, '', 'Chả cá thác lác', 'kg', 'cha-ca-thac-lac', '290000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A064', 4419, 'quanly1', 1, '', 'chả giò', 'kg', 'cha-gio', '44000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A065', 4420, 'quanly1', 1, '', 'Chả lụa+ quế+thủ', 'kg', 'cha-lua-quethu', '155000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A066', 4421, 'quanly1', 1, '', 'Chanh', 'kg', 'chanh', '27000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A067', 4422, 'quanly1', 1, '', 'Cháo gà+ cháo lòng', 'tô', 'chao-ga-chao-long', '27000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A068', 4423, 'quanly1', 1, '', 'Chè', 'bịch', 'che', '8000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A069', 4424, 'quanly1', 1, '', 'Chè xôi nước', 'bịch', 'che-xoi-nuoc', '11000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A070', 4425, 'quanly1', 1, '', 'Chó giả cầy', 'tô', 'cho-gia-cay', '88000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A071', 4426, 'quanly1', 1, '', 'Chó sáo măng', 'tô', 'cho-sao-mang', '55000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A072', 4427, 'quanly1', 1, '', 'Chôm chôm ', 'kg', 'chom-chom', '22000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A073', 4428, 'quanly1', 1, '', 'Chôm chôm thái', 'kg', 'chom-chom-thai', '44000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A074', 4429, 'quanly1', 1, '', 'Chuối', 'kg', 'chuoi', '13000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A075', 4430, 'quanly1', 1, '', 'Chuối chiên +bánh tiêu', 'cái', 'chuoi-chien-banh-tieu', '3500.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A076', 4431, 'quanly1', 1, '', 'Dầu ăn', 'lít', 'dau-an', '44000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A077', 4432, 'quanly1', 1, '', 'Dưa hấu', 'kg', 'dua-hau', '22000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A078', 4433, 'quanly1', 1, '', 'Dưa leo', 'kg', 'dua-leo', '19000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A079', 4434, 'quanly1', 1, '', 'Dừa nạo', 'trái', 'dua-nao', '22000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A080', 4435, 'quanly1', 1, '', 'Dừa tươi', 'trái', 'dua-tuoi', '19000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A081', 4436, 'quanly1', 1, '', 'Đậu bắp ', 'kg', 'dau-bap', '33000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A082', 4437, 'quanly1', 1, '', 'Đậu đen', 'kg', 'dau-den', '50000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A083', 4438, 'quanly1', 1, '', 'Đậu đũa', 'kg', 'dau-dua', '20000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A084', 4439, 'quanly1', 1, '', 'Đậu hà lan', 'kg', 'dau-ha-lan', '66000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A085', 4440, 'quanly1', 1, '', 'Đậu hủ chiên', 'miếng', 'dau-hu-chien', '3500.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A086', 4441, 'quanly1', 1, '', 'Đậu phộng', 'kg', 'dau-phong', '55000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A087', 4442, 'quanly1', 1, '', 'Đậu que', 'kg', 'dau-que', '33000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A088', 4443, 'quanly1', 1, '', 'Đậu trắng  thường', 'kg', 'dau-trang-thuong', '50000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A089', 4444, 'quanly1', 1, '', 'Đồ chay chế biến', 'lạng', 'do-chay-che-bien', '33000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A090', 4445, 'quanly1', 1, '', 'Đồ nấu canh chua', 'phần', 'do-nau-canh-chua', '17000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A091', 4446, 'quanly1', 1, '', 'Đùi heo', 'kg', 'dui-heo', '155000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A092', 4447, 'quanly1', 1, '', 'Đuôi heo', 'kg', 'duoi-heo', '155000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A093', 4448, 'quanly1', 1, '', 'Giá', 'kg', 'gia', '15000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A094', 4449, 'quanly1', 1, '', 'Gừng+ riềng', 'kg', 'gung-rieng', '44000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A095', 4450, 'quanly1', 1, '', 'Hành lá', 'kg', 'hanh-la', '27000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A096', 4451, 'quanly1', 1, '', 'Hành phi', 'kg', 'hanh-phi', '155000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A097', 4452, 'quanly1', 1, '', 'Hành tây', 'kg', 'hanh-tay', '26000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A098', 4453, 'quanly1', 1, '', 'Hành tím', 'kg', 'hanh-tim', '44000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A099', 4454, 'quanly1', 1, '', 'Hẹ', 'kg', 'he', '33000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A100', 4455, 'quanly1', 1, '', 'Hồng giòn', 'kg', 'hong-gion', '46000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A101', 4456, 'quanly1', 1, '', 'Hủ tiếu bò kho', 'tô', 'hu-tieu-bo-kho', '30000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A102', 4457, 'quanly1', 1, '', 'Huyết ', 'kg', 'huyet', '70000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A103', 4458, 'quanly1', 1, '', 'Khế chua', 'kg', 'khe-chua', '39000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A104', 4459, 'quanly1', 1, '', 'Khoai mỡ', 'kg', 'khoai-mo', '33000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A105', 4460, 'quanly1', 1, '', 'Khoai lang luộc', 'kg', 'khoai-lang-luoc', '44000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A106', 4461, 'quanly1', 1, '', 'Khoai lang sống', 'kg', 'khoai-lang-song', '27000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A107', 4462, 'quanly1', 1, '', 'Khoai môn sọ', 'kg', 'khoai-mon-so', '39000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A108', 4463, 'quanly1', 1, '', 'Khoai môn tàu', 'kg', 'khoai-mon-tau', '50000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A109', 4464, 'quanly1', 1, '', 'Khoai tây', 'kg', 'khoai-tay', '22000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A110', 4465, 'quanly1', 1, '', 'Khô ba sa', 'kg', 'kho-ba-sa', '135000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A111', 4466, 'quanly1', 1, '', 'Khổ qua', 'kg', 'kho-qua', '27000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A112', 4467, 'quanly1', 1, '', 'Lá lốt', 'kg', 'la-lot', '33000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A113', 4468, 'quanly1', 1, '', 'Lạp xưởng', 'kg', 'lap-xuong', '135000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A114', 4469, 'quanly1', 1, '', 'Lê', 'kg', 'le', '88000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A115', 4470, 'quanly1', 1, '', 'Mãng cầu na', 'kg', 'mang-cau-na', '88000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A116', 4471, 'quanly1', 1, '', 'Mãng cầu xiêm', 'kg', 'mang-cau-xiem', '33000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A117', 4472, 'quanly1', 1, '', 'Mắm tôm', 'chai', 'mam-tom', '19000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A118', 4473, 'quanly1', 1, '', 'Mắm nêm', 'chai', 'mam-nem', '13000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A119', 4474, 'quanly1', 1, '', 'Măng cụt', 'kg', 'mang-cut', '44000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A120', 4475, 'quanly1', 1, '', 'Măng tươi', 'kg', 'mang-tuoi', '27000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A121', 4476, 'quanly1', 1, '', 'Mận', 'kg', 'man', '39000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A122', 4477, 'quanly1', 1, '', 'Me thái', 'bịch', 'me-thai', '27000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A123', 4478, 'quanly1', 1, '', 'Me vàng', 'kg', 'me-vang', '50000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A124', 4479, 'quanly1', 1, '', 'Mì gà bịch', 'gói', 'mi-ga-bich', '27000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A125', 4480, 'quanly1', 1, '', 'Mít tố nữ', 'kg', 'mit-to-nu', '11000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A126', 4481, 'quanly1', 1, '', 'Mồng tơi', 'kg', 'mong-toi', '20000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A127', 4482, 'quanly1', 1, '', 'Mướp ', 'kg', 'muop', '19000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A128', 4483, 'quanly1', 1, '', 'Nấm bào ngư', 'kg', 'nam-bao-ngu', '66000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A129', 4484, 'quanly1', 1, '', 'Nấm dai', 'kg', 'nam-dai', '66000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A130', 4485, 'quanly1', 1, '', 'Nấm đông cô', 'kg', 'nam-dong-co', '360000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A131', 4486, 'quanly1', 1, '', 'Nấm đùi gà', 'bịch', 'nam-dui-ga', '19000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A132', 4487, 'quanly1', 1, '', 'Nấm kim ', 'bịch', 'nam-kim', '17000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A133', 4488, 'quanly1', 1, '', 'Nấm mèo', 'kg', 'nam-meo', '135000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A134', 4489, 'quanly1', 1, '', 'Nấm rơm', 'kg', 'nam-rom', '155000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A135', 4490, 'quanly1', 1, '', 'Nem chua', 'cây', 'nem-chua', '27000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A136', 4491, 'quanly1', 1, '', 'Ngò gai + ôm', 'kg', 'ngo-gai-om', '39000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A137', 4492, 'quanly1', 1, '', 'Ngò rí', 'kg', 'ngo-ri', '49000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A138', 4493, 'quanly1', 1, '', 'Ngũ vị hương', 'bịch', 'ngu-vi-huong', '3000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A139', 4494, 'quanly1', 1, '', 'Nhãn', 'kg', 'nhan', '44000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A140', 4495, 'quanly1', 1, '', 'Nho mỹ', 'kg', 'nho-my', '115000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A141', 4496, 'quanly1', 1, '', 'Nho thường', 'kg', 'nho-thuong', '88000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A142', 4497, 'quanly1', 1, '', 'Ôỉ', 'kg', 'oi', '27000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A143', 4498, 'quanly1', 1, '', 'Ớt trái', 'kg', 'ot-trai', '77000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A144', 4499, 'quanly1', 1, '', 'Quýt', 'kg', 'quyt', '44000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A145', 4500, 'quanly1', 1, '', 'Rau dền', 'kg', 'rau-den', '27000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A146', 4501, 'quanly1', 1, '', 'Rau đắng', 'kg', 'rau-dang', '27000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A147', 4502, 'quanly1', 1, '', 'Rau ghém', 'kg', 'rau-ghem', '30000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 1, 0, 1658302854, 'vi'),
('A148', 4503, 'quanly1', 1, '', 'Rau má', 'kg', 'rau-ma', '22000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A149', 4504, 'quanly1', 1, '', 'Rau muống', 'kg', 'rau-muong', '17000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A150', 4505, 'quanly1', 1, '', 'Rau muống bào+chuối bào', 'kg', 'rau-muong-baochuoi-bao', '44000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A151', 4506, 'quanly1', 1, '', 'Rau ngót', 'kg', 'rau-ngot', '27000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A152', 4507, 'quanly1', 1, '', 'Rau nhút', 'kg', 'rau-nhut', '33000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A153', 4508, 'quanly1', 1, '', 'Rau sống', 'kg', 'rau-song', '30000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A154', 4509, 'quanly1', 1, '', 'Rau tần ô', 'kg', 'rau-tan-o', '27000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A155', 4510, 'quanly1', 1, '', 'Saboche', 'kg', 'saboche', '33000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A156', 4511, 'quanly1', 1, '', 'Sâm bổ lượng', 'bịch', 'sam-bo-luong', '17000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A157', 4512, 'quanly1', 1, '', 'Sầu riêng', 'kg', 'sau-rieng', '88000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A158', 4513, 'quanly1', 1, '', 'Sơ ri', 'kg', 'so-ri', '33000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A159', 4514, 'quanly1', 1, '', 'Sữa chua', 'hộp', 'sua-chua', '7000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A160', 4515, 'quanly1', 1, '', 'Tiêu hạt', 'kg', 'tieu-hat', '210000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A161', 4516, 'quanly1', 1, '', 'Tiêu', 'bịch', 'tieu', '11000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A162', 4517, 'quanly1', 1, '', 'Tỏi', 'kg', 'toi', '66000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A163', 4518, 'quanly1', 1, '', 'Thơm', 'quả', 'thom', '19000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A164', 4519, 'quanly1', 1, '', 'Táo xanh', 'kg', 'tao-xanh', '39000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A165', 4520, 'quanly1', 1, '', 'Tôm khô', 'kg', 'tom-kho', '520000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A166', 4521, 'quanly1', 1, '', 'Thì là', 'kg', 'thi-la', '77000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A167', 4522, 'quanly1', 1, '', 'Thịt chó luộc', 'phần', 'thit-cho-luoc', '60000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A168', 4523, 'quanly1', 1, '', 'Trứng ấp thảo', 'quả', 'trung-ap-thao', '4000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A169', 4524, 'quanly1', 1, '', 'Trứng cút', 'quả', 'trung-cut', '1000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A170', 4525, 'quanly1', 1, '', 'Trứng cút lộn', 'quả', 'trung-cut-lon', '1000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A171', 4526, 'quanly1', 1, '', 'Trứng gà', 'quả', 'trung-ga', '3000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A172', 4527, 'quanly1', 1, '', 'Trứng lộn', 'quả', 'trung-lon', '4500.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A173', 4528, 'quanly1', 1, '', 'Trứng muối, vịt lạt', 'quả', 'trung-muoi-vit-lat', '4500.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A174', 4529, 'quanly1', 1, '', 'Trứng vịt vạt', 'quả', 'trung-vit-vat', '3500.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A175', 4530, 'quanly1', 1, '', 'Vú sữa', 'kg', 'vu-sua', '39000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A176', 4531, 'quanly1', 1, '', 'Xả bào', 'kg', 'xa-bao', '27000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A177', 4532, 'quanly1', 1, '', 'Xà lách rau thơm', 'kg', 'xa-lach-rau-thom', '55000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A178', 4533, 'quanly1', 1, '', 'Xà lách xoong', 'kg', 'xa-lach-xoong', '27000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A179', 4534, 'quanly1', 1, '', 'Xoài chín', 'kg', 'xoai-chin', '44000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A180', 4535, 'quanly1', 1, '', 'Xoài sống', 'kg', 'xoai-song', '31000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A181', 4536, 'quanly1', 1, '', 'Xôi  mặn', 'hộp', 'xoi-man', '11000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A182', 4537, 'quanly1', 1, '', 'Xôi Ngọt', 'hộp ', 'xoi-ngot', '8000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A183', 4538, 'quanly1', 1, '', 'Xôi vị ', 'hộp', 'xoi-vi', '13000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A184', 4539, 'quanly1', 1, '', 'Ớt trái', 'bịch', 'ot-trai', '5000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A185', 4540, 'quanly1', 1, '', 'Tỏi', 'bịch', 'toi', '5000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A186', 4541, 'quanly1', 1, '', 'Tỏi + ớt', 'bịch', 'toi-ot', '10000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A187', 4542, 'quanly1', 1, '', 'Tỏi + ớt', 'bịch', 'toi-ot', '15000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A188', 4543, 'quanly1', 1, '', 'Tỏi + ớt', 'bịch', 'toi-ot', '20000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A189', 4544, 'quanly1', 1, '', 'Ớt trái', 'bịch', 'ot-trai', '20000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A190', 4545, 'quanly1', 1, '', 'Ớt trái', 'bịch', 'ot-trai', '15000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:40:54', 1, '', 0, 0, 0, 1658302854, 'vi'),
('A191', 4561, 'quanly1', 1, '', 'Bạc hà', '0,5kg', 'bac-ha', '10000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A192', 4562, 'quanly1', 1, '', 'Bánh cuốn', '0,5kg', 'banh-cuon', '10000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A193', 4563, 'quanly1', 1, '', 'Bánh ướt', '0,5kg', 'banh-uot', '10000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A194', 4564, 'quanly1', 1, '', 'Bắp cải', '0,5kg', 'bap-cai', '16000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A195', 4565, 'quanly1', 1, '', 'Bầu', '0,5kg', 'bau', '10000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A196', 4566, 'quanly1', 1, '', 'Bí đao+bí đỏ', '0,5kg', 'bi-daobi-do', '10000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A197', 4567, 'quanly1', 1, '', 'Bì heo', '0,5kg', 'bi-heo', '28000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A198', 4568, 'quanly1', 1, '', 'Bông hẹ + hành', '0,5kg', 'bong-he-hanh', '28000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A199', 4569, 'quanly1', 1, '', 'Bột bán+bột khoai', '0,1kg', 'bot-banbot-khoai', '3500.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A200', 4570, 'quanly1', 1, '', 'Bột năng', '0,1kg', 'bot-nang', '3500.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A201', 4571, 'quanly1', 1, '', 'Bún gạo', '0,5kg', 'bun-gao', '20000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A202', 4572, 'quanly1', 1, '', 'Bún tươi', '0,5kg', 'bun-tuoi', '8000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A203', 4573, 'quanly1', 1, '', 'Ca  khô đù,cơm', '0,5kg', 'ca-kho-du-com', '53000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A204', 4574, 'quanly1', 1, '', 'Cà chua', '0,5kg', 'ca-chua', '17000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A205', 4575, 'quanly1', 1, '', 'Cà pháo', '0,5kg', 'ca-phao', '14000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A206', 4576, 'quanly1', 1, '', 'Cà pháo chua', '0,5kg', 'ca-phao-chua', '15000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A207', 4577, 'quanly1', 1, '', 'Cà rốt', '0,5kg', 'ca-rot', '14000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A208', 4578, 'quanly1', 1, '', 'Cà tím', '0,5kg', 'ca-tim', '10000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A209', 4579, 'quanly1', 1, '', 'Cải bệ xanh', '0,5kg', 'cai-be-xanh', '10000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A210', 4580, 'quanly1', 1, '', 'Cải chua', '0,5kg', 'cai-chua', '14000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A211', 4581, 'quanly1', 1, '', 'Cải ngọt', '0,5kg', 'cai-ngot', '10000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A212', 4582, 'quanly1', 1, '', 'Cải thảo', '0,5kg', 'cai-thao', '12000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A213', 4583, 'quanly1', 1, '', 'Cải thìa', '0,5kg', 'cai-thia', '14000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A214', 4584, 'quanly1', 1, '', 'Cải trắng', '0,5kg', 'cai-trang', '10000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A215', 4585, 'quanly1', 1, '', 'Cần tây', '0,5kg', 'can-tay', '4500.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A216', 4586, 'quanly1', 1, '', 'Cóc', '0,5kg', 'coc', '17000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A217', 4587, 'quanly1', 1, '', 'Củ dền', '0,5kg', 'cu-den', '14000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A218', 4588, 'quanly1', 1, '', 'Củ sắn', '0,5kg', 'cu-san', '14000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A219', 4589, 'quanly1', 1, '', 'Chả cá', '0,1kg', 'cha-ca', '8500.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A220', 4590, 'quanly1', 1, '', 'Chả cá thác lác', '0,1kg', 'cha-ca-thac-lac', '29000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A221', 4591, 'quanly1', 1, '', 'Chả lụa+ quế+thủ', '0,5kg', 'cha-lua-quethu', '16000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A222', 4592, 'quanly1', 1, '', 'Chanh', '0,5kg', 'chanh', '15000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A223', 4593, 'quanly1', 1, '', 'Chôm chôm ', '0,5kg', 'chom-chom', '11000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A224', 4594, 'quanly1', 1, '', 'Chôm chôm thái', '0,5kg', 'chom-chom-thai', '22000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A225', 4595, 'quanly1', 1, '', 'Dưa leo', '0,5kg', 'dua-leo', '10000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A226', 4596, 'quanly1', 1, '', 'Đậu bắp ', '0,5kg', 'dau-bap', '17000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A227', 4597, 'quanly1', 1, '', 'Đậu đen', '0,5kg', 'dau-den', '25000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A228', 4598, 'quanly1', 1, '', 'Đậu đũa', '0,5kg', 'dau-dua', '10000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A229', 4599, 'quanly1', 1, '', 'Đậu hà lan', '0,5kg', 'dau-ha-lan', '33000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A230', 4600, 'quanly1', 1, '', 'Đậu phộng', '0,5kg', 'dau-phong', '28000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A231', 4601, 'quanly1', 1, '', 'Đậu que', '0,5kg', 'dau-que', '17000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A232', 4602, 'quanly1', 1, '', 'Đậu trắng  thường', '0,5kg', 'dau-trang-thuong', '25000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A233', 4603, 'quanly1', 1, '', 'Giá', '0,5kg', 'gia', '8000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A234', 4604, 'quanly1', 1, '', 'Gừng+ riềng', '0,1kg', 'gung-rieng', '4500.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A235', 4605, 'quanly1', 1, '', 'Hành lá', '0,1kg', 'hanh-la', '3000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A236', 4606, 'quanly1', 1, '', 'Hành phi', '0,5kg', 'hanh-phi', '16000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A237', 4607, 'quanly1', 1, '', 'Hành tây', '0,5kg', 'hanh-tay', '13000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A238', 4608, 'quanly1', 1, '', 'Hành tím', '0,5kg', 'hanh-tim', '22000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A239', 4609, 'quanly1', 1, '', 'Hẹ', '0,1kg', 'he', '3500.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A240', 4610, 'quanly1', 1, '', 'Khế chua', '0,5kg', 'khe-chua', '20000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A241', 4611, 'quanly1', 1, '', 'Khoai mỡ', '0,5kg', 'khoai-mo', '17000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A242', 4612, 'quanly1', 1, '', 'Khoai lang luộc', '0,5kg', 'khoai-lang-luoc', '22000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A243', 4613, 'quanly1', 1, '', 'Khoai lang sống', '0,5kg', 'khoai-lang-song', '14000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A244', 4614, 'quanly1', 1, '', 'Khoai môn sọ', '0,5kg', 'khoai-mon-so', '20000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A245', 4615, 'quanly1', 1, '', 'Khoai môn tàu', '0,5kg', 'khoai-mon-tau', '25000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A246', 4616, 'quanly1', 1, '', 'Khoai tây', '0,5kg', 'khoai-tay', '11000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A247', 4617, 'quanly1', 1, '', 'Khô ba sa', '0,5kg', 'kho-ba-sa', '68000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A248', 4618, 'quanly1', 1, '', 'Khổ qua', '0,5kg', 'kho-qua', '14000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A249', 4619, 'quanly1', 1, '', 'Lá lốt', '0,5kg', 'la-lot', '17000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A250', 4620, 'quanly1', 1, '', 'Lạp xưởng', '0,5kg', 'lap-xuong', '68000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A251', 4621, 'quanly1', 1, '', 'Măng tươi', '0,5kg', 'mang-tuoi', '14000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A252', 4622, 'quanly1', 1, '', 'Mận', '0,5kg', 'man', '20000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A253', 4623, 'quanly1', 1, '', 'Me vàng', '0,5kg', 'me-vang', '27000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A254', 4624, 'quanly1', 1, '', 'Mồng tơi', '0,5kg', 'mong-toi', '10000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A255', 4625, 'quanly1', 1, '', 'Mướp ', '0,5kg', 'muop', '10000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A256', 4626, 'quanly1', 1, '', 'Nấm bào ngư', '0,1kg', 'nam-bao-ngu', '7000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A257', 4627, 'quanly1', 1, '', 'Nấm dai', '0,1kg', 'nam-dai', '7000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A258', 4628, 'quanly1', 1, '', 'Nấm đông cô', '0,5kg', 'nam-dong-co', '36000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A259', 4629, 'quanly1', 1, '', 'Nấm mèo', '0,5kg', 'nam-meo', '68000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A260', 4630, 'quanly1', 1, '', 'Nấm rơm', '0,5kg', 'nam-rom', '78000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A261', 4631, 'quanly1', 1, '', 'Ngò gai + ôm', '0,1kg', 'ngo-gai-om', '4000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A262', 4632, 'quanly1', 1, '', 'Ngò rí', '0,1kg', 'ngo-ri', '5000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A263', 4633, 'quanly1', 1, '', 'Nho mỹ', '0,5kg', 'nho-my', '58000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A264', 4634, 'quanly1', 1, '', 'Nho thường', '0,5kg', 'nho-thuong', '44000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A265', 4635, 'quanly1', 1, '', 'Ớt trái', '0,1kg', 'ot-trai', '8000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A266', 4636, 'quanly1', 1, '', 'Rau dền', '0,5kg', 'rau-den', '14000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A267', 4637, 'quanly1', 1, '', 'Rau đắng', '0,5kg', 'rau-dang', '14000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A268', 4638, 'quanly1', 1, '', 'Rau ghém', '0,1kg', 'rau-ghem', '3000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A269', 4639, 'quanly1', 1, '', 'Rau má', '0,5kg', 'rau-ma', '11000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A270', 4640, 'quanly1', 1, '', 'Rau muống', '0,5kg', 'rau-muong', '9000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A271', 4641, 'quanly1', 1, '', 'Rau muống bào+chuối bào', '0,5kg', 'rau-muong-baochuoi-bao', '22000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A272', 4642, 'quanly1', 1, '', 'Rau ngót', '0,5kg', 'rau-ngot', '14000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A273', 4643, 'quanly1', 1, '', 'Rau nhút', '0,5kg', 'rau-nhut', '17000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A274', 4644, 'quanly1', 1, '', 'Rau sống', '0,1kg', 'rau-song', '3000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A275', 4645, 'quanly1', 1, '', 'Rau tần ô', '0,5kg', 'rau-tan-o', '14000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A276', 4646, 'quanly1', 1, '', 'Tiêu hạt', '0,1kg', 'tieu-hat', '21000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A277', 4647, 'quanly1', 1, '', 'Tỏi', '0,1kg', 'toi', '7000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A278', 4648, 'quanly1', 1, '', 'Tôm khô', '0,1kg', 'tom-kho', '55000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A279', 4649, 'quanly1', 1, '', 'Thì là', '0,1kg', 'thi-la', '8000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A280', 4650, 'quanly1', 1, '', 'Xả bào', '0,1kg', 'xa-bao', '3000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A281', 4651, 'quanly1', 1, '', 'Xà lách rau thơm', '0,1kg', 'xa-lach-rau-thom', '5500.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('A282', 4652, 'quanly1', 1, '', 'Xà lách xoong', '0,5kg', 'xa-lach-xoong', '14000.0000', '0.0000', '0.0000', '', '', '', '2022-08-17 10:44:02', 1, '', 0, 0, 0, 1660707842, 'vi'),
('B001', 4546, 'quanly1', 9, '', 'Cad điện thoại', 'cái', 'cad-dien-thoai', '10000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:41:20', 1, '', 0, 0, 0, 1658302880, 'vi'),
('B002', 4547, 'quanly1', 9, '', 'Cad điện thoại', 'cái', 'cad-dien-thoai', '20000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:41:20', 1, '', 0, 0, 0, 1658302880, 'vi'),
('B003', 4548, 'quanly1', 9, '', 'Cad điện thoại', 'cái', 'cad-dien-thoai', '30000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:41:20', 1, '', 0, 0, 0, 1658302880, 'vi'),
('B004', 4549, 'quanly1', 9, '', 'Cad điện thoại', 'cái', 'cad-dien-thoai', '40000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:41:20', 1, '', 0, 0, 0, 1658302880, 'vi'),
('B005', 4550, 'quanly1', 9, '', 'Cad điện thoại', 'cái', 'cad-dien-thoai', '50000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:41:20', 1, '', 0, 0, 0, 1658302880, 'vi'),
('B006', 4551, 'quanly1', 9, '', 'Cad điện thoại', 'cái', 'cad-dien-thoai', '60000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:41:20', 1, '', 0, 0, 0, 1658302880, 'vi'),
('B007', 4552, 'quanly1', 9, '', 'Cad điện thoại', 'cái', 'cad-dien-thoai', '70000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:41:20', 1, '', 0, 0, 0, 1658302880, 'vi'),
('B008', 4553, 'quanly1', 9, '', 'Cad điện thoại', 'cái', 'cad-dien-thoai', '80000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:41:20', 1, '', 0, 0, 0, 1658302880, 'vi'),
('B009', 4554, 'quanly1', 9, '', 'Cad điện thoại', 'cái', 'cad-dien-thoai', '90000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:41:20', 1, '', 0, 0, 0, 1658302880, 'vi'),
('B010', 4555, 'quanly1', 9, '', 'Cad điện thoại', 'cái', 'cad-dien-thoai', '100000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:41:20', 1, '', 0, 0, 0, 1658302880, 'vi'),
('B011', 4556, 'quanly1', 9, '', 'Cad điện thoại', 'cái', 'cad-dien-thoai', '200000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:41:20', 1, '', 0, 0, 0, 1658302880, 'vi'),
('B012', 4557, 'quanly1', 9, '', 'Cad điện thoại', 'cái', 'cad-dien-thoai', '300000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:41:20', 1, '', 0, 0, 0, 1658302880, 'vi');
INSERT INTO `bakcodt_product` (`Code`, `ID`, `Username`, `catID`, `brand`, `nameProduct`, `unitPrice`, `Alias`, `Price`, `GiaNhap`, `oldPrice`, `Summary`, `Content`, `UrlHinh`, `DateCreate`, `Number`, `Note`, `BuyTimes`, `Views`, `isShow`, `Serial`, `lang`) VALUES
('B013', 4558, 'quanly1', 9, '', 'Cad điện thoại', 'cái', 'cad-dien-thoai', '400000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:41:20', 1, '', 0, 0, 0, 1658302880, 'vi'),
('B014', 4559, 'quanly1', 9, '', 'Cad điện thoại', 'cái', 'cad-dien-thoai', '500000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:41:20', 1, '', 0, 0, 0, 1658302880, 'vi'),
('B015', 4560, 'quanly1', 9, '', 'Cad điện thoại', 'cái', 'cad-dien-thoai', '1000000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:41:20', 1, '', 0, 0, 0, 1658302880, 'vi'),
('CT ZX', 4226, 'quanly1', 8, '', 'Dầu gội lifeboy', 'Chai', 'dau-goi-lifeboy', '33000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CT100', 4260, 'quanly1', 8, '', 'Khăn ướt', 'Bịch', 'khan-uot', '18000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CT128', 4322, 'quanly1', 8, '', 'Sữa tươi có đường', 'Bịch', 'sua-tuoi-co-duong', '9000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CT32', 4244, 'quanly1', 8, '', 'Hạt bí', 'Gói', 'hat-bi', '33000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CT5Z', 4300, 'quanly1', 8, '', 'Nước yến', 'Lon', 'nuoc-yen', '11000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CT7Z', 4319, 'quanly1', 8, '', 'Sữa tắm lifebuoy  nhỏ', 'Chai', 'sua-tam-lifebuoy-nho', '60000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTA0', 4222, 'quanly1', 8, '', 'Dầu gội clear vòi', 'Chai', 'dau-goi-clear-voi', '160000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTA01', 4346, 'quanly1', 8, '', 'Dầu gội clear vòi', 'Chai', 'dau-goi-clear-voi', '170000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:49', 1, '', 0, 0, 0, 1658302789, 'vi'),
('CTAFC', 4188, 'quanly1', 8, '', 'Bánh AFC', 'Hộp', 'banh-afc', '26000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTAFC1', 4338, 'quanly1', 8, '', 'Bánh AFC', 'Hộp', 'banh-afc', '29000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTB16', 4204, 'quanly1', 8, '', 'Bông ráy tai', 'Bịch', 'bong-ray-tai', '1000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTB177', 4205, 'quanly1', 8, '', 'Bông tắm', 'Cái', 'bong-tam', '11000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTB18', 4207, 'quanly1', 8, '', 'Bột ngọt', 'Gói', 'bot-ngot', '8000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTB181', 4343, 'quanly1', 8, '', 'Bột ngọt', 'Gói', 'bot-ngot', '9000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:49', 1, '', 0, 0, 0, 1658302789, 'vi'),
('CTB9', 4194, 'quanly1', 8, '', 'Bánh hura', 'Cái', 'banh-hura', '2500.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTB98', 4197, 'quanly1', 8, '', 'Bao thư', 'Cái', 'bao-thu', '1000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTBANG', 4201, 'quanly1', 8, '', 'Băng Vs Diana', 'Gói', 'bang-vs-diana', '22000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTBANG1', 4198, 'quanly1', 8, '', 'Băng Diana hàng ngày lớn', 'Cục', 'bang-diana-hang-ngay-lon', '23000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTBCHAI2', 4187, 'quanly1', 8, '', 'Bàn chải đánh răng', 'Cái', 'ban-chai-danh-rang', '20000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTBF1', 4332, 'quanly1', 8, '', 'Viên sủi', 'Ống', 'vien-sui', '30000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTCHAN', 4186, 'quanly1', 8, '', 'Bàn chải chà chân', 'Cái', 'ban-chai-cha-chan', '6000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTCR5', 4218, 'quanly1', 8, '', 'Cháo gấu đỏ', 'Gói', 'chao-gau-do', '4000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTCZ', 4314, 'quanly1', 8, '', 'Sữa rữa mặt oxy', 'Chai', 'sua-rua-mat-oxy', '42000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTD15', 4219, 'quanly1', 8, '', 'Dao cạo râu', 'Cái', 'dao-cao-rau', '10000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTD39', 4229, 'quanly1', 8, '', 'Dầu gội rồ ma nồ', 'Chai', 'dau-goi-ro-ma-no', '59000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTD6', 4239, 'quanly1', 8, '', 'Dầu xả comfor + dwny', 'Gói', 'dau-xa-comfor-dwny', '2500.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTDGOI1', 4348, 'quanly1', 8, '', 'Dầu gội Xmen', 'Chai', 'dau-goi-xmen', '62000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:49', 1, '', 0, 0, 0, 1658302789, 'vi'),
('CTF0', 4240, 'quanly1', 8, '', 'Dầu xã comfor chai', 'Chai', 'dau-xa-comfor-chai', '72000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTFC1', 4342, 'quanly1', 8, '', 'Bơ tường an', 'Hộp', 'bo-tuong-an', '9000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTFR1', 4301, 'quanly1', 8, '', 'Nhang muỗi', 'Hộp', 'nhang-muoi', '8000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGS1', 4203, 'quanly1', 8, '', 'Bọc xốp', 'Kg', 'boc-xop', '0.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGS10', 4274, 'quanly1', 8, '', 'Miếng rửa chén', 'Miếng', 'mieng-rua-chen', '5000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGS11', 4283, 'quanly1', 8, '', 'Nước bò húc', 'Lon', 'nuoc-bo-huc', '14000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGS12', 4272, 'quanly1', 8, '', 'Mì lẩu thái', 'Gói', 'mi-lau-thai', '8000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGS13', 4326, 'quanly1', 8, '', 'Tập 200 trang', 'Cuốn', 'tap-200-trang', '13000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGS15', 4216, 'quanly1', 8, '', 'Cà phê việt', 'Hộp', 'ca-phe-viet', '66000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGS16', 4224, 'quanly1', 8, '', 'Dầu gội dove vòi', 'Chai', 'dau-goi-dove-voi', '140000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGS17', 4214, 'quanly1', 8, '', 'Cà phê G7', 'Hộp', 'ca-phe-g7', '60000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGS18', 4230, 'quanly1', 8, '', 'Dầu gội rồ ma nồ', 'Chai', 'dau-goi-ro-ma-no', '61000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGS19', 4223, 'quanly1', 8, '', 'Dầu gội dove trung', 'Chai', 'dau-goi-dove-trung', '97000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGS2', 4243, 'quanly1', 8, '', 'Giay vệ sinh an an', 'Cuộn', 'giay-ve-sinh-an-an', '8000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGS20', 4238, 'quanly1', 8, '', 'Dầu trường sơn', 'Chai', 'dau-truong-son', '31000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGS22', 4220, 'quanly1', 8, '', 'Dầu gội clear nhỏ', 'Chai', 'dau-goi-clear-nho', '64000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGS24', 4255, 'quanly1', 8, '', 'Kem que', 'Cây', 'kem-que', '7000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGS25', 4250, 'quanly1', 8, '', 'Kem dưỡng da pons', 'Hộp', 'kem-duong-da-pons', '83000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGS26', 4252, 'quanly1', 8, '', 'Kem ốc quế', 'Cây', 'kem-oc-que', '19000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGS27', 4315, 'quanly1', 8, '', 'Sữa rửa mặt pons', 'Tuýt', 'sua-rua-mat-pons', '40000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGS28', 4330, 'quanly1', 8, '', 'Trà bắc', 'Bịch', 'tra-bac', '17000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGS29', 4345, 'quanly1', 8, '', 'Cơm cháy', 'Bịch', 'com-chay', '30000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:49', 1, '', 0, 0, 0, 1658302789, 'vi'),
('CTGS4', 4268, 'quanly1', 8, '', 'Mắm chưng', 'Hộp', 'mam-chung', '33000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGS6', 4320, 'quanly1', 8, '', 'Sữa tắm lifebuoy trung', 'Chai', 'sua-tam-lifebuoy-trung', '66000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGS7', 4327, 'quanly1', 8, '', 'Tô có nắp', 'Cái', 'to-co-nap', '29000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGS8', 4324, 'quanly1', 8, '', 'Tả giấy', 'Bịch', 'ta-giay', '119000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGS9', 4232, 'quanly1', 8, '', 'Dầu gội sunsilk trung', 'Chai', 'dau-goi-sunsilk-trung', '83000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGS91', 4347, 'quanly1', 8, '', 'Dầu gội sunsilk trung', 'Chai', 'dau-goi-sunsilk-trung', '88000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:49', 1, '', 0, 0, 0, 1658302789, 'vi'),
('CTGZ10', 4279, 'quanly1', 8, '', 'Muỗi nhựa', 'Cái', 'muoi-nhua', '3000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ102', 4234, 'quanly1', 8, '', 'Dầu gió thái', 'Chai', 'dau-gio-thai', '33000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ109', 4191, 'quanly1', 8, '', 'Bánh custas', 'Hộp', 'banh-custas', '35000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ110', 4237, 'quanly1', 8, '', 'Dầu thái lăng', 'Chai', 'dau-thai-lang', '41000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ111', 4275, 'quanly1', 8, '', 'Miếng rửa chén sắt', 'Miếng', 'mieng-rua-chen-sat', '4000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ112', 4235, 'quanly1', 8, '', 'Dầu phật linh', 'Chai', 'dau-phat-linh', '20000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ114', 4192, 'quanly1', 8, '', 'Bánh cho cobay', 'Hộp', 'banh-cho-cobay', '33000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ12', 4286, 'quanly1', 8, '', 'Nước coca', 'Lon', 'nuoc-coca', '10000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ122', 4271, 'quanly1', 8, '', 'Mì kokomi', 'Gói', 'mi-kokomi', '4500.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ123', 4352, 'quanly1', 8, '', 'Mì kokomi', 'Gói', 'mi-kokomi', '5000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:49', 1, '', 0, 0, 0, 1658302789, 'vi'),
('CTGZ125', 4213, 'quanly1', 8, '', 'Cà phê bột', 'Kg', 'ca-phe-bot', '75000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ1251', 4344, 'quanly1', 8, '', 'Cà phê bột', 'Kg', 'ca-phe-bot', '79000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:49', 1, '', 0, 0, 0, 1658302789, 'vi'),
('CTGZ126', 4231, 'quanly1', 8, '', 'Dầu gội súnilk', 'chai', 'dau-goi-sunilk', '44000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ127', 4308, 'quanly1', 8, '', 'Sữa đặc', 'lon', 'sua-dac', '24000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ128', 4211, 'quanly1', 8, '', 'Cà fe việt', 'Hộp', 'ca-fe-viet', '66000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ129', 4210, 'quanly1', 8, '', 'Ca 1,2 lít', 'Cái', 'ca-1-2-lit', '13000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ13', 4289, 'quanly1', 8, '', 'Nước Mirinda', 'Lon', 'nuoc-mirinda', '10000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ130', 4221, 'quanly1', 8, '', 'Dầu gội Clear trung', 'Chai', 'dau-goi-clear-trung', '105000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ131', 4241, 'quanly1', 8, '', 'Dép kẹp', 'Đôi', 'dep-kep', '35000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ132', 4249, 'quanly1', 8, '', 'Kem closep ', 'Hộp', 'kem-closep', '30000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ133', 4253, 'quanly1', 8, '', 'Kem p/s', 'Hộp', 'kem-ps', '20000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ134', 4293, 'quanly1', 8, '', 'Nước rửa chén', 'Chai', 'nuoc-rua-chen', '15000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ135', 4311, 'quanly1', 8, '', 'Sữa rủa mặt ôxy', 'Tuýt', 'sua-rua-mat-oxy', '44000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ136', 4312, 'quanly1', 8, '', 'Sữa rủa mặt PON', 'Tuýt', 'sua-rua-mat-pon', '41000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ137', 4316, 'quanly1', 8, '', 'Sữa tắm Dove vòi', 'Chai', 'sua-tam-dove-voi', '140000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ138', 4331, 'quanly1', 8, '', 'Trà lipton', 'Hộp', 'tra-lipton', '41000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ139', 4336, 'quanly1', 8, '', 'Xà bông ô mô', 'Gói', 'xa-bong-o-mo', '21000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ14', 4292, 'quanly1', 8, '', 'Nước pepsi ', 'Lon', 'nuoc-pepsi', '10000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ141', 4262, 'quanly1', 8, '', 'Khô mực sữa', 'Gói', 'kho-muc-sua', '39000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ15', 4291, 'quanly1', 8, '', 'Nước ô long', 'Chai', 'nuoc-o-long', '10000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ16', 4294, 'quanly1', 8, '', 'Nước rửa vệ sinh dạ hương', 'Chai', 'nuoc-rua-ve-sinh-da-huong', '34000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ29', 4202, 'quanly1', 8, '', 'Bò hai lát', 'Hộp', 'bo-hai-lat', '36000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ32', 4196, 'quanly1', 8, '', 'Bánh ti po trứng', 'Hộp', 'banh-ti-po-trung', '35000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ35', 4287, 'quanly1', 8, '', 'Nước gạo', 'Chai', 'nuoc-gao', '10000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ36', 4290, 'quanly1', 8, '', 'Nước mumber one', 'Chai', 'nuoc-mumber-one', '10000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ37', 4295, 'quanly1', 8, '', 'Nước sting', 'Chai', 'nuoc-sting', '10000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ38', 4298, 'quanly1', 8, '', 'Nước trà xanh không độ', 'Chai', 'nuoc-tra-xanh-khong-do', '10000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ4', 4212, 'quanly1', 8, '', 'Cá hộp', 'Hộp', 'ca-hop', '15000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ40', 4246, 'quanly1', 8, '', 'Heo hầm', 'Hộp', 'heo-ham', '36000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ41', 4266, 'quanly1', 8, '', 'Lăng ngựa', 'Chai', 'lang-ngua', '50000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ45', 4270, 'quanly1', 8, '', 'Mì hảo hảo', 'Gói', 'mi-hao-hao', '4500.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ47', 4337, 'quanly1', 8, '', 'Xúc xích', 'Cây', 'xuc-xich', '5000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ49', 4206, 'quanly1', 8, '', 'Bột nêm', 'Gói', 'bot-nem', '19000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ5', 4225, 'quanly1', 8, '', 'Dầu gội liboy', 'Chai', 'dau-goi-liboy', '35000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ50', 4209, 'quanly1', 8, '', 'Bơ tường an', 'Hộp', 'bo-tuong-an', '10000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ51', 4329, 'quanly1', 8, '', 'Trà bảo tín', 'Gói', 'tra-bao-tin', '11000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ52', 4200, 'quanly1', 8, '', 'Băng vệ sinh hàng ngày', 'Bịch', 'bang-ve-sinh-hang-ngay', '8000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ55', 4251, 'quanly1', 8, '', 'Kem ốc', 'Cây', 'kem-oc', '13000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ56', 4307, 'quanly1', 8, '', 'Sữa chua', 'Cây', 'sua-chua', '6000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ58', 4190, 'quanly1', 8, '', 'Bánh bạc', 'Gói', 'banh-bac', '11000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ60', 4242, 'quanly1', 8, '', 'Đường cát', 'Kg', 'duong-cat', '26000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ63', 4259, 'quanly1', 8, '', 'Khăn thổ cẩm', 'Cái', 'khan-tho-cam', '30000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ64', 4263, 'quanly1', 8, '', 'La hán quả', 'Hộp', 'la-han-qua', '33000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ65', 4288, 'quanly1', 8, '', 'Nước mắm nam ngư', 'Chai', 'nuoc-mam-nam-ngu', '33000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ66', 4353, 'quanly1', 8, '', 'Nước mắm nam ngư', 'Chai', 'nuoc-mam-nam-ngu', '35000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:49', 1, '', 0, 0, 0, 1658302789, 'vi'),
('CTGZ68', 4276, 'quanly1', 8, '', 'Móc đen', 'Cái', 'moc-den', '4000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ69', 4277, 'quanly1', 8, '', 'Muối bột canh', 'Gói', 'muoi-bot-canh', '6000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ70', 4281, 'quanly1', 8, '', 'Nước 7up', 'Lon', 'nuoc-7up', '10000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ71', 4350, 'quanly1', 8, '', 'Kem đánh răng clouse up', 'Hộp', 'kem-danh-rang-clouse-up', '31000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:49', 1, '', 0, 0, 0, 1658302789, 'vi'),
('CTGZ72', 4285, 'quanly1', 8, '', 'Nước C2', 'Chai', 'nuoc-c2', '10000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ76', 4208, 'quanly1', 8, '', 'Bột ngũ cốc', 'Gói', 'bot-ngu-coc', '64000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ78', 4339, 'quanly1', 8, '', 'Bánh AKIKO', 'Gói', 'banh-akiko', '26000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ8', 4258, 'quanly1', 8, '', 'Kẹo đậu hội giang', 'Gói', 'keo-dau-hoi-giang', '22000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ87', 4351, 'quanly1', 8, '', 'Mì hảo hảo', 'Gói', 'mi-hao-hao', '5000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:49', 1, '', 0, 0, 0, 1658302789, 'vi'),
('CTGZ88', 4340, 'quanly1', 8, '', 'Bánh chocopai', 'Bịch', 'banh-chocopai', '24000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ92', 4217, 'quanly1', 8, '', 'Chao bông mai', 'Hủ', 'chao-bong-mai', '15000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ95', 4333, 'quanly1', 8, '', 'Viết bi', 'Cái', 'viet-bi', '4000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTGZ99', 4318, 'quanly1', 8, '', 'Sữa tắm lifebuoy ', 'Chai', 'sua-tam-lifebuoy', '155000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTHDD', 4245, 'quanly1', 8, '', 'Hạt hướng dương', 'Gói', 'hat-huong-duong', '20000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTHF', 4280, 'quanly1', 8, '', 'Muỗng nhựa', 'Cái', 'muong-nhua', '3000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTHTIEU', 4247, 'quanly1', 8, '', 'Hủ tiếu các loại', 'Gói', 'hu-tieu-cac-loai', '8000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTHTIEU1', 4349, 'quanly1', 8, '', 'Hủ tiếu các loại', 'Gói', 'hu-tieu-cac-loai', '9000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:49', 1, '', 0, 0, 0, 1658302789, 'vi'),
('CTHZ', 4195, 'quanly1', 8, '', 'Bánh lột da tân hưng', 'Gói', 'banh-lot-da-tan-hung', '53000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTI0', 4265, 'quanly1', 8, '', 'Lăn nivia', 'Chai', 'lan-nivia', '44000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTK17', 4256, 'quanly1', 8, '', 'Kem sâm', 'Hủ', 'kem-sam', '15000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTKCF', 4257, 'quanly1', 8, '', 'Kẹo cà phê', 'Gói', 'keo-ca-phe', '18000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTKHOGA', 4261, 'quanly1', 8, '', 'Khô bò + khô gà', 'Bịch', 'kho-bo-kho-ga', '30000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTKO5', 4189, 'quanly1', 8, '', 'Bánh aki ko', 'Gói', 'banh-aki-ko', '24000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTKQ', 4254, 'quanly1', 8, '', 'Kem que', 'Cây', 'kem-que', '6000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTL00', 4306, 'quanly1', 8, '', 'Salonpas', 'Hộp', 'salonpas', '35000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTL6', 4267, 'quanly1', 8, '', 'Lược chải đầu', 'Cái', 'luoc-chai-dau', '6000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTLUX', 4321, 'quanly1', 8, '', 'Sữa tắm Lux', 'Chai', 'sua-tam-lux', '42000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTM0', 4233, 'quanly1', 8, '', 'Dầu gội x-men', 'Chai', 'dau-goi-xmen', '59000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTMIEN1', 4273, 'quanly1', 8, '', 'Miến phú hương', 'Gói', 'mien-phu-huong', '11000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTMUOI', 4278, 'quanly1', 8, '', 'Muối I ốt', 'Kg', 'muoi-i-ot', '6000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTN7', 4297, 'quanly1', 8, '', 'Nước trà Ô long', 'Chai', 'nuoc-tra-o-long', '10000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTNB0', 4282, 'quanly1', 8, '', 'Nước bí đao', 'Chai', 'nuoc-bi-dao', '8000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTNC22', 4284, 'quanly1', 8, '', 'Nước C2', 'Chai', 'nuoc-c2', '8000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTNTUONG', 4296, 'quanly1', 8, '', 'Nước tương', 'Chai', 'nuoc-tuong', '9000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTNUTI', 4310, 'quanly1', 8, '', 'Sữa nuti', 'Hộp', 'sua-nuti', '10000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTNXAXI1', 4299, 'quanly1', 8, '', 'Nước xá xị', 'Lon', 'nuoc-xa-xi', '8000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTPCL', 4355, 'quanly1', 8, '', 'Phở các loại', 'Gói', 'pho-cac-loai', '8000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:49', 1, '', 0, 0, 0, 1658302789, 'vi'),
('CTPHE1', 4215, 'quanly1', 8, '', 'Cà phê phố', 'Hộp', 'ca-phe-pho', '46000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTPTE9', 4302, 'quanly1', 8, '', 'Patê gan', 'Hộp', 'pate-gan', '29000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTPZ', 4199, 'quanly1', 8, '', 'Băng vệ sinh Diana', 'Gói', 'bang-ve-sinh-diana', '24000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTQ', 4305, 'quanly1', 8, '', 'Quần lót nam', 'Cái', 'quan-lot-nam', '22000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTRF', 4264, 'quanly1', 8, '', 'Lăn  xmen', 'Chai', 'lan-xmen', '66000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTRM', 4313, 'quanly1', 8, '', 'Sữa rửa mặt Hazeline', 'Tuýt', 'sua-rua-mat-hazeline', '27000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTS10', 4309, 'quanly1', 8, '', 'Sữa fami', 'Hộp', 'sua-fami', '5500.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTSS1', 4323, 'quanly1', 8, '', 'Sườn nấm đậu', 'Hộp', 'suon-nam-dau', '33000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTSTAM', 4317, 'quanly1', 8, '', 'Sữa tắm Enchenter', 'Chai', 'sua-tam-enchenter', '55000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTT0', 4236, 'quanly1', 8, '', 'Dầu thái', 'Chai', 'dau-thai', '33000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTT1', 4325, 'quanly1', 8, '', 'Tăm xỉa răng', 'Bịch', 'tam-xia-rang', '1000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTT101', 4328, 'quanly1', 8, '', 'Tương ớt', 'Chai', 'tuong-ot', '14000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTTIPO', 4341, 'quanly1', 8, '', 'Bánh Tipo trứng', 'Hộp', 'banh-tipo-trung', '37000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTVS3', 4354, 'quanly1', 8, '', 'Nước rửa vệ sinh dạ hương', 'Chai', 'nuoc-rua-ve-sinh-da-huong', '35000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:49', 1, '', 0, 0, 0, 1658302789, 'vi'),
('CTXBONG1', 4335, 'quanly1', 8, '', 'Xà bông lìfebuoy cục', 'Cục', 'xa-bong-lifebuoy-cuc', '14000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTZ122', 4228, 'quanly1', 8, '', 'Dầu gội pentine vòi', 'Chai', 'dau-goi-pentine-voi', '140000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTZ131', 4304, 'quanly1', 8, '', 'Phở đệ nhất', 'Gói', 'pho-de-nhat', '8000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTZ132', 4303, 'quanly1', 8, '', 'Patê gan', 'Hộp', 'pate-gan', '30000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTZ134', 4193, 'quanly1', 8, '', 'Bánh gạo', 'Gói', 'banh-gao', '26000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTZ60', 4334, 'quanly1', 8, '', 'Vim lau nhà', 'Chai', 'vim-lau-nha', '33000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTZ64', 4227, 'quanly1', 8, '', 'Dầu gội pentin trung', 'Chai', 'dau-goi-pentin-trung', '94000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 1, 0, 1658302788, 'vi'),
('CTZ99', 4248, 'quanly1', 8, '', 'Kem 2X nhỏ', 'Hộp', 'kem-2x-nho', '50000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi'),
('CTZE', 4269, 'quanly1', 8, '', 'Me đá nhỏ', 'Hộp', 'me-da-nho', '44000.0000', '0.0000', '0.0000', '', '', '', '2022-07-20 14:39:48', 1, '', 0, 0, 0, 1658302788, 'vi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bakcodt_tinhthanh`
--

CREATE TABLE `bakcodt_tinhthanh` (
  `Id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Parents` int(11) NOT NULL,
  `isActive` int(11) NOT NULL,
  `Note` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bakcodt_tinhthanh`
--

INSERT INTO `bakcodt_tinhthanh` (`Id`, `Name`, `Parents`, `isActive`, `Note`) VALUES
(1, 'Hà Nội', 0, 0, ''),
(2, 'Ba Đình', 1, 0, ''),
(3, 'Ba Vì', 1, 0, ''),
(4, 'Bắc Từ Liêm', 1, 0, ''),
(5, 'Cầu Giấy', 1, 0, ''),
(6, 'Chương Mỹ', 1, 0, ''),
(7, 'Đan Phượng', 1, 0, ''),
(8, 'Đông Anh', 1, 0, ''),
(9, 'Đống Đa', 1, 0, ''),
(10, 'Gia Lâm', 1, 0, ''),
(11, 'Hà Đông', 1, 0, ''),
(12, 'Hai Bà Trưng', 1, 0, ''),
(13, 'Hoài Đức', 1, 0, ''),
(14, 'Hoàn Kiếm', 1, 0, ''),
(15, 'Hoàng Mai', 1, 0, ''),
(16, 'Long Biên', 1, 0, ''),
(17, 'Mê Linh', 1, 0, ''),
(18, 'Mỹ Đức', 1, 0, ''),
(19, 'Nam Từ Liêm', 1, 0, ''),
(20, 'Phú Xuyên', 1, 0, ''),
(21, 'Phúc Thọ', 1, 0, ''),
(22, 'Quốc Oai', 1, 0, ''),
(23, 'Sóc Sơn', 1, 0, ''),
(24, 'Tây Hồ', 1, 0, ''),
(25, 'Thạch Thất', 1, 0, ''),
(26, 'Thanh Oai', 1, 0, ''),
(27, 'Thanh Trì', 1, 0, ''),
(28, 'Thanh Xuân', 1, 0, ''),
(29, 'Thị xã Sơn Tây', 1, 0, ''),
(30, 'Thường Tín', 1, 0, ''),
(31, 'Ứng Hòa', 1, 0, ''),
(32, 'Hồ Chí Minh', 0, 1, ''),
(33, 'Bình Tân', 32, 1, ''),
(34, 'Bình Thạnh', 32, 1, ''),
(35, 'Củ Chi', 32, 1, ''),
(36, 'Gò Vấp', 32, 1, ''),
(37, 'Hóc Môn', 32, 1, ''),
(38, 'Huyện Bình Chánh', 32, 1, ''),
(39, 'Huyện Cần Giờ', 32, 1, ''),
(40, 'Huyện Nhà Bè', 32, 1, ''),
(41, 'Phú Nhuận', 32, 1, ''),
(42, 'Quận 1', 32, 1, ''),
(43, 'Quận 10', 32, 1, ''),
(44, 'Quận 11', 32, 1, ''),
(45, 'Quận 12', 32, 1, ''),
(46, 'Quận 2', 32, 1, ''),
(47, 'Quận 3', 32, 1, ''),
(48, 'Quận 4', 32, 1, ''),
(49, 'Quận 5', 32, 1, ''),
(50, 'Quận 6', 32, 1, ''),
(51, 'Quận 7', 32, 1, ''),
(52, 'Quận 8', 32, 1, ''),
(53, 'Quận 9', 32, 1, ''),
(54, 'Tân Bình', 32, 1, ''),
(55, 'Tân Phú', 32, 1, ''),
(56, 'Thủ Đức', 32, 1, ''),
(57, 'Đà Nẵng', 0, 0, ''),
(58, 'Huyện Hòa Vang', 57, 0, ''),
(59, 'Huyện đảo Hoàng Sa', 57, 0, ''),
(60, 'Quận Cẩm Lệ', 57, 0, ''),
(61, 'Quận Hải Châu', 57, 0, ''),
(62, 'Quận Liên Chiểu', 57, 0, ''),
(63, 'Quận Ngũ Hành Sơn', 57, 0, ''),
(64, 'Quận Sơn Trà', 57, 0, ''),
(65, 'Quận Thanh Khê', 57, 0, ''),
(66, 'An Gian', 0, 0, ''),
(67, 'Huyện An Phú', 66, 0, ''),
(68, 'Huyện Châu Phú', 66, 0, ''),
(69, 'Huyện Châu Thành', 66, 0, ''),
(70, 'Huyện Chợ Mới', 66, 0, ''),
(71, 'Huyện Thoại Sơn', 66, 0, ''),
(72, 'Huyện Tịnh Biên', 66, 0, ''),
(73, 'Huyện Tri Tôn', 66, 0, ''),
(74, 'Phú Tân', 66, 0, ''),
(75, 'Thành Phố Châu Đốc', 66, 0, ''),
(76, 'Thành phố Long Xuyên', 66, 0, ''),
(77, 'Thị xã Tân Châu', 66, 0, ''),
(78, 'Vũng Tàu', 0, 0, ''),
(79, 'Huyện Châu Đức', 78, 0, ''),
(80, 'Huyện Côn Đảo', 78, 0, ''),
(81, 'Huyện Đất Đỏ', 78, 0, ''),
(82, 'Huyện Long Điền', 78, 0, ''),
(83, 'Huyện Tân Thành', 78, 0, ''),
(84, 'Huyện Xuyên Mộc', 78, 0, ''),
(85, 'Thành phố Vũng Tàu', 78, 0, ''),
(86, 'Thị xã Bà Rịa', 78, 0, ''),
(87, 'Bắc Cạn', 0, 0, ''),
(88, 'Huyện Ba Bể', 87, 0, ''),
(89, 'Huyện Bạch Thông', 87, 0, ''),
(90, 'Huyện Chợ Đồn', 87, 0, ''),
(91, 'Huyện Chợ Mới', 87, 0, ''),
(92, 'Huyện Na Rì', 87, 0, ''),
(93, 'Huyện Ngân Sơn', 87, 0, ''),
(94, 'Huyện Pác Nặm', 87, 0, ''),
(95, 'Thị xã Bắc Kạn', 87, 0, ''),
(96, 'Bắc Giang', 0, 0, ''),
(97, 'Huyện Hiệp Hòa', 96, 0, ''),
(98, 'Huyện Lạng Giang', 96, 0, ''),
(99, 'Huyện Lục Nam', 96, 0, ''),
(100, 'Huyện Lục Ngạn', 96, 0, ''),
(101, 'Huyện Sơn Động', 96, 0, ''),
(102, 'Huyện Tân Yên', 96, 0, ''),
(103, 'Huyện Việt Yên', 96, 0, ''),
(104, 'Huyện Yên Dũng', 96, 0, ''),
(105, 'Huyện Yên Thế', 96, 0, ''),
(106, 'Thành phố Bắc Giang', 96, 0, ''),
(107, 'Bạc Liêu', 0, 0, ''),
(108, 'Huyện Đông Hải', 107, 0, ''),
(109, 'Huyện Giá Rai', 107, 0, ''),
(110, 'Huyện Hoà Bình', 107, 0, ''),
(111, 'Huyện Hồng Dân', 107, 0, ''),
(112, 'Huyện Phước Long', 107, 0, ''),
(113, 'Huyện Vĩnh Lợi', 107, 0, ''),
(114, 'Thành phố Bạc Liêu', 107, 0, ''),
(115, 'Bắc Ninh', 0, 0, ''),
(116, 'Huyện Gia Bình', 115, 0, ''),
(117, 'Huyện Lương Tài', 115, 0, ''),
(118, 'Huyện Quế Võ', 115, 0, ''),
(119, 'Huyện Thuận Thành', 115, 0, ''),
(120, 'Huyện Tiên Du', 115, 0, ''),
(121, 'Huyện Yên Phong', 115, 0, ''),
(122, 'Thành phố Bắc Ninh', 115, 0, ''),
(123, 'Thị xã Từ Sơn', 115, 0, ''),
(124, 'Bến Tre', 0, 0, ''),
(125, 'Huyện Ba Tri', 124, 0, ''),
(126, 'Huyện Bình Đại', 124, 0, ''),
(127, 'Huyện Châu Thành', 124, 0, ''),
(128, 'Huyện Chợ Lách', 124, 0, ''),
(129, 'Huyện Giồng Trôm', 124, 0, ''),
(130, 'Huyện Mỏ Cày Bắc', 124, 0, ''),
(131, 'Huyện Mỏ Cày Nam', 124, 0, ''),
(132, 'Huyện Thạnh Phú', 124, 0, ''),
(133, 'Thành phố Bến Tre', 124, 0, ''),
(134, 'Bình Định', 0, 0, ''),
(135, 'Huyện An Lão', 134, 0, ''),
(136, 'Huyện An Nhơn', 134, 0, ''),
(137, 'Huyện Hoài Ân', 134, 0, ''),
(138, 'Huyện Hoài Nhơn', 134, 0, ''),
(139, 'Huyện Phù Cát', 134, 0, ''),
(140, 'Huyện Phù Mỹ', 134, 0, ''),
(141, 'Huyện Tây Sơn', 134, 0, ''),
(142, 'Huyện Tuy Phước', 134, 0, ''),
(143, 'Huyện Vân Canh', 134, 0, ''),
(144, 'Huyện Vĩnh Thạnh', 134, 0, ''),
(145, 'Thành phố Qui Nhơn', 134, 0, ''),
(146, 'Bình Dương', 0, 0, ''),
(147, 'Huyện Bắc Tân Uyên', 146, 0, ''),
(148, 'Huyện Bàu Bàng', 146, 0, ''),
(149, 'Huyện Dầu Tiếng', 146, 0, ''),
(150, 'Huyện Phú Giáo', 146, 0, ''),
(151, 'Thành phố Thủ Dầu Một', 146, 0, ''),
(152, 'Thị xã Bến Cát', 146, 0, ''),
(153, 'Thị xã Dĩ An', 146, 0, ''),
(154, 'Thị xã Tân Uyên', 146, 0, ''),
(155, 'Thị xã Thuận An', 146, 0, ''),
(156, 'Bình Phước', 0, 0, ''),
(157, 'Huyện Bù Đăng', 156, 0, ''),
(158, 'Huyện Bù Đốp', 156, 0, ''),
(159, 'Huyện Bù Gia Mập', 156, 0, ''),
(160, 'Huyện Chơn Thành', 156, 0, ''),
(161, 'Huyện Đồng Phú', 156, 0, ''),
(162, 'Huyện Hớn Quản', 156, 0, ''),
(163, 'Huyện Lộc Ninh', 156, 0, ''),
(164, 'Huyện Phú Riềng', 156, 0, ''),
(165, 'Thị xã Bình Long', 156, 0, ''),
(166, 'Thị xã Đồng Xoài', 156, 0, ''),
(167, 'Thị xã Phước Long', 156, 0, ''),
(168, 'Bình Thuận', 0, 0, ''),
(169, 'Huyện Bắc Bình', 168, 0, ''),
(170, 'Huyện Đức Linh', 168, 0, ''),
(171, 'Huyện Hàm Tân', 168, 0, ''),
(172, 'Huyện Hàm Thuận Bắc', 168, 0, ''),
(173, 'Huyện Hàm Thuận Nam', 168, 0, ''),
(174, 'Huyện Tánh Linh', 168, 0, ''),
(175, 'Huyện Tuy Phong', 168, 0, ''),
(176, 'Huyện đảo Phú Quý', 168, 0, ''),
(177, 'Thành phố Phan Thiết', 168, 0, ''),
(178, 'Thị xã La Gi', 168, 0, ''),
(179, 'Cà Mau', 0, 0, ''),
(180, 'Huyện Cái Nước', 179, 0, ''),
(181, 'Huyện Đầm Dơi', 179, 0, ''),
(182, 'Huyện Năm Căn', 179, 0, ''),
(183, 'Huyện Ngọc Hiển', 179, 0, ''),
(184, 'Huyện Phú Tân', 179, 0, ''),
(185, 'Huyện Thới Bình', 179, 0, ''),
(186, 'Huyện Trần Văn Thời', 179, 0, ''),
(187, 'Huyện U Minh', 179, 0, ''),
(188, 'Thành phố Cà Mau', 179, 0, ''),
(189, 'Cần Thơ', 0, 0, ''),
(190, 'Huyện Cờ Đỏ', 189, 0, ''),
(191, 'Huyện Phong Điền', 189, 0, ''),
(192, 'Huyện Thới Lai', 189, 0, ''),
(193, 'Huyện Vĩnh Thạnh', 189, 0, ''),
(194, 'Quận Bình Thủy', 189, 0, ''),
(195, 'Quận Cái Răng', 189, 0, ''),
(196, 'Quận Ninh Kiều', 189, 0, ''),
(197, 'Quận Ô Môn', 189, 0, ''),
(198, 'Quận Thốt Nốt', 189, 0, ''),
(199, 'Cao Bằng', 0, 0, ''),
(200, 'Huyện Bảo Lạc', 199, 0, ''),
(201, 'Huyện Bảo Lâm', 199, 0, ''),
(202, 'Huyện Hạ Lang', 199, 0, ''),
(203, 'Huyện Hà Quảng', 199, 0, ''),
(204, 'Huyện Hòa An', 199, 0, ''),
(205, 'Huyện Nguyên Bình', 199, 0, ''),
(206, 'Huyện Phục Hòa', 199, 0, ''),
(207, 'Huyện Quảng Uyên', 199, 0, ''),
(208, 'Huyện Thạch An', 199, 0, ''),
(209, 'Huyện Thông Nông', 199, 0, ''),
(210, 'Huyện Trà Lĩnh', 199, 0, ''),
(211, 'Huyện Trùng Khánh', 199, 0, ''),
(212, 'Thị xã Cao Bằng', 199, 0, ''),
(213, 'Đắc Lắc', 0, 0, ''),
(214, 'Huyện Buôn Đôn', 213, 0, ''),
(215, 'Huyện Cư Kuin', 213, 0, ''),
(216, 'Huyện Cư Mgar', 213, 0, ''),
(218, 'Huyện Ea Kar', 213, 0, ''),
(219, 'Huyện Ea Súp', 213, 0, ''),
(220, 'Huyện Krông Ana', 213, 0, ''),
(221, 'Huyện Krông Bông', 213, 0, ''),
(222, 'Huyện Krông Búk', 213, 0, ''),
(223, 'Huyện Krông Năng', 213, 0, ''),
(224, 'Huyện Krông Pắk', 213, 0, ''),
(225, 'Huyện Lăk', 213, 0, ''),
(227, 'Thành phố Buôn Ma Thuột', 213, 0, ''),
(228, 'Thị xã Buôn Hồ', 213, 0, ''),
(229, 'Đắc Nông', 0, 0, ''),
(230, 'Huyện Cư Jút', 229, 0, ''),
(231, 'Huyện Đăk Glong', 229, 0, ''),
(232, 'Huyện Đăk Mil', 229, 0, ''),
(234, 'Huyện Đăk Song', 229, 0, ''),
(235, 'Huyện Krông Nô', 229, 0, ''),
(236, 'Huyện Tuy Đức', 229, 0, ''),
(237, 'Thị xã Gia Nghĩa', 229, 0, ''),
(238, 'Điện Biên', 0, 0, ''),
(239, 'Huyện Điện Biên', 238, 0, ''),
(240, 'Huyện Điện Biên Đông', 238, 0, ''),
(241, 'Huyện Mường Ảng', 238, 0, ''),
(242, 'Huyện Mường Chà', 238, 0, ''),
(243, 'Huyện Mường Nhé', 238, 0, ''),
(244, 'Huyện Nậm Pồ', 238, 0, ''),
(245, 'Huyện Tủa Chùa', 238, 0, ''),
(246, 'Huyện Tuần Giáo', 238, 0, ''),
(247, 'Thành phố Điện Biên Phủ', 238, 0, ''),
(248, 'Thị xã Mường Lay', 238, 0, ''),
(249, 'Đồng Nai', 0, 0, ''),
(250, 'Huyện Cẩm Mỹ', 249, 0, ''),
(251, 'Huyện Định Quán', 249, 0, ''),
(252, 'Huyện Long Thành', 249, 0, ''),
(253, 'Huyện Nhơn Trạch', 249, 0, ''),
(254, 'Huyện Tân Phú', 249, 0, ''),
(255, 'Huyện Thống Nhất', 249, 0, ''),
(256, 'Huyện Trảng Bom', 249, 0, ''),
(257, 'Huyện Vĩnh Cửu', 249, 0, ''),
(258, 'Huyện Xuân Lộc', 249, 0, ''),
(259, 'Thành phố Biên Hòa', 249, 0, ''),
(260, 'Thị xã Long Khánh', 249, 0, ''),
(261, 'Đồng Tháp', 0, 0, ''),
(262, 'Huyện Cao Lãnh', 261, 0, ''),
(263, 'Huyện Châu Thành', 261, 0, ''),
(264, 'Huyện Hồng Ngự', 261, 0, ''),
(265, 'Huyện Lai Vung', 261, 0, ''),
(266, 'Huyện Lấp Vò', 261, 0, ''),
(267, 'Huyện Tam Nông', 261, 0, ''),
(268, 'Huyện Tân Hồng', 261, 0, ''),
(269, 'Huyện Thanh Bình', 261, 0, ''),
(270, 'Huyện Tháp Mười', 261, 0, ''),
(271, 'Thành phố Cao Lãnh', 261, 0, ''),
(272, 'Thị xã Hồng Ngự', 261, 0, ''),
(273, 'Thị xã Sa Đéc', 261, 0, ''),
(274, 'Gia Lai', 0, 0, ''),
(275, 'Huyện Chư Păh', 274, 0, ''),
(276, 'Huyện Chư Prông', 274, 0, ''),
(277, 'Huyện Chư Pưh', 274, 0, ''),
(278, 'Huyện Chư Sê', 274, 0, ''),
(279, 'Huyện Đăk Đoa', 274, 0, ''),
(280, 'Huyện Đắk Pơ', 274, 0, ''),
(281, 'Huyện Đức Cơ', 274, 0, ''),
(282, 'Huyện Ia Grai', 274, 0, ''),
(283, 'Huyện Ia Pa', 274, 0, ''),
(284, 'Huyện Kbang', 274, 0, ''),
(285, 'Huyện Kông Chro', 274, 0, ''),
(286, 'Huyện Krông Pa', 274, 0, ''),
(287, 'Huyện Mang Yang', 274, 0, ''),
(288, 'Huyện Phú Thiện', 274, 0, ''),
(289, 'Thành phố Pleiku', 274, 0, ''),
(290, 'Thị xã An Khê', 274, 0, ''),
(291, 'Thị xã Ayun Pa', 274, 0, ''),
(292, 'Hà Giang', 0, 0, ''),
(293, 'Huyện Bắc Mê', 292, 0, ''),
(294, 'Huyện Bắc Quang', 292, 0, ''),
(295, 'Huyện Đồng Văn', 292, 0, ''),
(296, 'Huyện Hoàng Su Phì', 292, 0, ''),
(297, 'Huyện Mèo Vạc', 292, 0, ''),
(298, 'Huyện Quản Bạ', 292, 0, ''),
(299, 'Huyện Quang Bình', 292, 0, ''),
(300, 'Huyện Vị Xuyên', 292, 0, ''),
(301, 'Huyện Xín Mần', 292, 0, ''),
(302, 'Huyện Yên Minh', 292, 0, ''),
(303, 'Thành phố Hà Giang', 292, 0, ''),
(304, 'Hà Nam', 0, 0, ''),
(305, 'Huyện Bình Lục', 304, 0, ''),
(306, 'Huyện Duy Tiên', 304, 0, ''),
(307, 'Huyện Kim Bảng', 304, 0, ''),
(308, 'Huyện Lý Nhân', 304, 0, ''),
(309, 'Huyện Thanh Liêm', 304, 0, ''),
(310, 'Thành phố Phủ Lý', 304, 0, ''),
(311, 'Hà Tĩnh', 0, 0, ''),
(312, 'Huyện Cẩm Xuyên', 311, 0, ''),
(313, 'Huyện Can Lộc', 311, 0, ''),
(314, 'Huyện Đức Thọ', 311, 0, ''),
(315, 'Huyện Hương Khê', 311, 0, ''),
(316, 'Huyện Hương Sơn', 311, 0, ''),
(317, 'Huyện Kỳ Anh', 311, 0, ''),
(318, 'Huyện Lộc Hà', 311, 0, ''),
(319, 'Huyện Nghi Xuân', 311, 0, ''),
(320, 'Huyện Thạch Hà', 311, 0, ''),
(321, 'Huyện Vũ Quang', 311, 0, ''),
(322, 'Thành phố Hà Tĩnh', 311, 0, ''),
(323, 'Thị xã Hồng Lĩnh', 311, 0, ''),
(324, 'Thị xã Kỳ Anh', 311, 0, ''),
(325, 'Hải Dương', 0, 0, ''),
(326, 'Huyện Bình Giang', 325, 0, ''),
(327, 'Huyện Cẩm Giàng', 325, 0, ''),
(328, 'Huyện Gia Lộc', 325, 0, ''),
(329, 'Huyện Kim Thành', 325, 0, ''),
(330, 'Huyện Kinh Môn', 325, 0, ''),
(331, 'Huyện Nam Sách', 325, 0, ''),
(332, 'Huyện Ninh Giang', 325, 0, ''),
(333, 'Huyện Thanh Hà', 325, 0, ''),
(334, 'Huyện Thanh Miện', 325, 0, ''),
(335, 'Huyện Tứ Kỳ', 325, 0, ''),
(336, 'Thành phố Hải Dương', 325, 0, ''),
(337, 'Thị xã Chí Linh', 325, 0, ''),
(338, 'Hải Phòng', 0, 0, ''),
(339, 'Huyện An Dương', 338, 0, ''),
(340, 'Huyện An Lão', 338, 0, ''),
(341, 'Huyện Kiến Thụy', 338, 0, ''),
(342, 'Huyện Thuỷ Nguyên', 338, 0, ''),
(343, 'Huyện Tiên Lãng', 338, 0, ''),
(344, 'Huyện Vĩnh Bảo', 338, 0, ''),
(345, 'Huyện đảo Bạch Long Vĩ', 338, 0, ''),
(346, 'Huyện đảo Cát Hải', 338, 0, ''),
(347, 'Quận Đồ Sơn', 338, 0, ''),
(348, 'Quận Dương Kinh', 338, 0, ''),
(349, 'Quận Hải An', 338, 0, ''),
(350, 'Quận Hồng Bàng', 338, 0, ''),
(351, 'Quận Kiến An', 338, 0, ''),
(352, 'Quận Lê Chân', 338, 0, ''),
(353, 'Quận Ngô Quyền', 338, 0, ''),
(354, 'Hậu Giang', 0, 0, ''),
(355, 'Huyện Châu Thành', 354, 0, ''),
(356, 'Huyện Châu Thành A', 354, 0, ''),
(357, 'Huyện Long Mỹ', 354, 0, ''),
(358, 'Huyện Phụng Hiệp', 354, 0, ''),
(359, 'Huyện Vị Thủy', 354, 0, ''),
(360, 'Thành phố Vị Thanh', 354, 0, ''),
(361, 'Thị xã Long Mỹ', 354, 0, ''),
(362, 'Thị xã Ngã Bảy', 354, 0, ''),
(363, 'HòaBình', 0, 0, ''),
(364, 'Huyện Cao Phong', 363, 0, ''),
(365, 'Huyện Đà Bắc', 363, 0, ''),
(366, 'Huyện Kim Bôi', 363, 0, ''),
(367, 'Huyện Kỳ Sơn', 363, 0, ''),
(368, 'Huyện Lạc Sơn', 363, 0, ''),
(369, 'Huyện Lạc Thủy', 363, 0, ''),
(370, 'Huyện Lương Sơn', 363, 0, ''),
(371, 'Huyện Mai Châu', 363, 0, ''),
(372, 'Huyện Tân Lạc', 363, 0, ''),
(373, 'Huyện Yên Thủy', 363, 0, ''),
(374, 'Thành phố Hoà Bình', 363, 0, ''),
(375, 'Hưng Yên', 0, 0, ''),
(376, 'Huyện Ân Thi', 375, 0, ''),
(377, 'Huyện Khoái Châu', 375, 0, ''),
(378, 'Huyện Kim Động', 375, 0, ''),
(379, 'Huyện Mỹ Hào', 375, 0, ''),
(380, 'Huyện Phù Cừ', 375, 0, ''),
(381, 'Huyện Tiên Lữ', 375, 0, ''),
(382, 'Huyện Văn Giang', 375, 0, ''),
(383, 'Huyện Văn Lâm', 375, 0, ''),
(384, 'Huyện Yên Mỹ', 375, 0, ''),
(385, 'Thành phố Hưng Yên', 375, 0, ''),
(386, 'Khánh Hòa', 0, 0, ''),
(387, 'Huyện Cam Lâm', 386, 0, ''),
(388, 'Huyện Diên Khánh', 386, 0, ''),
(389, 'Huyện Khánh Sơn', 386, 0, ''),
(390, 'Huyện Khánh Vĩnh', 386, 0, ''),
(391, 'Huyện Vạn Ninh', 386, 0, ''),
(392, 'Huyện đảo Trường Sa', 386, 0, ''),
(393, 'Thành phố Cam Ranh', 386, 0, ''),
(394, ' Nha Trang', 386, 0, ''),
(395, 'Thị xã Ninh Hòa', 386, 0, ''),
(396, 'Kiên Giang', 0, 0, ''),
(397, 'Huyện An Biên', 396, 0, ''),
(398, 'Huyện An Minh', 396, 0, ''),
(399, 'Huyện Châu Thành', 396, 0, ''),
(400, 'Huyện Giang Thành', 396, 0, ''),
(401, 'Huyện Giồng Riềng', 396, 0, ''),
(402, 'Huyện Gò Quao', 396, 0, ''),
(403, 'Huyện Hòn Đất', 396, 0, ''),
(404, 'Huyện Kiên Lương', 396, 0, ''),
(405, 'Huyện Tân Hiệp', 396, 0, ''),
(406, 'Huyện U Minh Thượng', 396, 0, ''),
(407, 'Huyện Vĩnh Thuận', 396, 0, ''),
(408, 'Huyện đảo Kiên Hải', 396, 0, ''),
(409, 'Huyện đảo Phú Quốc', 396, 0, ''),
(410, 'Thành phố Rạch Giá', 396, 0, ''),
(411, 'Thị xã Hà Tiên', 396, 0, ''),
(412, 'Kom Tum', 0, 0, ''),
(413, 'Huyện Đắk Glei', 412, 0, ''),
(414, 'Huyện Đắk Hà', 412, 0, ''),
(415, 'Huyện Đăk Tô', 412, 0, ''),
(417, 'Huyện Kon Plông', 412, 0, ''),
(418, 'Huyện Kon Rẫy', 412, 0, ''),
(419, 'Huyện Ngọc Hồi', 412, 0, ''),
(420, 'Huyện Sa Thầy', 412, 0, ''),
(421, 'Huyện Tu Mơ Rông', 412, 0, ''),
(422, 'Thành phố Kon Tum', 412, 0, ''),
(423, 'Lai Châu', 0, 0, ''),
(424, 'Huyện Mường Tè', 423, 0, ''),
(425, 'Huyện Nậm Nhùn', 423, 0, ''),
(426, 'Huyện Phong Thổ', 423, 0, ''),
(427, 'Huyện Sìn Hồ', 423, 0, ''),
(428, 'Huyện Tam Đường', 423, 0, ''),
(429, 'Huyện Tân Uyên', 423, 0, ''),
(430, 'Huyện Than Uyên', 423, 0, ''),
(431, 'Thị xã Lai Châu', 423, 0, ''),
(432, 'Lâm Đồng', 0, 0, ''),
(433, 'Huyện Bảo Lâm', 432, 0, ''),
(434, 'Huyện Cát Tiên', 432, 0, ''),
(435, 'Huyện Đạ Huoai', 432, 0, ''),
(436, 'Huyện Đạ Tẻh', 432, 0, ''),
(437, 'Huyện Đam Rông', 432, 0, ''),
(438, 'Huyện Di Linh', 432, 0, ''),
(439, 'Huyện Đức Trọng', 432, 0, ''),
(440, 'Huyện Lạc Dương', 432, 0, ''),
(441, 'Huyện Lâm Hà', 432, 0, ''),
(442, 'Thành phố Bảo Lộc', 432, 0, ''),
(443, 'Thành phố Đà Lạt', 432, 0, ''),
(444, 'Huyện Đơn Dương', 432, 0, ''),
(445, 'Lạng Sơn', 0, 0, ''),
(446, 'Huyện Bắc Sơn', 445, 0, ''),
(447, 'Huyện Bình Gia', 445, 0, ''),
(448, 'Huyện Cao Lộc', 445, 0, ''),
(449, 'Huyện Chi Lăng', 445, 0, ''),
(450, 'Huyện Đình Lập', 445, 0, ''),
(451, 'Huyện Hữu Lũng', 445, 0, ''),
(452, 'Huyện Lộc Bình', 445, 0, ''),
(453, 'Huyện Văn Lãng', 445, 0, ''),
(454, 'Huyện Văn Quan', 445, 0, ''),
(455, 'Thành phố Lạng Sơn', 445, 0, ''),
(456, 'Huyện Tràng Định', 445, 0, ''),
(457, 'Lào Cai', 0, 0, ''),
(458, 'Huyện Bắc Hà', 457, 0, ''),
(459, 'Huyện Bảo Thắng', 457, 0, ''),
(460, 'Huyện Bảo Yên', 457, 0, ''),
(461, 'Huyện Bát Xát', 457, 0, ''),
(462, 'Huyện Mường Khương', 457, 0, ''),
(463, 'Huyện Sa Pa', 457, 0, ''),
(464, 'Huyện Si Ma Cai', 457, 0, ''),
(465, 'Huyện Văn Bàn', 457, 0, ''),
(466, 'Thành phố Lào Cai', 457, 0, ''),
(467, 'Long An', 0, 0, ''),
(468, 'Huyện Bến Lức', 467, 0, ''),
(469, 'Huyện Cần Đước', 467, 0, ''),
(470, 'Huyện Cần Giuộc', 467, 0, ''),
(471, 'Huyện Châu Thành', 467, 0, ''),
(472, 'Huyện Đức Hòa', 467, 0, ''),
(473, 'Huyện Đức Huệ', 467, 0, ''),
(474, 'Huyện Mộc Hóa', 467, 0, ''),
(475, 'Huyện Tân Hưng', 467, 0, ''),
(476, 'Huyện Tân Thạnh', 467, 0, ''),
(477, 'Huyện Tân Trụ', 467, 0, ''),
(478, 'Huyện Thạnh Hóa', 467, 0, ''),
(479, 'Huyện Thủ Thừa', 467, 0, ''),
(480, 'Huyện Vĩnh Hưng', 467, 0, ''),
(481, 'Thành phố Tân An', 467, 0, ''),
(482, 'Thị xã Kiến Tường', 467, 0, ''),
(483, 'Nam Định', 0, 0, ''),
(484, 'Huyện Giao Thủy', 483, 0, ''),
(485, 'Huyện Hải Hậu', 483, 0, ''),
(486, 'Huyện Mỹ Lộc', 483, 0, ''),
(487, 'Huyện Nam Trực', 483, 0, ''),
(488, 'Huyện Nghĩa Hưng', 483, 0, ''),
(489, 'Huyện Trực Ninh', 483, 0, ''),
(490, 'Huyện Vụ Bản', 483, 0, ''),
(491, 'Huyện Xuân Trường', 483, 0, ''),
(492, 'Huyện Ý Yên', 483, 0, ''),
(493, 'Thành phố Nam Định', 483, 0, ''),
(494, 'Nghệ An', 0, 0, ''),
(495, 'Huyện Anh Sơn', 494, 0, ''),
(496, 'Huyện Con Cuông', 494, 0, ''),
(497, 'Huyện Diễn Châu', 494, 0, ''),
(498, 'Huyện Đô Lương', 494, 0, ''),
(499, 'Huyện Hưng Nguyên', 494, 0, ''),
(500, 'Huyện Kỳ Sơn', 494, 0, ''),
(501, 'Huyện Nam Đàn', 494, 0, ''),
(502, 'Huyện Nghi Lộc', 494, 0, ''),
(503, 'Huyện Nghĩa Đàn', 494, 0, ''),
(504, 'Huyện Quế Phong', 494, 0, ''),
(505, 'Huyện Quỳ Châu', 494, 0, ''),
(506, 'Huyện Quỳ Hợp', 494, 0, ''),
(507, 'Huyện Quỳnh Lưu', 494, 0, ''),
(508, 'Huyện Tân Kỳ', 494, 0, ''),
(509, 'Huyện Thanh Chương', 494, 0, ''),
(510, 'Huyện Tương Dương', 494, 0, ''),
(511, 'Huyện Yên Thành', 494, 0, ''),
(512, 'Thành phố Vinh', 494, 0, ''),
(513, 'Thị xã Cửa Lò', 494, 0, ''),
(514, 'Thị xã Hoàng Mai', 494, 0, ''),
(515, 'Thị xã Thái Hòa', 494, 0, ''),
(516, 'Ninh Bình', 0, 0, ''),
(517, 'Huyện Gia Viễn', 516, 0, ''),
(518, 'Huyện Hoa Lư', 516, 0, ''),
(519, 'Huyện Kim Sơn', 516, 0, ''),
(520, 'Huyện Nho Quan', 516, 0, ''),
(521, 'Huyện Yên Khánh', 516, 0, ''),
(522, 'Huyện Yên Mô', 516, 0, ''),
(523, 'Thành phố Ninh Bình', 516, 0, ''),
(524, 'Thị xã Tam Điệp', 516, 0, ''),
(525, 'Ninh Thuận', 0, 0, ''),
(526, 'Huyện Bác Ái', 525, 0, ''),
(527, 'Huyện Ninh Hải', 525, 0, ''),
(528, 'Huyện Ninh Phước', 525, 0, ''),
(529, 'Huyện Ninh Sơn', 525, 0, ''),
(530, 'Huyện Thuận Bắc', 525, 0, ''),
(531, 'Huyện Thuận Nam', 525, 0, ''),
(532, 'Thành phố Phan Rang-Tháp Chàm', 525, 0, ''),
(533, 'Phú Thọ', 0, 0, ''),
(534, 'Huyện Cẩm Khê', 533, 0, ''),
(535, 'Huyện Đoan Hùng', 533, 0, ''),
(536, 'Huyện Hạ Hòa', 533, 0, ''),
(537, 'Huyện Lâm Thao', 533, 0, ''),
(538, 'Huyện Phù Ninh', 533, 0, ''),
(539, 'Huyện Tam Nông', 533, 0, ''),
(540, 'Huyện Tân Sơn', 533, 0, ''),
(541, 'Huyện Thanh Ba', 533, 0, ''),
(542, 'Huyện Thanh Sơn', 533, 0, ''),
(543, 'Huyện Thanh Thủy', 533, 0, ''),
(544, 'Huyện Yên Lập', 533, 0, ''),
(545, 'Thành phố Việt Trì', 533, 0, ''),
(546, 'Thị xã Phú Thọ', 533, 0, ''),
(547, 'Phú Yên', 0, 0, ''),
(548, 'Huyện Đông Hòa', 547, 0, ''),
(549, 'Huyện Đồng Xuân', 547, 0, ''),
(550, 'Huyện Phú Hòa', 547, 0, ''),
(551, 'Huyện Sơn Hòa', 547, 0, ''),
(552, 'Huyện Sông Hin', 547, 0, ''),
(553, 'Huyện Tây Hòa', 547, 0, ''),
(554, 'Huyện Tuy An', 547, 0, ''),
(555, 'Thành phố Tuy Hòa', 547, 0, ''),
(556, 'Thị xã Sông Cầu', 547, 0, ''),
(557, 'Quảng Bình', 0, 0, ''),
(558, 'Huyện Bố Trạch', 557, 0, ''),
(559, 'Huyện Lệ Thủy', 557, 0, ''),
(560, 'Huyện Minh Hóa', 557, 0, ''),
(561, 'Huyện Quảng Ninh', 557, 0, ''),
(562, 'Huyện Quảng Trạch', 557, 0, ''),
(563, 'Huyện Tuyên Hóa', 557, 0, ''),
(564, 'Thành phố Đồng Hới', 557, 0, ''),
(565, 'Thị xã Ba Đồn', 557, 0, ''),
(566, 'Quảng Nam', 0, 0, ''),
(567, 'Huyện Bắc Trà My', 566, 0, ''),
(568, 'Huyện Đại Lộc', 566, 0, ''),
(569, 'Huyện Điện Bàn', 566, 0, ''),
(570, 'Huyện Đông Giang', 566, 0, ''),
(571, 'Huyện Duy Xuyên', 566, 0, ''),
(572, 'Huyện Hiệp Đức', 566, 0, ''),
(573, 'Huyện Nam Giang', 566, 0, ''),
(574, 'Huyện Nam Trà My', 566, 0, ''),
(575, 'Huyện Nông Sơn', 566, 0, ''),
(576, 'Huyện Núi Thành', 566, 0, ''),
(577, 'Huyện Phú Ninh', 566, 0, ''),
(578, 'Huyện Phước Sơn', 566, 0, ''),
(579, 'Huyện Quế Sơn', 566, 0, ''),
(580, 'Huyện Tây Giang', 566, 0, ''),
(581, 'Huyện Thăng Bình', 566, 0, ''),
(582, 'Huyện Tiên Phước', 566, 0, ''),
(583, 'Thành phố Hội An', 566, 0, ''),
(584, 'Thành phố Tam Kỳ', 566, 0, ''),
(585, 'Quảng Nam', 0, 0, ''),
(586, 'Huyện Bắc Trà My', 585, 0, ''),
(587, 'Huyện Đại Lộc', 585, 0, ''),
(588, 'Huyện Điện Bàn', 585, 0, ''),
(589, 'Huyện Đông Giang', 585, 0, ''),
(590, 'Huyện Duy Xuyên', 585, 0, ''),
(591, 'Huyện Hiệp Đức', 585, 0, ''),
(592, 'Huyện Nam Giang', 585, 0, ''),
(593, 'Huyện Nam Trà My', 585, 0, ''),
(594, 'Huyện Nông Sơn', 585, 0, ''),
(595, 'Huyện Núi Thành', 585, 0, ''),
(596, 'Huyện Phú Ninh', 585, 0, ''),
(597, 'Huyện Phước Sơn', 585, 0, ''),
(598, 'Huyện Quế Sơn', 585, 0, ''),
(599, 'Huyện Tây Giang', 585, 0, ''),
(600, 'Huyện Thăng Bình', 585, 0, ''),
(601, 'Huyện Tiên Phước', 585, 0, ''),
(602, 'Thành phố Hội An', 585, 0, ''),
(603, 'Thành phố Tam Kỳ', 585, 0, ''),
(604, 'Quảng Ninh', 0, 0, ''),
(605, 'Huyện Ba Chẽ', 604, 0, ''),
(606, 'Huyện Bình Liêu', 604, 0, ''),
(607, 'Huyện Đầm Hà', 604, 0, ''),
(608, 'Huyện Đông Triều', 604, 0, ''),
(609, 'Huyện Hải Hà', 604, 0, ''),
(610, 'Huyện Hoành Bồ', 604, 0, ''),
(611, 'Huyện Tiên Yên', 604, 0, ''),
(612, 'Huyện Tư Nghĩa', 604, 0, ''),
(613, 'Huyện Vân Đồn', 604, 0, ''),
(614, 'Huyện Yên Hưng', 604, 0, ''),
(615, 'Huyện đảo Cô Tô', 604, 0, ''),
(616, 'Thành phố Cẩm Phả', 604, 0, ''),
(617, 'Thành phố Hạ Long', 604, 0, ''),
(618, 'Thành phố Móng Cái', 604, 0, ''),
(619, 'Thành phố Uông Bí', 604, 0, ''),
(620, 'Thị Xã Quảng Yên', 604, 0, ''),
(621, 'Quảng Trị', 0, 0, ''),
(622, 'Huyện Cam Lộ', 621, 0, ''),
(623, 'Huyện Đa Krông', 621, 0, ''),
(624, 'Huyện Gio Linh', 621, 0, ''),
(625, 'Huyện Hải Lăng', 621, 0, ''),
(626, 'Huyện Hướng Hóa', 621, 0, ''),
(627, 'Huyện Triệu Phong', 621, 0, ''),
(628, 'Huyện Vĩnh Linh', 621, 0, ''),
(629, 'Huyện đảo Cồn Cỏ', 621, 0, ''),
(630, 'Thành phố Đông Hà', 621, 0, ''),
(631, 'Thị xã Quảng Trị', 621, 0, ''),
(632, 'Sóc Trăng', 0, 0, ''),
(633, 'Huyện Châu Thành', 632, 0, ''),
(634, 'Huyện Cù Lao Dung', 632, 0, ''),
(635, 'Huyện Kế Sách', 632, 0, ''),
(636, 'uyện Long Phú', 632, 0, ''),
(637, 'Huyện Mỹ Tú', 632, 0, ''),
(638, 'Huyện Mỹ Xuyên', 632, 0, ''),
(639, 'Huyện Ngã Năm', 632, 0, ''),
(640, 'Huyện Thạnh Trị', 632, 0, ''),
(641, 'Huyện Trần Đề', 632, 0, ''),
(642, 'Huyện Vĩnh Châu', 632, 0, ''),
(643, 'Thành phố Sóc Trăng', 632, 0, ''),
(644, 'Sơn La', 0, 0, ''),
(645, 'Huyện Bắc Yên', 644, 0, ''),
(646, 'Huyện Mai Sơn', 644, 0, ''),
(647, 'Huyện Mộc Châu', 644, 0, ''),
(648, 'Huyện Mường La', 644, 0, ''),
(649, 'Huyện Phù Yên', 644, 0, ''),
(650, 'Huyện Quỳnh Nhai', 644, 0, ''),
(651, 'Huyện Sông Mã', 644, 0, ''),
(652, 'Huyện Sốp Cộp', 644, 0, ''),
(653, 'Huyện Thuận Châu', 644, 0, ''),
(654, 'Huyện Vân Hồ', 644, 0, ''),
(655, 'Huyện Yên Châu', 644, 0, ''),
(656, 'Thành phố Sơn La', 644, 0, ''),
(657, 'Tây Ninh', 0, 0, ''),
(658, 'Huyện Bến Cầu', 657, 0, ''),
(659, 'Huyện Châu Thành', 657, 0, ''),
(660, 'Huyện Dương Minh Châu', 657, 0, ''),
(661, 'Huyện Gò Dầu', 657, 0, ''),
(662, 'Huyện Hòa Thành', 657, 0, ''),
(663, 'Huyện Tân Biên', 657, 0, ''),
(664, 'Huyện Tân Châu', 657, 0, ''),
(665, 'Huyện Trảng Bàng', 657, 0, ''),
(666, 'Thị xã Tây Ninh', 657, 0, ''),
(667, 'Thái Bình', 0, 0, ''),
(668, 'Huyện Đông Hưng', 667, 0, ''),
(669, 'Huyện Hưng Hà', 667, 0, ''),
(670, 'Huyện Kiến Xương', 667, 0, ''),
(671, 'Huyện Quỳnh Phụ', 667, 0, ''),
(672, 'Huyện Thái Thụy', 667, 0, ''),
(673, 'Huyện Tiền Hải', 667, 0, ''),
(674, 'Huyện Vũ Thư', 667, 0, ''),
(675, 'Thành phố Thái Bình', 667, 0, ''),
(676, 'Thái Nguyên', 0, 0, ''),
(677, 'Huyện Đại Từ', 676, 0, ''),
(678, 'Huyện Định Hóa', 676, 0, ''),
(679, 'Huyện Đồng Hỷ', 676, 0, ''),
(680, 'Huyện Phổ Yên', 676, 0, ''),
(681, 'Huyện Phú Bình', 676, 0, ''),
(682, 'Huyện Phú Lương', 676, 0, ''),
(683, 'Huyện Võ Nhai', 676, 0, ''),
(684, 'Thành phố Thái Nguyên', 676, 0, ''),
(685, 'Thị xã Sông Công', 676, 0, ''),
(686, 'Thanh Hóa', 0, 0, ''),
(687, 'Huyện Bá Thước', 686, 0, ''),
(688, 'Huyện Cẩm Thủy', 686, 0, ''),
(689, 'Huyện Đông Sơn', 686, 0, ''),
(690, 'Huyện Hà Trung', 686, 0, ''),
(691, 'Huyện Hậu Lộc', 686, 0, ''),
(692, 'Huyện Hoằng Hóa', 686, 0, ''),
(693, 'Huyện Lang Chánh', 686, 0, ''),
(694, 'Huyện Mường Lát', 686, 0, ''),
(695, 'Huyện Nga Sơn', 686, 0, ''),
(696, 'Huyện Ngọc Lặc', 686, 0, ''),
(697, 'Huyện Như Thanh', 686, 0, ''),
(698, 'Huyện Như Xuân', 686, 0, ''),
(699, 'Huyện Nông Cống', 686, 0, ''),
(700, 'Huyện Quan Hóa', 686, 0, ''),
(701, 'Huyện Quan Sơn', 686, 0, ''),
(702, 'Huyện Quảng Xương', 686, 0, ''),
(703, 'Huyện Thạch Thành', 686, 0, ''),
(704, 'Huyện Thiệu Hóa', 686, 0, ''),
(705, 'Huyện Thọ Xuân', 686, 0, ''),
(706, 'Huyện Thường Xuân', 686, 0, ''),
(707, 'Huyện Tĩnh Gia', 686, 0, ''),
(708, 'Huyện Triệu Sơn', 686, 0, ''),
(709, 'Huyện Vĩnh Lộc', 686, 0, ''),
(710, 'Huyện Yên Định', 686, 0, ''),
(711, 'Thành phố Thanh Hóa', 686, 0, ''),
(712, 'Thị xã Bỉm Sơn', 686, 0, ''),
(713, 'Thị xã Sầm Sơn', 686, 0, ''),
(714, 'Thừa Thiên Huế', 0, 0, ''),
(715, 'Huyện A Lưới', 714, 0, ''),
(716, 'Huyện Nam Đông', 714, 0, ''),
(717, 'Huyện Phong Điền', 714, 0, ''),
(718, 'Huyện Phú Lộc', 714, 0, ''),
(719, 'Huyện Phú Vang', 714, 0, ''),
(720, 'Huyện Quảng Điền', 714, 0, ''),
(721, 'Thành phố Huế', 714, 0, ''),
(722, 'Thị xã Hương Thủy', 714, 0, ''),
(723, 'Thị xã Hương Trà', 714, 0, ''),
(724, 'Tiền Giang', 0, 0, ''),
(725, 'Huyện Cái Bè', 724, 0, ''),
(726, 'Huyện Cai Lậy', 724, 0, ''),
(727, 'Huyện Châu Thành', 724, 0, ''),
(728, 'Huyện Chợ Gạo', 724, 0, ''),
(729, 'Huyện Gò Công Đông', 724, 0, ''),
(730, 'Huyện Gò Công Tây', 724, 0, ''),
(731, 'Huyện Tân Phú Đông', 724, 0, ''),
(732, 'Huyện Tân Phước', 724, 0, ''),
(733, 'Thành phố Mỹ Tho', 724, 0, ''),
(734, 'Thị xã Cai Lậy', 724, 0, ''),
(735, 'Thị xã Gò Công', 724, 0, ''),
(736, 'Trà Vinh', 0, 0, ''),
(737, 'Huyện Càng Long', 736, 0, ''),
(738, 'Huyện Cầu Kè', 736, 0, ''),
(739, 'Huyện Cầu Ngang', 736, 0, ''),
(740, 'Huyện Châu Thành', 736, 0, ''),
(741, 'Huyện Duyên Hải', 736, 0, ''),
(742, 'Huyện Tiểu Cần', 736, 0, ''),
(743, 'Huyện Trà Cú', 736, 0, ''),
(744, 'Thành phố Trà Vinh', 736, 0, ''),
(745, 'Thị xã Duyên Hải', 736, 0, ''),
(746, 'Tuyên Quang', 0, 0, ''),
(747, 'Huyện Chiêm Hóa', 746, 0, ''),
(748, 'Huyện Hàm Yên', 746, 0, ''),
(749, 'Huyện Lâm Bình', 746, 0, ''),
(750, 'Huyện Na Hang', 746, 0, ''),
(751, 'Huyện Sơn Dương', 746, 0, ''),
(752, 'Huyện Yên Sơn', 746, 0, ''),
(753, 'Thành phố Tuyên Quang', 746, 0, ''),
(754, 'Vĩnh Long', 0, 0, ''),
(755, 'Huyện Bình Minh', 754, 0, ''),
(756, 'Huyện Bình Tân', 754, 0, ''),
(757, 'Huyện Long Hồ', 754, 0, ''),
(758, 'Huyện Mang Thít', 754, 0, ''),
(759, 'Huyện Tam Bình', 754, 0, ''),
(760, 'Huyện Trà Ôn', 754, 0, ''),
(761, 'Huyện Vũng Liêm', 754, 0, ''),
(762, 'Thành phố Vĩnh Long', 754, 0, ''),
(763, 'Vĩnh Phúc', 0, 0, ''),
(764, 'Huyện Bình Xuyên', 763, 0, ''),
(765, 'Huyện Lập Thạch', 763, 0, ''),
(766, 'Huyện Sông Lô', 763, 0, ''),
(767, 'Huyện Tam Đảo', 763, 0, ''),
(768, 'Huyện Tam Dương', 763, 0, ''),
(769, 'Huyện Vĩnh Tường', 763, 0, ''),
(770, 'Huyện Yên Lạc', 763, 0, ''),
(771, 'Thành phố Vĩnh Yên', 763, 0, ''),
(772, 'Thị xã Phúc Yên', 763, 0, ''),
(773, 'Yên Bái', 0, 0, ''),
(774, 'Huyện Lục Yên', 773, 0, ''),
(775, 'Huyện Mù Căng Chải', 773, 0, ''),
(776, 'Huyện Trạm Tấu', 773, 0, ''),
(777, 'Huyện Trấn Yên', 773, 0, ''),
(778, 'Huyện Văn Chấn', 773, 0, ''),
(779, 'Huyện Văn Yên', 773, 0, ''),
(780, 'Huyện Yên Bình', 773, 0, ''),
(781, 'Thành phố Yên Bái', 773, 0, ''),
(782, 'Thị xã Nghĩa Lộ', 773, 0, '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bakcodt_admin`
--
ALTER TABLE `bakcodt_admin`
  ADD PRIMARY KEY (`Username`);

--
-- Chỉ mục cho bảng `bakcodt_adv`
--
ALTER TABLE `bakcodt_adv`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `bakcodt_adv_groups`
--
ALTER TABLE `bakcodt_adv_groups`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Code` (`Code`);

--
-- Chỉ mục cho bảng `bakcodt_brand`
--
ALTER TABLE `bakcodt_brand`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `bakcodt_categories`
--
ALTER TABLE `bakcodt_categories`
  ADD PRIMARY KEY (`catID`),
  ADD UNIQUE KEY `Code` (`Code`);

--
-- Chỉ mục cho bảng `bakcodt_categoriesbak`
--
ALTER TABLE `bakcodt_categoriesbak`
  ADD PRIMARY KEY (`catID`);

--
-- Chỉ mục cho bảng `bakcodt_categories_1`
--
ALTER TABLE `bakcodt_categories_1`
  ADD PRIMARY KEY (`catID`),
  ADD UNIQUE KEY `Code` (`Code`);

--
-- Chỉ mục cho bảng `bakcodt_content`
--
ALTER TABLE `bakcodt_content`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bakcodt_content_ln`
--
ALTER TABLE `bakcodt_content_ln`
  ADD PRIMARY KEY (`id`,`ln`);

--
-- Chỉ mục cho bảng `bakcodt_form`
--
ALTER TABLE `bakcodt_form`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `bakcodt_home`
--
ALTER TABLE `bakcodt_home`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `bakcodt_infor`
--
ALTER TABLE `bakcodt_infor`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `bakcodt_khachhang`
--
ALTER TABLE `bakcodt_khachhang`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Phone` (`Phone`);

--
-- Chỉ mục cho bảng `bakcodt_khachhang_diachi`
--
ALTER TABLE `bakcodt_khachhang_diachi`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `bakcodt_location`
--
ALTER TABLE `bakcodt_location`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `bakcodt_menu`
--
ALTER TABLE `bakcodt_menu`
  ADD PRIMARY KEY (`IDMenu`);

--
-- Chỉ mục cho bảng `bakcodt_news`
--
ALTER TABLE `bakcodt_news`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `bakcodt_news_category`
--
ALTER TABLE `bakcodt_news_category`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Code` (`Code`);

--
-- Chỉ mục cho bảng `bakcodt_order`
--
ALTER TABLE `bakcodt_order`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `bakcodt_orderdetail`
--
ALTER TABLE `bakcodt_orderdetail`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `bakcodt_order_log`
--
ALTER TABLE `bakcodt_order_log`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `bakcodt_pages`
--
ALTER TABLE `bakcodt_pages`
  ADD PRIMARY KEY (`idPa`);

--
-- Chỉ mục cho bảng `bakcodt_product`
--
ALTER TABLE `bakcodt_product`
  ADD PRIMARY KEY (`Code`),
  ADD KEY `Code` (`ID`);

--
-- Chỉ mục cho bảng `bakcodt_tinhthanh`
--
ALTER TABLE `bakcodt_tinhthanh`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bakcodt_adv`
--
ALTER TABLE `bakcodt_adv`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT cho bảng `bakcodt_adv_groups`
--
ALTER TABLE `bakcodt_adv_groups`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `bakcodt_categories`
--
ALTER TABLE `bakcodt_categories`
  MODIFY `catID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `bakcodt_categoriesbak`
--
ALTER TABLE `bakcodt_categoriesbak`
  MODIFY `catID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT cho bảng `bakcodt_categories_1`
--
ALTER TABLE `bakcodt_categories_1`
  MODIFY `catID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT cho bảng `bakcodt_content`
--
ALTER TABLE `bakcodt_content`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'system', AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT cho bảng `bakcodt_form`
--
ALTER TABLE `bakcodt_form`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `bakcodt_home`
--
ALTER TABLE `bakcodt_home`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `bakcodt_infor`
--
ALTER TABLE `bakcodt_infor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `bakcodt_khachhang`
--
ALTER TABLE `bakcodt_khachhang`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `bakcodt_khachhang_diachi`
--
ALTER TABLE `bakcodt_khachhang_diachi`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `bakcodt_location`
--
ALTER TABLE `bakcodt_location`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `bakcodt_menu`
--
ALTER TABLE `bakcodt_menu`
  MODIFY `IDMenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1657592816;

--
-- AUTO_INCREMENT cho bảng `bakcodt_news_category`
--
ALTER TABLE `bakcodt_news_category`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `bakcodt_order`
--
ALTER TABLE `bakcodt_order`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `bakcodt_orderdetail`
--
ALTER TABLE `bakcodt_orderdetail`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT cho bảng `bakcodt_pages`
--
ALTER TABLE `bakcodt_pages`
  MODIFY `idPa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `bakcodt_product`
--
ALTER TABLE `bakcodt_product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4653;

--
-- AUTO_INCREMENT cho bảng `bakcodt_tinhthanh`
--
ALTER TABLE `bakcodt_tinhthanh`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=783;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
