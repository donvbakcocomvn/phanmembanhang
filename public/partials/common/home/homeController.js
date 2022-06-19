app.controller("homeController", homeController);
function homeController($scope, $rootScope, $http, $routeParams) {

    var Version = window.localStorage.getItem("Version");

    $http.get("/api/version/").then(function(res) {
        window.localStorage.setItem("Version", JSON.stringify(res.data));
        if (Version) {
            Version = JSON.parse(Version);
            if (Version.Version != res.data.Version) {
                window.localStorage.clear();
                $http.get("/api/homeslide/").then(function(res) {
                    $scope._advHomeSlide = res.data;
                    window.localStorage.setItem("advHomeSlide", JSON.stringify(res.data));
                });
            }
        }
    });



    var Product = window.localStorage.getItem("HotProduct");
    if (Product) {
        $scope._Products = JSON.parse(Product);
    } else {
        $http.get("/api/getProductsHot/").then(function(res) {
            $scope._Products = res.data;
            window.localStorage.setItem("HotProduct", JSON.stringify(res.data));
        });
    }
    /**
     * HOme slide
     * @param {type} parameter
     */

    var advHomeSlide = window.localStorage.getItem("advHomeSlide");
    if (advHomeSlide) {
        $scope._advHomeSlide = JSON.parse(advHomeSlide);
    } else {
        $http.get("/api/homeslide/").then(function(res) {
            $scope._advHomeSlide = res.data;
            window.localStorage.setItem("advHomeSlide", JSON.stringify(res.data));
        });

    }
    /**
     * menus
     * @param {type} parameter
     */

    var allMenus = window.localStorage.getItem("allMenus");
    if (allMenus) {
        $scope._allMenus = JSON.parse(allMenus);
    } else {
        $http.get("/api/getMenus/").then(function(res) {
            $scope._allMenus = res.data;
            window.localStorage.setItem("allMenus", JSON.stringify(res.data));
        });

    }



    var advDanhMucNoiBat = window.localStorage.getItem("advDanhMucNoiBat");
    if (advDanhMucNoiBat) {
        $scope._advDanhMucNoiBat = JSON.parse(advDanhMucNoiBat);
    } else {
        $http.get("/api/danhmucnoibat/").then(function(res) {
            $scope._advDanhMucNoiBat = res.data;
            window.localStorage.setItem("advDanhMucNoiBat", JSON.stringify(res.data));
        });

    }
    var ProductView = window.localStorage.getItem("HotProductView");
    if (ProductView) {
        $scope._ProductsView = JSON.parse(ProductView);
    } else {
        $http.get("/api/getProductsHotView/").then(function(res) {
            $scope._ProductsView = res.data;
            window.localStorage.setItem("HotProductView", JSON.stringify(res.data));
        });
    }


    setTimeout(function() {
        $http.get("/api/updateHomeSlide/").then(function(res) {});
    }, 5000);

}