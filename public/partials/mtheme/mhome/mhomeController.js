app.controller("mhomeController", mhomeController);
function mhomeController($scope, $rootScope, $http, $routeParams) {
    $scope.Theme = "home1";
    $scope.itemDanhMuc = {
        DanhMuc: "29",
    };
    $http.get("/mpage/getPages/").then(function(res) {
        $scope.ListPages = res.data;

    });
    $http.get("/mpage/ListDanhMuc/").then(function(res) {
        $scope.ListDanhMuc = res.data;
    });

    $scope.mhomeInit = function(theme, ConfigHome) {
        $scope.Theme = theme;
        $scope.Home = ConfigHome;
    }

    $scope.clickAdddisplayPosition = function() {
        $scope.Home.displayPosition.push(
                {
                    DanhMuc: "29",
                    Mau: "mau3"
                }
        );
    }

    $scope.clickAddList = (item, $lis) => {
        $lis.push(item);
    }
    $scope.clickRemoveList = (index, $lis) => {
        $lis.splice(index, 1);
    }


}