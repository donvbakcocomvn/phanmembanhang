<?php

namespace theme\home;

class functionLayout
{

    const DanMucSanPham = "DanMucSanPham";

    public $Menu;
    public $NameTheme;
    public $TopMainMenu;
    public $FooterMenu;
    public $FooterMenuDichVu;
    public $FooterMenuHoTro;
    public $FooterMenuCongTy;
    public $FileConfig;

    function __construct()
    {
        $this->NameTheme = 'home';
        $this->TopMainMenu = [];
        $this->FooterMenu = [];
        $this->FooterMenuHoTro = [];
        $this->FooterMenuDichVu = [];
        $this->FooterMenuCongTy = [];
        $this->Menu = new \Model\Menu();
        $this->FileConfig = ROOT_DIR . "/theme/{$this->NameTheme}/_lib/homeconfig";
        $this->loadmenu();
    }

    function LoadConfig()
    {
        $lib = new \lib\io();
        $ad = new \Model_Adapter();
        return $ad->_decode($lib->readFile($this->FileConfig));
    }

    function LoadConfigArray()
    {
        $lib = new \lib\io();
        $ad = new \Model_Adapter();
        return json_decode($lib->readFile($this->FileConfig), JSON_OBJECT_AS_ARRAY);
    }

    function GetConfigByKey($key)
    {
        $a = $this->LoadConfigArray();
        if (isset($a[$key])) {
            return $a[$key];
        }
        return null;
    }

    function loadmenu()
    {
        //        return về mảng json

        $a = $this->Menu->MenuByTheme($this->NameTheme);
        foreach ($a as $k => $Menu) {
            $body = $this->Menu->MenuByGroupThemeParent($this->NameTheme, $Menu["Groups"], "0", FALSE);
            foreach ($body as $k1 => $menuCap2) {
                $sub = $this->Menu->MenuByGroupThemeParent($this->NameTheme, $menuCap2["Groups"], $menuCap2["IDMenu"], FALSE);
                if ($sub) {
                    $body[$k1]['submenu'] = $sub;
                }
            }
            $a[$k]["body"] = $body;
        }
        foreach ($a as $k => $Menu) {
            if ($Menu["Groups"] == 'TopMainMenu') {
                $this->TopMainMenu = $a[$k];
            }
            if ($Menu["Groups"] == 'FooterMenu') {
                $this->FooterMenu = $a[$k];
            }
            if ($Menu["Groups"] == 'FooterMenuCongTy') {
                $this->FooterMenuCongTy = $a[$k];
            }
            if ($Menu["Groups"] == 'FooterMenuHoTro') {
                $this->FooterMenuHoTro = $a[$k];
            }
            if ($Menu["Groups"] == 'FooterMenuDichVu') {
                $this->FooterMenuDichVu = $a[$k];
            }
        }

        $this->TopMainMenu = $this->Menu->_encode($this->TopMainMenu["body"]);
        $this->FooterMenu = $this->Menu->_encode($this->FooterMenu["body"]);
        $this->FooterMenuCongTy = $this->Menu->_encode($this->FooterMenuCongTy["body"]);
        $this->FooterMenuHoTro = $this->Menu->_encode($this->FooterMenuHoTro["body"]);
        $this->FooterMenuDichVu = $this->Menu->_encode($this->FooterMenuDichVu["body"]);


        //        var_dump($this->TopMainMenu);
    }

