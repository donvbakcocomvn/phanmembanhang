app.controller("mpageController", mpageController);
function mpageController($scope, $rootScope, $http, $routeParams) {
    $http.get("/mpage/getPages/").then(function (res) {
        $scope._Pages = res.data;
    });
    
    $scope.mpageInit = function () {
        
    }
    
}