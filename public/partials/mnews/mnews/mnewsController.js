app.controller("mnewsController", mnewsController);
app.directive("formSuaNhanhTinTuc", function() {
    return {
        restrict: "EAC",
        templateUrl: "/mnews/formsuanhanh/"
    };
});
function mnewsController($scope, $rootScope, $http, $routeParams) {

    $scope._pagesID = "";
    $scope._Seach = {"name": ""};
    $scope.mnewsInit = function() {

    }
    $scope.getNewsById = function(id) {
        $http.get("/mnews/getNewsByIdApi/" + id).then(function(res) {
            $scope._newsDetail = res.data;
        });
    }
    $scope.TimSanPhamIsShow = function(isShow) {
        $scope._Seach.isShow = isShow;
        $scope.SeachNews($scope._Seach, 1, 10);
    }
    $scope.SeachNews = function(Params, pagesIndex, pagesNumber) {
        Params.pageIndex = pagesIndex;
        Params.pageNumber = pagesNumber;
        if (Params.name != "") {
            if (Params.name.length <= 3) {
                return;
            }
        }
        $http.post("/mnews/getNewsByParams/", $.param(Params), headerFormData).then(function(res) {
            $scope._news = res.data;
            $scope._Seach = $scope._news.Params;
            console.log($scope._Seach.isShow);
            if ($scope._Seach.isShow == "" || $scope._Seach.isShow == undefined)
            {
                $scope._Seach.isShow = "1";
            }
        });
    }
    $scope.SaveNhanhTinTuc = function(params) {
        var dataParams = {"news": params};
        $http.post("/mnews/saveNewsApi/", $.param(dataParams), headerFormData).then(function(res) {
            $scope.getNewsById(res.data.data.ID);
            $scope.SeachNews($scope._Seach, 1, 10);
        });
    }
    $scope.clikGetNewsByPage = function(idPa) {
        $http.get("/mnews/getNewsByPages/" + idPa).then(function(res) {
            $scope.newsByPage = res.data;
            $scope._pagesID = idPa;
        })
    }
    if ($routeParams.pagesIndex == undefined) {
        $routeParams.pagesIndex = 1;
    }
    if ($routeParams.pagesIndex == undefined) {
        $scope._Seach.isShow = "all";
    } else {
        $scope._Seach.isShow = $routeParams.isshow;
    }
    $scope.SeachNews($scope._Seach, $routeParams.pagesIndex, 10);
}