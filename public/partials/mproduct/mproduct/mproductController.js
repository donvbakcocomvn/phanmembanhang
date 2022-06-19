app.controller("mproductController", mproductController);
app.controller("phantrangController", phantrangController);
function phantrangController($scope, $rootScope, $http, $routeParams) {
    $scope.getArray = function(curentIndex, totalPages) {
        var a = new Array();
        var start = curentIndex - 3;
        start = Math.max(start, 1);
        var end = curentIndex + 3;
        end = Math.min(end, totalPages);
        for (var i = start; i <= end; i++) {
            a.push(i);
        }
        console.log(a);
        return a;
    }
}
app.directive("phanTrang", function() {
    return {
        restrict: 'AEC',
        templateUrl: "/mproduct/phantrang",
        controller: "phantrangController",
        scope: {
            pagesIndex: '=',
            pagesNumber: '=',
            pagesTotal: '=',
            pagesParams: '=',
            ctrlFn: '&onClick',
        },
        replace: true,
        transclude: false,
        link: function(scope, element, attrs, controller) {
            scope.onClick = function(seachProduct, pagesIndex, pagesNumber) {
                console.log(scope.pagesParams);
                if (typeof (scope.ctrlFn) == 'function') {
                    scope.ctrlFn({"Params": scope.pagesParams, "pagesIndex": pagesIndex, "pagesNumber": pagesNumber});
                }
            }
        }
    };
});

function mproductController($scope, $rootScope, $http, $routeParams) {

    $scope.seachProduct = "";
    $scope.getArray = function(curentIndex, totalPages) {
        var a = new Array();
        var start = curentIndex - 3;
        start = Math.max(start, 1);
        var end = curentIndex + 3;
        end = Math.min(end, totalPages);
        for (var i = start; i < end; i++) {
            a.push(i);
        }
        return a;
    }

    $http.get("/mproduct/getProductsPT/1/20").then(function(res) {
        $scope._listProductByCatID = res.data;
        console.log("_listProductByCatID");
    })
    $scope.TimKiemSanPham = function(kw, pagesIndex, numberIndex) {
        var keyword = kw.keyword;
        $http.get("/mproduct/getProductsPT/" + pagesIndex + "/" + numberIndex + "/" + keyword).then(function(res) {
            $scope._listProductByCatID = res.data;
            $scope.apply;
        })
    }
    $scope._CurentCategory = null;
    $http.get("/mproduct/getListCategory/").then(function(res) {
        $scope._listCategory = res.data;
    })

    $scope.savePriceProduct = function(item) {
        var data = {
            ID: item.ID
            , Price: item.Price
        }
        $http.post("/mproduct/savePriceProduct/", $.param(data), {headers: {"Content-type": "application/x-www-form-urlencoded; charset=utf-8"}}).then(function(res) {
            console.log(res);
        })
    }
    $scope.mproductNoPrice = function() {
        $http.get("/mproduct/productnopriceAjax/").then(function(res) {
            $scope._listProductNoPrice = res.data;
        })
    }
    $scope.mproductInit = function() {
    }
    $scope.clickSelectCategory = function(catID) {
        $scope._CurentCategory = catID;
        $http.get("/mcategory/getCategoryByID/" + catID).then(function(res) {
            $scope._Category = res.data;
        })
        $http.get("/mproduct/getProductsBycatID/" + catID).then(function(res) {
            $scope._listProductByCatID = res.data;
        })
        $("#modal-id").modal("hide");
    }

    $scope.getProductByName = function($name) {
        var data = {
            "Name": $name
        };
        $http.post("/mproduct/seachajax/", $.param(data), {headers: {"Content-type": "application/x-www-form-urlencoded; charset=utf-8"}}).then(function(res) {
            $scope._listProductByName = res.data;
        })
    }

}