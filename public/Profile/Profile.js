const headerFormData = {headers: {"Content-Type": "application/x-www-form-urlencoded;charset=UTF-8"}};
app.directive("leftMenu", function() {
    return {
        restrict: "EAC",
        controller: "profileController",
        templateUrl: "/profileapp/leftmenu/"
    };
});
app.directive("dashboardDesktop", function() {
    return {
        restrict: "EAC",
        controller: "profileController",
        templateUrl: "/profileapp/dashboardDesktop/"
    };
});
app.directive("backToHome", function() {
    return {
        restrict: "EAC",
        scope: {
            "title": "@"
        },
        controller: "profileController",
        templateUrl: "/profileapp/backtohome/"
    };
});
app.directive("backToLink", function() {
    return {
        restrict: "EAC",
        scope: {
            "title": "@",
            "tolink": "@"
        },
        controller: "profileController",
        templateUrl: "/profileapp/backtolink/"
    };
});
app.directive("userInfor", function() {
    return {
        restrict: "EAC",
        controller: "profileController",
        templateUrl: "/profileapp/userInfor/"
    };
});
app.directive("footerMobie", function() {
    return {
        restrict: "EAC",
        controller: "profileController",
        templateUrl: "/profileapp/footerMobie/"
    };
});
app.config(function($routeProvider) {
    $routeProvider
            .when("/thongtin", {
                templateUrl: "/profileapp/thongtin",
                controller: "profileController"
            })
            .when("/qrcode", {
                templateUrl: "/profileapp/qrcode",
                controller: "profileController"
            })
            .when("/lich-su", {
                templateUrl: "/profileapp/lichsugd",
                controller: "profileController"
            })
            .when("/don-hang", {
                templateUrl: "/profileapp/donhangs",
                controller: "profileController"
            })
            .when("/don-hang/:orderCode", {
                templateUrl: "/profileapp/donhangchitiet/",
                controller: "profileController"
            })
            .when("/don-hang/qrcode/:orderCode", {
                templateUrl: "/profileapp/donhangqrcode/",
                controller: "profileController"
            })
            .when("/quetmaqr", {
                templateUrl: "/profileapp/quetmaqr",
                controller: "profileController"
            })
            .when("/thongbao", {
                templateUrl: "/profileapp/thongbao",
                controller: "profileController"
            })
            .when("/", {
                templateUrl: "/profileapp/dashboard",
                controller: "profileController"
            });

});
app.controller("profileController", function($http, $scope, $routeParams) {
    $scope._OrderStatus = [

    ];

    $scope._Params = {"Status": 4, "Keyword": ""};
    $scope.GetStatusOrder = function() {
        $http.get("/apiprofile/getActionOrder/").then(function(res) {
            $scope._OrderStatus = res.data;
        });
    }
    $scope.LichSuGiaoDich = function() {
        $http.get("/apiprofile/GetLichSuGD/").then(function(res) {
            $scope._LichSuGiaoDich = res.data;
        });
    }

    $scope.DanhSachDonHang = function(Params, pagesIndex, pagesNumber) {
        /**
         * lấy danh sách don hàng
         * @param {type} parameter
         */
        Params.pagesIndex = pagesIndex;
        Params.pagesNumber = pagesNumber;
        $http.post("/apiprofile/Donhang/", $.param(Params), headerFormData).then(function(res) {
            $scope._DanhSachDonHang = res.data;
        });

    }
    $scope.TimDonHang = function(Params, pagesIndex, pagesNumber) {
        $scope.DanhSachDonHang(Params, pagesIndex, pagesNumber);
    }
    $scope.GetQuanHuyen = function(TinhThanh) {
        $http.get("/api/getQuanHuyen/" + TinhThanh).then(function(res) {
            $scope._QuanHuyen = res.data;
        });
    }
    $scope.getProfile = function() {
        $http.get("/profile/user/").then(function(res) {
            $scope._User = res.data;
            $scope._User.NgaySinh = new Date($scope._User.NgaySinh);
            $scope.GetQuanHuyen($scope._User.TinhThanh);
        });
    }
    $scope.profileInit = function() {
        $scope.getProfile();
    }
    $scope.TinhThanhChange = function(TinhThanh) {
        $http.get("/api/getQuanHuyen/" + TinhThanh).then(function(res) {
            $scope._QuanHuyen = res.data;
        });
    }
    $scope.SaveProfile = function() {
        if (window.confirm('Bạn Muốn Cập Nhật Thông Tin') == false) {
            return false;
        }
        var dataPost = $scope._User;
        var ngaysinh = new Date($scope._User.Nam, $scope._User.Thang - 1, $scope._User.Ngay);
        dataPost.NgaySinh = ngaysinh.toISOString();
        $http.post("/profile/save/", $.param(dataPost), headerFormData).then(function() {
            alert("Lưu Thành Công");
            $scope.getProfile();
        });
        return false;
    }
    $scope.DonHangChiTiet = function() {
        $http.post("/apiprofile/orderdetail/", $.param({"Id": $routeParams.orderCode}), headerFormData).then(function(res) {
            $scope._OrderDetail = res.data;
        });
        $scope.GetStatusOrder();
    }
    $scope.GetLinkQRCode = function() {
        $scope._orderCodeDetail = $routeParams.orderCode;
        var content = {
            "Code": $routeParams.orderCode
        };
        $scope._LinkQRCode = LinkGetQRCode + JSON.stringify(content);
        console.log($scope._LinkQRCode);
    }
    $scope.GetDashboard = function() {
        $http.get("/apiprofile/ThongKeDonHang/").then(function(res) {
            $scope._DashboardDesktop = res.data;
            console.log($scope._DashboardDesktop);
        });
    }
});