    function gethtml()
    {
        $actual_link = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
        $hotlint_link = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]" . "/";
?>
        <title><?php echo \Model_Seo::$Title; ?></title>
        <meta charset="utf-8">
        <meta http-equiv="cache-control" content="no-cache" />
        <link rel="canonical" href="<?php echo $actual_link; ?>">
        <link rel="alternate" hreflang="vi" href="<?php echo $actual_link; ?>">
        <meta http-equiv="x-dns-prefetch-control" content="on" />
        <meta name="Resource-type" content="Document" />
        <meta name="theme-color" content="#f96d10" />
        <link rel="dns-prefetch" href="//cdnjs.cloudflare.com" />
        <link rel="dns-prefetch" href="//ajax.googleapis.com" />
        <link rel="dns-prefetch" href="//www.facebook.com" />
        <link rel="dns-prefetch" href="//fonts.googleapis.com" />
        <meta http-equiv="Cache-control" content="max-age=31536000,public">
        <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
        <meta name="keywords" content="<?php echo strip_tags(\Model_Seo::$key); ?>" />
        <meta name="description" content="<?php echo strip_tags(\Model_Seo::$des); ?>">
        <meta name="author" content="http://nguyenvando.net">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta property="og:image" content="__Logo___">
        <meta property="og:locale" content="vi_VN" />
        <meta property="og:url" content="<?php echo $actual_link; ?>">
        <meta property="og:type" content="website">
        <meta property="og:title" content="<?php echo strip_tags(\Model_Seo::$key); ?>">
        <meta property="og:description" content="<?php echo strip_tags(\Model_Seo::$des); ?>">
        <link rel="shortcut icon" href="__Icon___">
        <link rel="apple-touch-icon" href="__Logo___">
        <link rel="apple-touch-icon" sizes="72x72" href="__Logo___">
        <link rel="apple-touch-icon" sizes="114x114" href="__Logo___">
        <link rel="manifest" href="/public/manifest.json?v=<?php echo filemtime('public/manifest.json') ?>">
    <?php
    }

    function head()
    {
        $this->gethtml();
    ?>
        <title><?php echo \Model_Seo::$Title; ?></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="/public/home/assets/lib/bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="/public/home/assets/lib/font-awesome/css/font-awesome.min.css" />
        <link rel="stylesheet" type="text/css" href="/public/home/assets/lib/select2/css/select2.min.css" />
        <link rel="stylesheet" type="text/css" href="/public/home/assets/lib/jquery.bxslider/jquery.bxslider.css" />
        <link rel="stylesheet" type="text/css" href="/public/home/assets/lib/owl.carousel/owl.carousel.css" />
        <link rel="stylesheet" type="text/css" href="/public/home/assets/lib/jquery-ui/jquery-ui.css" />
        <link rel="stylesheet" type="text/css" href="/public/home/assets/css/animate.css" />
        <link rel="stylesheet" type="text/css" href="/public/home/assets/css/reset.css" />
        <link rel="stylesheet" type="text/css" href="/public/home/assets/css/style.css?v=<?php echo filemtime('public/home/assets/css/style.css') ?>" />
        <link rel="stylesheet" type="text/css" href="/public/home/assets/css/responsive.css" />
        <link rel="stylesheet" type="text/css" href="/public/home/assets/css/option5.css?v=<?php echo filemtime('public/home/assets/css/option5.css') ?>" />
        <link href="/public/home/css/style.css" rel="stylesheet" type="text/css" />
        <link href="/public/home/assets/css/MauTemplate.css" rel="stylesheet" type="text/css" />
        <link href="/public/home/bachhoagiadinh/Style.css?v=<?php echo filemtime('public/home/bachhoagiadinh/Style.css'); ?>" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="/public/home/assets/lib/jquery/jquery-1.11.2.min.js"></script>
        <script src="/public/lazyloadimg/lazyloading.js" type="text/javascript"></script>
        <script src="/public/partials/loaderpartials/home/homeconfig.js?v=<?php echo 'public/partials/loaderpartials/home/homeconfig.js'; ?>" type="text/javascript"></script>
        <script src="/public/home/bachhoagiadinh/App.js?v=<?php echo 'public/home/bachhoagiadinh/App.js'; ?>" type="text/javascript"></script>

        <?php
    }

    function header($data = null)
    {
        $Cat = new \Model\Category();
        $Cats = $Cat->Categorys();
        if (\Model\Driver::is_mobile()) {
        ?>
            <div id="header" class=" header mobie-header"></div>
        <?php
        } else {
        ?>
            <!-- HEADER -->
            <div id="header" ng-init="setDanhMuc(<?php echo $data["DanhMuc"] ?? ""; ?>)" class=" header desktop-header"> </div>
            <!-- end header -->
        <?php
        }
    }

    function leftmenu()
    {
        $Cat = new \Model\Category();
        $Cats = $Cat->Categorys();
        ?>
        <ul class="tree-menu">

            <?php
            $dem = 0;
            if ($Cats)
                foreach ($Cats as $_Category) {
            ?>
                <li class="">
                    <span></span> <a href="<?php echo $_Category->linkCurentCategory() ?>"> <?php echo $_Category->catName ?> </a>
                    <!--ds danh muc con-->
                    <?php
                    //                                                            Cấp 2
                    $lCat = $_Category->Categorys4IDParent($_Category->catID);
                    if ($lCat) {
                        foreach ($lCat as $_Category1) {
                    ?>
                            <ul>
                                <li><span></span>
                                    <a href="<?php echo $_Category1->linkCurentCategory(); ?>">
                                        <?php echo $_Category1->catName ?>
                                    </a>
                                    <ul>
                                        <?php
                                        $lCat1 = $_Category1->Categorys4IDParent($_Category1->catID);
                                        if ($lCat1) {
                                            foreach ($lCat1 as $_Category2) {
                                        ?>
                                                <!--link danh muc ??-->
                                                <li><span></span> <a href="<?php echo $_Category2->linkCurentCategory(); ?>"><?php echo $_Category2->catName ?></a></li>
                                        <?php
                                            }
                                        }
                                        ?>
                                    </ul>
                                </li>
                            </ul>
                        <?php
                        }
                        ?>

                    <?php
                    }
                    ?>
                </li>
            <?php
                    $dem++;
                }
            ?>
        </ul>

    <?php
    }

    function homeslider()
    {

        $a = new \Model\adv();
        $DS = $a->GetFileContentGroup("homeslide");
        //        var_dump($DS);
        //        echo count($DS);
    ?>
        <div id="home-slider">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 header-top-right">
                        <div class="homeslider">
                            <ul id="contenhomeslider">
                                <?php
                                foreach ($DS as $value) {
                                    $_value = new \Model\adv($value);
                                ?>
                                    <li><img loading="lazy" style="width:100%;height: 350px;" alt="<?php echo $_value->Name; ?>" src="<?php echo $_value->Urlimages ?>" title="<?php echo $_value->Name; ?>" /></li>
                                <?php
                                }
                                ?>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    <?php
    }

    function services()
    {
    ?>
        <div ng-show="<?php echo $this->LoadConfig()->DichVu ?> == '1'">
            <div class="container">
                <div class="service ">
                    <div class="col-xs-6 col-sm-3 service-item">
                        <div class="icon">
                            <img alt="services" src="/public/home/assets/data/s1.png" />
                        </div>
                        <div class="info">
                            <a href="#">
                                <h3>Hỗ Trợ Giao Hàng</h3>
                            </a>
                            <span>Giao Hàng Nội Thành Phố</span>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-3 service-item">
                        <div class="icon">
                            <img alt="services" src="/public/home/assets/data/s2.png" />
                        </div>
                        <div class="info">
                            <a href="#">
                                <h3>Chất Lượng</h3>
                            </a>
                            <span>Phân phối sản phẩm chất lượng</span>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-3 service-item">
                        <div class="icon">
                            <img alt="services" src="/public/home/assets/data/s3.png" />
                        </div>

                        <div class="info">
                            <a href="#">
                                <h3>Hỗ Trợ Mua Hộ</h3>
                            </a>
                            <span>Mua Hộ Sản phẩm</span>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-3 service-item">
                        <div class="icon">
                            <img alt="services" src="/public/home/assets/data/s4.png" />
                        </div>
                        <div class="info">
                            <a href="#">
                                <h3>Sản Phẩm</h3>
                            </a>
                            <span>Sản Phẩm </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <?php
    }

    function footer()
    {
    ?>
        <div class="clearfix"></div>
        <footer id="footer2" style="margin-top: 10px;">
            <div class="footer-top">
                <div class="container">
                    <div class="row">
                        <div class="hidden-sm hidden-xs col-sm-9">
                            <div class="footer-menu">
                                <ul>
                                    <li ng-repeat='menuitem in <?php echo $this->FooterMenu ?>'>
                                        <a ng-show="!menuitem.submenu" href="{{menuitem.Link}}">{{menuitem.Name}}</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-3 hidden-sm hidden-xs">
                            <div class="footer-social">
                                <!-- <ul>
                                    <li><a class="facebook" href="__linkFacebook___"><i class="fa fa-facebook"></i></a></li>
                                    <li><a class="pinterest" href="__linkPinterest___"><i class="fa fa-pinterest-p"></i></a></li>
                                    <li><a class="vk" href="__linkVk___"><i class="fa fa-vk"></i></a></li>
                                    <li><a class="twitter" href="__linkTwitter___"><i class="fa fa-twitter"></i></a></li>
                                    <li><a class="google-plus" href="__linkPlus___"><i class="fa fa-google-plus"></i></a></li>
                                </ul> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-paralax hidden-sm hidden-xs ">
                <div class="footer-bottom">
                    <div class="container">
                        <div class=" ">
                            <div class="row">
                                <div class="col-sm-8">
                                    <div class="footer-coppyright">
                                        Copyright © 2022 __WebName___. All Rights Reserved. Designed by: __WebName___
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ./footer paralax-->
        </footer>
    <?php
    }

    function js()
    {
    ?>

        <script type="text/javascript" src="/public/home/assets/lib/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="/public/home/assets/lib/select2/js/select2.min.js"></script>
        <script type="text/javascript" src="/public/home/assets/lib/jquery.bxslider/jquery.bxslider.min.js"></script>
        <script type="text/javascript" src="/public/home/assets/lib/owl.carousel/owl.carousel.min.js"></script>
        <script type="text/javascript" src="/public/home/assets/lib/countdown/jquery.plugin.js"></script>
        <script type="text/javascript" src="/public/home/assets/lib/countdown/jquery.countdown.js"></script>
        <script type="text/javascript" src="/public/home/assets/js/jquery.actual.min.js"></script>
        <script type="text/javascript" src="/public/home/assets/js/theme-script.js?v=<?php echo filemtime('public/home/assets/js/theme-script.js'); ?>"></script>
        <?php
    }

    function categorySlider($isMultyCategory = -1)
    {
        $adv = new \Model\adv();
        if ($isMultyCategory == -1) {
            $lisAdv = $adv->AdvsByGroup("cat0");
        } else {
            $gp = "cat" . $isMultyCategory;
            $lisAdv = $adv->AdvsByGroup($gp);
        }

        if ($lisAdv) {
            if (count($lisAdv) == 1) {
                $lisAdv[1] = $lisAdv[0];
            }
        ?>
            <!-- category-slider -->
            <div class="category-slider">
                <ul class="owl-carousel owl-style2" data-dots="false" data-loop="true" data-nav="true" data-autoplayTimeout="1000" data-autoplayHoverPause="true" data-items="1">
                    <?php
                    foreach ($lisAdv as $_adv) {
                    ?>
                        <li>
                            <img src="<?php echo $_adv->Urlimages ?>" alt="<?php echo $_adv->Name ?>">
                        </li>
                    <?php
                    }
                    ?>
                </ul>
            </div>
            <!-- ./category-slider -->
        <?php
        }
    }

    function product($produc)
    {
        $produc = new \Model\Products($produc);
        $p = new \Model\Products();
        $images = $p->getAllImges($produc->ID);
        ?>
        <div class="right-block" style="width: 100%;">
            <div style="width: 100%;">
                <div class="d-flex">
                    <div style="min-width: 90px;padding-right: 10px;margin-right: 5px;">
                        <img class="img" onerror="this.src='/public/no-image.jpg'" style="min-width:90px;height: 90px;" src="/public/no-image.jpg" ng-src="{{items.UrlHinh}}" alt="hình sản phẩm">
                    </div>
                    <div style="width: 100%;">
                        <h2 class="product-name">
                            <a style="white-space: nowrap;" href="#">{{items.nameProduct}}</a>
                        </h2>
                        <div class="content_price">
                            <span style="color: red;" class="price product-price">{{items.Price}}</span>
                        </div>
                        <div class="">
                            <p style="white-space: nowrap;">Id: #<?php echo $produc->Code ?></p>
                        </div>
                        <div class="pull-right">
                            <a class="btn btn-success" ng-click="addProductCart('<?php echo $produc->Id ?>')">
                                <i class="fa fa-plus"></i>
                            </a>
                            <a class="btn btn-danger" ng-click="removeProductCart('<?php echo $produc->Id ?>')">
                                <i class="fa fa-minus"></i>
                            </a>
                        </div>
                        <div class="content_price">
                            <p><span class="price product-price" ng-bind-html="items.priceVnd"></span></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <?php
    }

    function HienThiMau($Pages, $function = "mau1")
    {
        $Model_Pages = new \Model\pages();
        $Note = $Model_Pages->_decode($Pages["Note"]);
        $this->$function($Pages);
    }

    function mau1($Pages)
    {
        $Model_news = new \Model\news();
        $newsByPage = $Model_news->NewsByPagesLimitNumber($Pages["idPa"], 5, FALSE);
    ?>
        <div>
            <div class="Mau1">
                <h2 class="text-center Mua1-title">
                    <?php echo $Pages["Name"]; ?>
                </h2>
                <div class="Mau1-Summary text-center">
                    <?php echo $Pages["Summary"]; ?>
                </div>
                <div class="Mau1-body" style="background-image: url('/public/bg/bg1.jpg')">
                    <div class="container">
                        <div class="">
                            <?php
                            foreach ($newsByPage as $_news) {
                                $news = new \Model\news($_news);
                            ?>
                                <div class="col-md-3 item">
                                    <div class="post">
                                        <div class="post-thumb image-hover2 " style="margin: auto;">
                                            <a href="<?php echo $news->linkNewsCurent(); ?>">
                                                <img onerror="this.src='/public/home/assets/data/option3/blog1.jpg'" class="img img-responsive" src="<?php echo $_news["UrlHinh"] ?>" alt="<?php echo $_news["Name"] ?>">
                                            </a>
                                        </div>
                                        <div class="post-desc">
                                            <h3 class="post-title text-center">
                                                <a href="#"><?php echo $_news["Name"] ?></a>
                                            </h3>
                                        </div>
                                    </div>
                                </div>
                            <?php
                            }
                            ?>

                        </div>
                    </div>
                </div>
                <!-- ./blog list -->
            </div>
        </div>
    <?php
    }

    function mau2($Pages)
    {
        $Model_news = new \Model\news();
        $newsByPage = $Model_news->NewsByPagesLimitNumber($Pages["idPa"], 5, FALSE);
    ?>
        <div>
            <!-- blog list -->
            <div class="Mau2">
                <h2 class="text-center Mua2-title">
                    <span><?php echo $Pages["Name"] ?></span>
                </h2>
                <div class="Mau2-body">
                    <div class="container">
                        <div class="">

                            <?php
                            foreach ($newsByPage as $_news) {
                                $news = new \Model\news($_news);
                            ?>
                                <div class="col-md-4 item">
                                    <div class="row">
                                        <div class="col-md-4 post-thumb  image-hover2 " style="margin: auto;">
                                            <div class="row">
                                                <a href="<?php echo $news->linkNewsCurent(); ?>">
                                                    <img onerror="this.src='/public/home/assets/data/option3/blog1.jpg'" class="img img-responsive" src="<?php echo $_news["UrlHinh"] ?>" alt="<?php echo $_news["Name"] ?>">
                                                </a>
                                            </div>
                                        </div>
                                        <div class="col-md-8 post-desc">
                                            <h3 class="post-title ">
                                                <a href="<?php echo $news->linkNewsCurent(); ?>"><?php echo $news->Name; ?></a>
                                            </h3>
                                            <p><?php echo $news->Summary; ?></p>
                                        </div>
                                    </div>
                                </div>
                            <?php
                            }
                            ?>
                        </div>
                    </div>
                </div>
                <!-- ./blog list -->
            </div>
        </div>
    <?php
    }

    function mau3($Pages)
    {
        $Model_news = new \Model\news();
        $newsByPage = $Model_news->NewsByPagesLimitNumber($Pages["idPa"], 5, FALSE);
        $MPages = new \Model\pages($Pages);
    ?>
        <div class="Mau3">
            <h2 class="text-center Mua2-title">
                <span><?php echo $Pages["Name"] ?></span>
            </h2>
            <div class="container">
                <div>
                    <div class="col-xs-12 col-sm-6 col-md-6" style="padding: 5px">
                        <div class="tin-chinh">
                            <a href="<?php echo $MPages->linkPagesCurent() ?>" title="<?php echo $MPages->Name ?>">
                                <span class="overlay"></span>
                                <img onerror="this.src='/public/home/assets/data/option3/blog1.jpg'" src="<?php echo $MPages->Urlimages ?>" alt="<?php echo $MPages->Name ?>" style="width:100%;">
                                <h2 class="tieu_de">
                                    <?php echo $MPages->Name ?>
                                </h2>
                            </a>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6" style="padding:0px">
                        <?php
                        for ($index = 0; $index < count($newsByPage) && $index < 4; $index++) {
                            $news = new \Model\news($newsByPage[$index]);
                        ?>
                            <div class="col-xs-6 col-sm-6 col-md-6" style="padding:5px">
                                <div class="tin-phu">
                                    <a href="<?php echo $news->linkNewsCurent() ?>" title="<?php echo $news->Name ?>">
                                        <span class="overlay"></span>
                                        <img onerror="this.src='/public/home/assets/data/option3/blog1.jpg'" src="<?php echo $news->UrlHinh ?>" alt="<?php echo $news->Name ?>" style="width:100%;">
                                        <h2 class="tieu_de_phu">
                                            <?php
                                            echo $news->Name
                                            ?>
                                        </h2>
                                    </a>
                                </div>
                            </div>
                        <?php
                        }
                        ?>

                    </div>
                </div>
            </div>
        </div>
    <?php
    }

    function mau4($Pages)
    {
        $Model_news = new \Model\news();
        $newsByPage = $Model_news->NewsByPagesLimitNumber($Pages["idPa"], 5, FALSE);
    ?>
        <div>
            <div class="container">
                <!-- blog list -->
                <div class="blog-list">
                    <h2 class="text-center Mua2-title">
                        <span><?php echo $Pages["Name"] ?></span>
                    </h2>
                    <div class="blog-list-wapper">
                        <ul class="owl-carousel" data-dots="false" data-loop="false" data-nav="false" data-margin="10" data-autoplayTimeout="1000" data-autoplayHoverPause="true" data-responsive='{"0":{"items":2},"600":{"items":3},"1000":{"items":6}}'>
                            <?php
                            for ($index = 0; $index < count($newsByPage) && $index < 4; $index++) {
                                $news = new \Model\news($newsByPage[$index]);
                            ?>
                                <li>
                                    <div class="post-thumb image-hover2">
                                        <a href="<?php echo $news->linkNewsCurent() ?>" title="<?php echo $news->Name ?>">
                                            <img onerror="this.src='/public/home/assets/data/option3/blog1.jpg'" src="<?php echo $news->UrlHinh ?>" alt="<?php echo $news->Name ?>" style="width:100%;height: 180px; ">
                                        </a>
                                    </div>
                                </li>
                            <?php
                            }
                            ?>

                        </ul>
                    </div>
                </div>
                <!-- ./blog list -->
            </div>
        </div>
<?php
    }

    function DeCodeHTML()
    {
        $str = ob_get_clean();
        $Content = new \Model\Content();
        $DSOption = $Content->Contents();
        if ($DSOption) {
            foreach ($DSOption as $k => $value) {
                $keystr = "__" . $k . "___";
                $str = str_replace($keystr, $value, $str);
            }
        }
        echo $str;
    }
}
