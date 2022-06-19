app.config(function($routeProvider) {
    $routeProvider
            .when("/", {
                controller: "editnewsController",
                templateUrl: "/mnews/listnews/"
            })
            .when("/bainoibat", {
                controller: "editnewsController",
                templateUrl: "/mnews/listnews/"
            })
            .when("/seach/:isshow/:pagesIndex", {
                controller: "editnewsController",
                templateUrl: "/mnews/listnews/"
            })
            .when("/:pagesIndex", {
                controller: "editnewsController",
                templateUrl: "/mnews/listnews/"
            });
});
app.controller("editnewsController", editnewsController);
function editnewsController($scope, $rootScope, $http, $routeParams) {

    $http.get("/mnews/getPages").then(function(res) {
        $scope.PagesByType = res.data;
    });

    $scope.editnewsInit = function(news) {
        $http.get("/mnews/getnewById/" + news).then(function(res) {
            $scope._New = res.data;
            console.log($scope._New);
        });
    }

}