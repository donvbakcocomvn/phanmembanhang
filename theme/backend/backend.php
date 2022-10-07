<?php

namespace theme\backend;

use Module\duser\Model\Duser;

class backend extends \Model\Database
{

    function head()
    {
?>
        <link rel="shortcut icon" href="/public/no-image.jpg" />
        <!-- Bootstrap 3.3.5 -->
        <link rel="stylesheet" href="/public/admin/bootstrap/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="/public/admin/dist/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="/public/admin/dist/css/skins/_all-skins.min.css">
        <!-- iCheck -->
        <link rel="stylesheet" href="/public/admin/plugins/iCheck/flat/blue.css">
        <!-- Morris chart -->
        <link rel="stylesheet" href="/public/admin/plugins/morris/morris.css">
        <!-- jvectormap -->
        <link rel="stylesheet" href="/public/admin/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
        <!-- Date Picker -->
        <link rel="stylesheet" href="/public/admin/plugins/datepicker/datepicker3.css">
        <!-- Daterange picker -->
        <link rel="stylesheet" href="/public/admin/plugins/daterangepicker/daterangepicker-bs3.css">
        <!-- bootstrap wysihtml5 - text editor -->
        <link rel="stylesheet" href="/public/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
        <link href="/public/admin/plugins/select2/select2.min.css" rel="stylesheet" type="text/css" />
        <link href="/public/admin/CustomCss.css?v=<?php echo filemtime("public/admin/CustomCss.css"); ?>" rel="stylesheet" type="text/css" />
        <script src="/public/ckfinder/ckfinder.js" type="text/javascript"></script>
        <!-- jQuery 2.1.4 -->
        <script src="/public/admin/plugins/jQuery/jQuery-2.1.4.min.js"></script>


    <?php
    }

