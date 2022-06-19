app.controller("addressController", addressController);
function addressController($scope, $rootScope, $http, $routeParams) {
    $scope.Tinh = '32';
    $scope.Huyen = '33';

    $scope._GetTinhThanh = function() {
        $http.get('/api/GetTinhThanhQuanHuyen/0').then(function(res) {
            $scope._TinhThanh = res.data;
        });
    }
    $scope._GetQuanHuyen = function(id) {
        $http.get('/api/GetTinhThanhQuanHuyen/' + id).then(function(res) {
            $scope._QuanHuyen = res.data;
        });
    }
    $scope._GetQuanHuyen($scope.Tinh);


}