<?php

date_default_timezone_set('Asia/Ho_Chi_Minh');

define("DEFAULT_CONTROLLER", "index");
define("DEFAULT_ACTION", "index");
define("BASE_URL", "https://bachhoagiadinh.vn/");
define("DOMAIN", ".bachhoagiadinh.vn/");
define("BASE_DIR", "/");
define("ROOT_DIR", __DIR__);
define("NgonNgu", "NgonNgu");
define("UserLogin", "UserLogin");
define("Password", "@NguyenVanDo1");
define("QuanTri", "QuanTri_PGV");
define("table_prefix", "bakcodt_");
$_SESSION['TenHienThi'] = 0;
global $INI;

$INI['host'] = "localhost";
$INI['username'] = "qlbh_nhanai";
$INI['password'] = "zaq@123Abc456";
$INI['DBname'] = "qlbh_nhanai";

spl_autoload_register(function ($class) {
    $class = str_replace("\\", "_", $class);
    $class = str_replace("_", "/", $class) . ".php";
    if (file_exists($class)) {
        include_once $class;
    }
});
