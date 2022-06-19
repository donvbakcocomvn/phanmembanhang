app.controller("editpageController", editpageController);
function editpageController($scope, $rootScope, $http, $routeParams) {

    $scope.editpageInit = function (page) {
        $scope.itemPage = page;
        $scope.itemPage.Note = JSON.parse(page["Note"]);

    }

}