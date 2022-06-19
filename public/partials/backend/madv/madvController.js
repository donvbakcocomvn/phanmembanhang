const headerFormData = {headers: {"Content-Type": "application/x-www-form-urlencoded;charset=UTF-8"}};

app.controller("madvController", madvController);
app.directive("formThemGroups", function() {
    return {
        restrict: "EAC",
        templateUrl: "/madv/formthemgroups/"
    };
});
app.directive("listGroups", function() {
    return {
        restrict: "EAC",
        templateUrl: "/madv/listgroups/"
    };
});
app.directive("formThemQuangCao", function() {
    return {
        restrict: "EAC",
        templateUrl: "/madv/formthemquangcao/"
    };
});

function madvController($scope, $rootScope, $http, $routeParams) {
    $scope._Attribute = [];
    $scope._Advs = null;
    $scope.Video = {
        "Link": ""
        , "IsShow": true
    };
    $scope._DetailAdvs = null;
    $scope.madvInit = function() {

    }
    $scope.ToiUuHinhQuangCao = function(id) {
        $(id).addClass('fa-gear fa-spin');
        $http.get("/madv/toiuuhinhanh/").then(function(res) {
            console.log(res);
            $(id).removeClass('fa-gear fa-spin');
        });
    }
    $scope.getVideo = function() {
        $http.get("/madv/getVideo/").then(function(res) {
            $scope.Video = res.data;
            console.log(res.data);
        });
    }
    $scope.setImagesAdv = function(dataFileUrl, dataFinfer) {
    }
    $scope.saveVideo = function() {
        $scope.Video.Link = $("#UrlHinh").val();
        var dataPost = $scope.Video;
        $http({
            method: 'POST',
            url: "/madv/saveVideo/",
            headers: {'Content-Type': 'application/x-www-form-urlencoded'},
            transformRequest: function(obj) {
                var str = [];
                for (var p in obj)
                    str.push(encodeURIComponent(p) + "=" + encodeURIComponent(obj[p]));
                return str.join("&");
            },
            data: dataPost
        }).then(function(res) {
            console.log(res.data);
        });
    }

    $scope.ThemGroups = function(groups) {
        $http.post("/madv/postgroups/", $.param(groups), headerFormData).then(function(res) {
            window.alert(res.data.Mes);
            $scope.getAdvGroups();
        });
        return  false;
    }
    $scope.GetAdv = function() {
        $http.get("/madv/getAdvs").then(function(res) {
            $scope._Advs = res.data;
        });
    }
    $scope.getAdvGroups = function() {
        $http.get("/madv/getAdvGroups/").then(function(res) {
            $scope._AdvGroups = res.data.data;
        });
    }
    $scope.getAdvGroupsById = function(id) {
        $http.get("/madv/getAdvGroupsById/" + id).then(function(res) {
            $scope._GroupsDetail = res.data;
        });
    }
    $scope.SuaGroups = function(groups) {
        $http.post("/madv/putgroups/", $.param(groups), headerFormData).then(function(res) {
            window.alert(res.data.Mes);
        });
        return  false;
    }
    $scope.XoaGroups = function(id) {
        if (window.confirm("Bạn muốn xóa nhóm này?") == false) {
            return false;
        }
        $http.get("/madv/deletegroups/" + id).then(function(res) {
            window.alert(res.data.Mes);
            $scope.getAdvGroups();
            $('#SuaGroupAdv').modal("hide");
        });
    }
    $scope.SuaQuangCao = function(groups) {
        groups.EditAdv = "Luu";
        $http.post("/madv/editadv/", $.param(groups), headerFormData).then(function(res) {
            window.alert("Đã Lưu");
            $scope.GetAdv();
        });
        return false;
    }

    $scope.ThemQuangCao = function(groups) {
        try {
            console.log(groups);
            if (groups == undefined) {
                throw "Chưa nhập thông tin.";
            }
            if (groups.Name === undefined || groups.Name == "") {
                throw "Chưa Có Tên Quảng cáo";
            }
            if (groups.Link === undefined || groups.Link == "") {
                throw "Chưa Có Link Quảng cáo";
            }
            if (groups.Group === undefined) {
                throw "Chưa Có Nhóm Quảng cáo";
            }
            groups.Urlimages = $("#ThemUrlHinhQuangCao").val();
            if (groups.Urlimages === undefined || groups.Urlimages === "") {
                throw "Chưa Có Hình Quảng cáo";
            }
            $http.post("/madv/addadvApi/", $.param(groups), headerFormData).then(function(res) {
                $scope.GetAdv();
                $scope._AddAdvs = {};
                $("#ThemQuangCao").modal("hide");
                window.alert("Đã Lưu");
            });
        } catch (e) {
            window.alert(e);
        }

        return false;
    }

    $http.get("/madv/getAdvs").then(function(res) {
        $scope._Advs = res.data;
    });
    $http.get("/madv/getGroupAdvs").then(function(res) {
        $scope._GroupsAdv = res.data;
    });
    $scope.clickRemoveAtt = function(index) {
        $scope._Attribute.splice(index, 1);
    }
    $scope.clickAddAtt = function() {
        $scope._Attribute.push({key: "", value: ""});
    }

    $scope.clickSuaQuangCao = function(ID) {
        $scope._DetailAdvs = null;
        $http.get("/madv/getAdvsByID/" + ID).then(function(res) {
            $scope._editDetailAdvs = res.data;
            $scope._Attribute = JSON.parse($scope._editDetailAdvs.DataAttribute);
        });
    }
    $scope.clickCopyQuangCao = function(ID) {
//       tạo
        $scope._editDetailAdvs = null;
        $http.get("/madv/getAdvsByID/" + ID).then(function(res) {
            $scope._DetailAdvs = res.data;
            $scope._Attribute = JSON.parse($scope._DetailAdvs.DataAttribute);
        });
    }

}