    function Menu()
    {
        $user = Duser::CurentUsernameAdmin(true);
    ?>
        <header class="main-header ">
            <!-- Logo -->
            <a href="/backend/" class="logo">
                <span class="logo-mini"><b>A</b>LT</span>
                <span class="logo-lg"><b>Quản Trị</b></span>
            </a>
            <nav class="navbar navbar-static-top" role="navigation">
                <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                </a>
                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
                        <li><a href="/" target="_blank">Xem Website</a></li>
                        <li class="hidden dropdown messages-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-envelope-o"></i>
                                <span class="label label-success">4</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 4 messages</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li>
                                            <!-- start message -->
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="/public/user_no_photo.png" class="img-circle" alt="User Image">
                                                </div>
                                                <h4>
                                                    Support Team
                                                    <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li><!-- end message -->
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="/public/user_no_photo.png" class="img-circle" alt="User Image">
                                                </div>
                                                <h4>
                                                    AdminLTE Design Team
                                                    <small><i class="fa fa-clock-o"></i> 2 hours</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="/public/admin/dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                                                </div>
                                                <h4>
                                                    Developers
                                                    <small><i class="fa fa-clock-o"></i> Today</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="/public/admin/dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                                                </div>
                                                <h4>
                                                    Sales Department
                                                    <small><i class="fa fa-clock-o"></i> Yesterday</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="/public/admin/dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                                                </div>
                                                <h4>
                                                    Reviewers
                                                    <small><i class="fa fa-clock-o"></i> 2 days</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="footer"><a href="#">See All Messages</a></li>
                            </ul>
                        </li>
                        <!-- Notifications: style can be found in dropdown.less -->
                        <li class="hidden dropdown notifications-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-bell-o"></i>
                                <span class="label label-warning">10</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 10 notifications</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-users text-aqua"></i> 5 new members joined today
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the page and may cause design problems
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-users text-red"></i> 5 new members joined
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-shopping-cart text-green"></i> 25 sales made
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-user text-red"></i> You changed your username
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="footer"><a href="#">View all</a></li>
                            </ul>
                        </li>
                        <!-- Tasks: style can be found in dropdown.less -->
                        <li class="hidden dropdown tasks-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-flag-o"></i>
                                <span class="label label-danger">9</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 9 tasks</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li>
                                            <!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Design some buttons
                                                    <small class="pull-right">20%</small>
                                                </h3>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">20% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                        <li>
                                            <!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Create a nice theme
                                                    <small class="pull-right">40%</small>
                                                </h3>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-green" style="width: 40%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">40% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                        <li>
                                            <!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Some task I need to do
                                                    <small class="pull-right">60%</small>
                                                </h3>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-red" style="width: 60%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">60% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                        <li>
                                            <!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Make beautiful transitions
                                                    <small class="pull-right">80%</small>
                                                </h3>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-yellow" style="width: 80%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">80% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                    </ul>
                                </li>
                                <li class="footer">
                                    <a href="#">View all tasks</a>
                                </li>
                            </ul>
                        </li>
                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="/public/user_no_photo.png" class="user-image" alt="User Image">
                                <span class="hidden-xs"><?php echo $user->Name ?></span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- User image -->
                                <li class="user-header">
                                    <img src="/public/user_no_photo.png" class="img-circle" alt="User Image">
                                    <p>
                                        <?php echo $user->Name ?>
                                        <small><?php echo $user->Username ?></small>
                                    </p>
                                </li>
                                <!-- Menu Footer-->
                                <li class="user-footer">
                                    <div class="pull-left">
                                        <a href="/duser/aprofile" class="btn btn-default btn-flat">Tài Khoản</a>
                                    </div>
                                    <div class="pull-right">
                                        <a href="/backend/logout" class="btn btn-default btn-flat">Đăng Xuất</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <!-- Control Sidebar Toggle Button -->
                    </ul>
                </div>
            </nav>
        </header>
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="main-sidebar" ng-controller="bklayoutController" ng-init='bklayoutInit(<?php echo $this->_encode($_SESSION[QuanTri]); ?>)'>
            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar ">
                <!-- Sidebar user panel -->
                <div class="user-panel">
                    <div class="pull-left image">
                        <img src="/public/user_no_photo.png" class="img-circle" alt="User Image">
                    </div>
                    <div class="pull-left info">
                        <p>{{DangNhap.Name}}</p>
                        <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                    </div>
                </div>
                <ul class="sidebar-menu ">
                    <li class="header text-center text-uppercase " style="color: #ddd;"><b>Danh Mục Chức Năng</b></li>
                    <li class="treeview hidden">
                        <a href="/cart/mcart/donhangcuatoi">
                            <i class="fa fa-list"></i> <span>Đơn Hàng Của Tôi</span>
                        </a>
                    </li>
                    <?php
                    if (Duser::KiemTraQuyen([Duser::admin, Duser::NhanVien,  Duser::Superadmin])) {
                    ?>
                        <!-- <li class="treeview">
                            <a href="/cart/xacnhandonhang/index/">
                                <i class="fa fa-dollar"></i> <span>XN Nhận Tiền</span>
                            </a>
                        </li> -->
                    <?php
                    }

                    if (Duser::KiemTraQuyen([Duser::admin, Duser::NhanVien, Duser::QuanLy, Duser::Superadmin])) {
                    ?>
                        <li><a href="/cart/vieworder"><i class="fa fa-shopping-cart"></i> <span>Quản Lý Đơn Hàng</span></a></li>

                    <?php
                    }
                    if (Duser::KiemTraQuyen([Duser::admin, Duser::QuanLy, Duser::Superadmin])) {
                    ?>
                        <li class="treeview <?php echo \Model\menuactive::SetActive('mproduct'); ?>">
                            <a href="/mproduct/index">
                                <i class="fa fa-list-alt"></i> <span>Quản Lý Sản Phẩm</span>
                                <i class="fa fa-angle-right pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li>
                                    <a href="/mcategory/index"><i class="fa fa-list-alt"></i>
                                        <span>Danh Mục Sản Phẩm</span>
                                    </a>
                                </li>
                                <li><a href="/mproduct/index">
                                        <i class="fa fa-circle-o"></i>
                                        Quản Lý Sản Phẩm
                                    </a>
                                </li>
                                <!-- <li><a href="/mproduct/sanphamhtheohinh"><i class="fa fa-circle-o"></i> Thêm Nhanh</a></li> -->
                            </ul>
                        </li>
                    <?php
                    }
                    if (Duser::KiemTraQuyen([Duser::admin, Duser::NhanVien, Duser::QuanLy, Duser::Superadmin])) {
                    ?>

                    <?php
                    }

                    if (Duser::KiemTraQuyen([Duser::admin, Duser::NhanVien, Duser::QuanLy, Duser::Superadmin])) {
                    ?>

                    <?php
                    }
                    if (Duser::KiemTraQuyen([Duser::admin, Duser::Superadmin])) {
                    ?>
                        <li class="treeview">
                            <a href="/setting/index/">
                                <i class="fa fa-gear"></i> <span>Cài Đặt</span>
                                <i class="fa fa-angle-right pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li class="treeview">
                                    <a href="/options/khoa/">
                                        <i class="fa fa-list-alt"></i> <span>Danh Sách Khoa</span>
                                    </a>
                                </li>

                                <?php
                                if (Duser::KiemTraQuyen([Duser::admin, Duser::Superadmin])) {
                                ?>
                                    <li class="treeview">
                                        <a href="/backend/hinhanh">
                                            <i class="fa fa-image"></i> <span>Thư Viện Hình</span>
                                        </a>
                                    </li>
                                    <!-- <li class="treeview">
                                        <a href="/brand/index">
                                            <i class="fa fa-image"></i> <span>Thương Hiệu</span>
                                        </a>
                                    </li> -->

                                <?php
                                }
                                if (Duser::KiemTraQuyen([Duser::admin, Duser::Superadmin])) {
                                ?>
                                    <li class="treeview">
                                        <a href="/duser/index/index">
                                            <i class="fa fa-list-alt"></i> <span>Quản Lý User</span>
                                        </a>
                                    </li>
                                <?php
                                }
                                ?>
                                <li class="treeview hidden <?php echo \Model\menuactive::SetActive('mnews'); ?> ">
                                    <a href="/mpage/index">
                                        <i class="fa fa-list-alt"></i> <span>Quản Lý Bài Viết</span>
                                        <i class="fa fa-angle-right pull-right"></i>
                                    </a>
                                    <ul class="treeview-menu">
                                        <li><a href="/mpage/index"><i class="fa fa-circle-o"></i> Trang </a></li>
                                        <li><a href="/newscategory/index"><i class="fa fa-circle-o"></i> Danh mục bài biết</a></li>
                                        <li><a href="/mnews/index"><i class="fa fa-circle-o"></i> Bài viết</a></li>
                                        <li><a href="/mnews/addnews"><i class="fa fa-circle-o"></i> Thêm Bài viết</a></li>
                                    </ul>
                                </li>
                                <li class="treeview ">
                                    <a href="/mtheme/">
                                        <i class="fa fa-list-alt"></i> <span>Quản Lý Giao Diện</span>

                                    </a>
                                </li>
                                <li class="treeview">
                                    <a href="/minfor/index/thongtincongty">
                                        <i class="fa fa-list-alt"></i>
                                        <span>Thông tin công ty</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="/cart/mcart/trangnoidung/">
                                        <i class="fa fa-gear"></i>
                                        <span>Cấu Hình Đặt Hàng</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="/cart/mcart/trangdathangthatbai/">
                                        <i class="fa fa-gear"></i>
                                        <span>Trang đặt hàng thất bại</span>
                                    </a>
                                </li>
                                <li class="hidden">
                                    <a href="/mail/index/index/MaiThongBaoDonHang">
                                        <i class="fa fa-envelope"></i>
                                        <span>Cài Đặt Mail Đơn Hàng</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    <?php
                    }
                    ?>
                </ul>

            </section>
            <!-- /.sidebar -->
        </aside>
    <?php
    }

