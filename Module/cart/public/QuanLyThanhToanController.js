app.config(function($routeProvider) {
    $routeProvider
            .when("/", {
                controller: "QuanLyThanhToanController",
                templateUrl: "/cart/xacnhandonhang/danhsachdonhang/"
            })
            .when("/blue", {
                templateUrl: "blue.htm"
            });
});

app.controller("QuanLyThanhToanController", function($scope, $routeParams, $http) {

});