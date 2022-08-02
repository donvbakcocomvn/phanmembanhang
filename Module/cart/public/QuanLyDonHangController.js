
app.controller("QuanLyDonHangController", function ($scope, $routeParams, $http) {
    $scope.MaDonHang = "10";
    $scope._OrderDetail = null;
    $http.get("/apibe/getcartt/").then(function (res) { 
        
    });
    $scope.onCheckOrder = async (id) => {
        await $http.get(`/apibe/getOrderDetail/${id}`).then((res) => {
            $scope._OrderDetail = res.data;
        });
    }
    $scope.onXoaSanPham = async (id) => {
        await $http.get(`/apibe/getOrderDetail/${id}`).then((res) => {
            $scope._OrderDetail = res.data;
        });
    }
});