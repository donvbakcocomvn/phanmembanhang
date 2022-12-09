const typeSuccess = "success";
const typeDangder = "dangder";
function Alert(type, ContentMes) {
  return;
  if (type == false) {
    type = "dangder";
  }
  var Content = `
    <div class="alert-left alert alert-_type_" data-auto-dismiss="3000" >
    _parameters_
    </div>
`;
  Content = Content.replace("_parameters_", ContentMes);
  Content = Content.replace("_type_", type);
  var AlertContent = document.getElementById("AlertContent");
  console.log(AlertContent);
  if (AlertContent == null) {
    $("body").append("<div id='AlertContent' ></div>");
  }
  $("#AlertContent").prepend(Content);
  $(".alert").each(function () {
    var htmlData = $(this).data();
    $(this)
      .fadeTo(htmlData.autoDismiss, 0)
      .slideUp(htmlData.autoDismiss, function () {
        $(this).remove();
      });
  });
}
const LinkGetQRCode = "/public/phpqrcode/index.php?data=";
app.directive("mobieHeader", function () {
  return {
    restrict: "AEC",
    templateUrl: "/component/mobieHeader/",
    controller: "phantrang1Controller",
  };
});
app.directive("desktopHeader", function () {
  return {
    restrict: "AEC",
    templateUrl: "/component/desktopheader/",
    controller: "phantrang1Controller",
  };
});

app.controller("phantrang1Controller", function ($scope) {
  $scope.getArrayIntPt = function (totalPages, pagesIndex) {
    totalPages = parseInt(totalPages);
    var a = new Array();
    var min = pagesIndex - 5;
    var max = pagesIndex + 5;
    // console.log(pagesIndex);
    min = Math.max(min, 1);
    min = Math.min(min, totalPages);
    max = Math.min(max, totalPages);
    max = Math.max(max, 1);
    // console.log(max);
    // console.log(min);
    // console.log(totalPages,"totalPages");
    // console.log(pagesIndex);
    for (var i = min; i <= max; i++) {
      a.push(i);
    }
    return a;
  };
  $scope.getArray = function (curentIndex, totalPages) {
    curentIndex = parseInt(curentIndex);
    totalPages = parseInt(totalPages);
    var a = new Array();
    var start = curentIndex - 3;
    start = Math.max(start, 1);
    var end = curentIndex + 3;
    end = Math.min(end, totalPages);
    for (var i = start; i <= end; i++) {
      a.push(i);
    }
    return a;
  };
  $scope.getArrayInt = function (totalPages) {
    totalPages = parseInt(totalPages);
    var a = new Array();
    for (var i = 1; i <= totalPages; i++) {
      a.push(i);
    }
    return a;
  };
  $scope.LinkPhanTrang = function (pagesIndex, pagesNumber) {
    if ($scope.pagesLink == null) {
      return;
    }
    var str = $scope.pagesLink;
    var res = str.replace("[i]", pagesIndex);
    res = res.replace("[j]", pagesNumber);
    return res;
  };
});
app.directive("phanTrang1", function () {
  return {
    restrict: "AEC",
    templateUrl: "/public/partials/phantrang.html",
    controller: "phantrang1Controller",
    scope: {
      pagesIndex: "=",
      pagesNumber: "=",
      pagesTotal: "=",
      pagesParams: "=",
      pagesLink: "@",
      ctrlFn: "&onClick",
    },
    replace: true,
    transclude: false,
    link: function (scope, element, attrs, controller) {
      scope.onClick = function (seachProduct, pagesIndex, pagesNumber) {
        if (typeof scope.ctrlFn == "function") {
          scope.ctrlFn({
            Params: scope.pagesParams,
            pagesIndex: pagesIndex,
            pagesNumber: pagesNumber,
          });
        }
      };
    },
  };
});

app.controller(
  "menuController",
  function ($scope, $rootScope, $http, $routeParams, $sce) {



    $http.get("/api/getMenus/menu").then(function (res) {
      $scope._Menu = res.data;
    });
    $scope.IntToArray = function (lengthArray) {
      return Array(lengthArray);
    };
    $scope.ToHtml = function (textHtml) {
      return $sce.trustAsHtml(textHtml);
    };
    $scope.seachKeyWord = "";
    $scope._danhMuc = "";
    $scope.DanhSachAllDonHang = async function (Params, pagesIndex, pagesNumber) {
      var params = {
        keyword: Params,
        danhmuc: $scope._danhMuc ?? "",
        number: pagesNumber,
        page: pagesIndex,
      };
      await $http.get("/api/Product/", { params: params }).then(function (res) {
        $scope._DanhSachSanPham = res.data;
      });
    }
    $scope.setDanhMuc = function (id) {
      $scope._danhMuc = id ?? "";
      $scope.TimKiemSanPham();
    }
    $scope.TimKiemSanPham = async function () {
      var params = {
        keyword: $scope.seachKeyWord,
        danhmuc: $scope._danhMuc ?? "",
      };
      await $http.get("/api/Product/", { params: params }).then(function (res) {
        $scope._DanhSachSanPham = res.data;
      });
    };

    $scope.getcarts = async function () {
      await $http.get("/api/getcarts/").then(function (res) {
        $scope._Cart = res.data;
        console.log($scope._Cart);
      });
    };
    $scope.getcarts();
    $scope.plusNumberProduct = async function (id) {
      await $http
        .get("/cart/index/plusNumberProduct/" + id)
        .then(function (res) {
          $scope.getcarts();
        });
    };
    $scope.updateNumberProduct = async function (id, number) {
      console.log(id);
      console.log(number);
      await $http
        .get("/cart/index/updateNumberProduct/" + id + "/" + number)
        .then(function (res) {
          $scope.getcarts();
        });
    };
    $scope.addProductCart = async function (id) {
      await $http.get("/cart/index/addproduct/" + id).then(function (res) {
        $scope.getcarts();
        Alert(typeSuccess, "Đã thêm sản phẩm");
      });
    };
    $scope.SanPhamByCode = (code) => {
      $http.get(`/api/AddToCartByCode/${code}`).then(function (res) {
        if (res.data) {
          $scope.addProductCart(res.data);
          $scope.MaSanPham = "";
        }
      });
    };
    $scope.removeProductCart = async function (id) {
      await $http.get("/cart/index/removeproduct/" + id).then(function (res) {
        $scope.getcarts();
        Alert(typeSuccess, "Đã bỏ sản phẩm");
      });
    };
    $scope.minuNumberProduct = async function (id) {
      await $http
        .get("/cart/index/minuNumberProduct/" + id)
        .then(function (res) {
          $scope.getcarts();
          Alert(typeSuccess, "Đã bỏ sản phẩm");
        });
    };
    $scope.XoaGioHang = function () {
      $http.get("/cart/index/clearcart/").then(function () {
        $scope.getcarts();
      });
    };
    $scope.GetOrderById = function (id) {
      $http.get(`/api/getorderbyid/${id}`).then(function (res) {
        $scope._CartByOrder = res.data;
      });
    };
  }
);