    function js()
    {
    ?>

        <!-- jQuery UI 1.11.4 -->
        <script src="/public/admin/plugins/jQueryUI/jquery-ui.min.js" type="text/javascript"></script>
        <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
        <script>
            $.widget.bridge('uibutton', $.ui.button);
        </script>
        <!-- Bootstrap 3.3.5 -->
        <script src="/public/admin/bootstrap/js/bootstrap.min.js"></script>
        <!-- Morris.js charts -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
        <script src="/public/admin/plugins/morris/morris.min.js"></script>
        <script src="/public/admin/plugins/select2/select2.min.js" type="text/javascript"></script>
        <!-- Sparkline -->
        <script src="/public/admin/plugins/sparkline/jquery.sparkline.min.js"></script>
        <!-- jvectormap -->
        <script src="/public/admin/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
        <script src="/public/admin/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
        <!-- jQuery Knob Chart -->
        <script src="/public/admin/plugins/knob/jquery.knob.js"></script>
        <!-- daterangepicker -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
        <script src="/public/admin/plugins/daterangepicker/daterangepicker.js"></script>
        <!-- datepicker -->
        <script src="/public/admin/plugins/datepicker/bootstrap-datepicker.js"></script>
        <!-- Bootstrap WYSIHTML5 -->
        <script src="/public/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
        <!-- Slimscroll -->
        <script src="/public/admin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
        <!-- FastClick -->
        <script src="/public/admin/plugins/fastclick/fastclick.min.js"></script>
        <!-- AdminLTE App -->
        <script src="/public/admin/dist/js/app.min.js"></script>
        <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
        <script src="/public/admin/dist/js/pages/dashboard.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="/public/admin/dist/js/demo.js"></script>
        <script type="text/javascript" src="/public/admin/AppTheme.js?v=<?php echo filemtime('public/admin/AppTheme.js'); ?>"></script>
        <script src="/public/admin/App.js?v=<?php echo filemtime('public/admin/App.js'); ?>" type="text/javascript"></script>
<?php
    }

    function Breadcrumb()
    {
        $brea = new \Model\Breadcrumb();
        $brea->backend();
    }
}
