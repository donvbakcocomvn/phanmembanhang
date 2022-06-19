app.controller("addproductController", addproductController);
function addproductController($scope, $rootScope, $http, $routeParams) {

    $http.get("/apibe/productCat/").then(function(res) {
        $scope._ListCategory = res.data;
    });
}