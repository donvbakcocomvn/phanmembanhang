app.controller("newhotfooterController", newhotfooterController);
function newhotfooterController($scope, $rootScope, $http, $routeParams) {
    var listnewshot = window.localStorage.getItem("listnewshot");
    if (listnewshot) {
        $scope._listnewshot = JSON.parse(listnewshot);
    } else {
        $http.get("/api/gettintuchot/").then(function(res) {
            $scope._listnewshot = res.data;
            window.localStorage.setItem("listnewshot", JSON.stringify(res.data));
        });
    }

}
app.directive('myMainDirective', function() {
    return function(scope, element, attrs) {

    };
});
app.directive('myRepeatDirective', function() {
    return function(scope, element, attrs) {
        if (scope.$last) {
            $(".nglazyload").each(function() {
//                $(this).attr("data-src", $(this).data("imgsrc"));
            });
//            lazySizes.cfg.lazyClass = 'nglazyload';
        }
    };
});