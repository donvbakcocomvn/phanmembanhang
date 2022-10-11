$(document).keydown(function (event) {
  if ((event.ctrlKey || event.metaKey) && event.which == 83) {
    event.preventDefault();
    $("[onCtrlS]").each(function (e) {
      var command = $(this).attr("onCtrlS");
      command = command.replace("this", "$(this)");
      eval(command);
    });
  }
  if ((event.ctrlKey || event.metaKey) && event.which == 77) {
    event.preventDefault();
    $("[onCtrlM]").each(function (e) {
      var command = $(this).attr("onCtrlM");
      command = command.replace("this", "$(this)");
      eval(command);
    });
  }
});
$(function () {
  var bodyclass = window.localStorage.getItem("bodyclass");
  $("body").addClass(bodyclass);
  var height = $(window).height();
  console.log(height);
  $("#mainifame").height(height - 160);
  $(".sidebar-toggle").click(function (e) {
    var hasClass = $("body").hasClass("sidebar-collapse");
    //        console.log(hasClass);
    if (hasClass) {
      window.localStorage.setItem("bodyclass", "sidebar-collapse");
    } else {
      window.localStorage.setItem("bodyclass", "");
    }
  });
});
app.directive("formSuaNhanh", function () {
  return {
    restrict: "EAC",
    templateUrl: "/mproduct/suanhanhform/",
  };
});
app.directive("donhangChitiet", function () {
  return {
    restrict: "EAC",
    templateUrl: "/cart/mcart/donhangchitiet/",
  };
});
app.directive("suaDonhangChitiet", function () {
  return {
    restrict: "EAC",
    templateUrl: "/cart/mcart/suadonhangchitiet/",
  };
});
app.directive("gioHang", function () {
  return {
    restrict: "EAC",
    templateUrl: "/cart/mcart/giohang/",
  };
});
app.directive("thongTinKhachHang", function () {
  return {
    restrict: "EAC",
    templateUrl: "/cart/mcart/thongtinkhachhang/",
  };
});
function pad_with_zeroes(number, length) {
  var my_string = "" + number;
  while (my_string.length < length) {
    my_string = "0" + my_string;
  }
  return my_string;
}
app.controller("appController", function ($http, $scope) {
  $scope.darkmode = JSON.parse(window.localStorage.getItem("darkmode"));
  console.log($scope.darkmode);
  if ($scope.darkmode == true) {
    $("body").addClass("dark-mode");
  } else {
    $("body").removeClass("dark-mode");
  }
  $scope.setDarkode = function (isDarkode) {
    window.localStorage.setItem("darkmode", isDarkode);
    if (isDarkode == true) {
      $("body").addClass("dark-mode");
    } else {
      $("body").removeClass("dark-mode");
    }
  };

  $scope.NgBrowseServer = function (startupPath, IdHinh, cbFunction) {
    var finder = new CKFinder();
    finder.startupPath = startupPath;
    finder.selectActionFunction = function (fileUrl, data) {
      if (typeof $scope.cbFunction == "function") {
        console.log("aa");
        $scope.cbFunction({ dataFileUrl: fileUrl, dataFinfer: data });
      }
    };
    finder.selectActionData = IdHinh;
    finder.selectThumbnailActionFunction = function (fileUrl, data) { };
    finder.popup();
  };
});
app.controller("pagesindexController", function ($http, $scope) {
  $scope.GetProductById = function (id) {
    $http.get("/apibe/GetProductById/" + id).then(function (res) {
      $scope._Product = res.data;
    });
  };
  $scope.productCategory = function () {
    $http.get("/apibe/productCat/").then(function (res) {
      $scope._ProductCat = res.data;
      console.log($scope._ProductCat);
    });
  };
  $scope.productStatus = function () {
    $http.get("/apibe/productStatus/").then(function (res) {
      $scope._ProductStatus = res.data;
    });
  };
  $scope.SaveProduct = async function () {
    await $http
      .post("/apibe/SaveProduct/", $.param($scope._Product), headerFormData)
      .then(function (res) {
        console.log(res.data);
      });
  };
  $scope.TaoMaSanPham = function (_Product) {
    var Id = parseInt(_Product.ID);
    var code = _Product.Category.Code + pad_with_zeroes(Id, 4);
    _Product.Code = code;
  };
  $scope.productCategory();
  $scope.productStatus();
});
app.controller("usersCotroller", function ($http, $scope) {
  $http.get("/apibe/userGroups/").then(function (res) {
    $scope._GroupsUser = res.data;
    console.log($scope._GroupsUser);
  });

  $scope.typePasswod = "password";
  $scope.SetTypePassword = () => {
    $scope.typePasswod = $scope.typePasswod == "password" ? "text" : "password";
  }
  $scope.SetPassword = () => {
    var randomstring = Math.random().toString(36).slice(-8);
    $scope.Matkhau = randomstring;
  }


});
app.controller("giohangCotroller", function ($http, $scope) {
  $http.get("/apibe/DSKhoaBenh/").then(function (res) {
    $scope._KhoaBenhs = res.data;
  });
  $scope.TimKiemNhanVien = function (key) {
    $http.get("/apibe/timnhanvien/" + key).then(function (res) {
      $scope._NhanViens = res.data;
    });
  };
  $scope.StatusCode = {
    Huy: 0,
    ThatBai: 1,
    ThanhCong: 2,
    DangXuLy: 3,
    MoiDat: 4,
    DaThuTien: 5,
    DaNopTienVeCty: 6,
    XacNhanDonHang: 7,
  };
  $scope.ShowLyDo = false;
  $scope.ShowChuyenNhanVien = false;
  $scope.ChonNhanVien = function (item) {
    console.log($scope._NhanVien);
    $scope._NhanVien = item;
  };

  $scope.Order = {};
  $scope.GetOrderDetail = function (id) {
    $http.get("/apibe/getOrderDetail/" + id + "/").then(function (res) {
      $scope._OrderDetail = res.data;
    });
  };
  $scope.ChuyenDonHang = function (username, orderCode) {
    var data = {
      Username: username,
      orderCode: orderCode,
    };
    $http
      .post("/apibe/chuyenDonHang/", $.param(data), headerFormData)
      .then(function (res) {
        $scope.GetOrderDetail(orderCode);
        alert(res.data.Mes);
      });
    $scope._NhanVien = {};
  };
  $scope.TimThongTinKhachHangTheoSDT = function (phone) {
    if (phone.length < 10) {
      return;
    }
    $http.get("/apibe/getuserInformation/" + phone).then((res) => {
      $scope.Order = res.data;
      $scope.Order.Duong = $scope.Order.DiaChi;
      $scope._Tinh = $scope.Order.Tinh;
      $scope._Huyen = $scope.Order.Huyen;
    });
  };

  $scope.XoaSanPhamDonHang = function (item, CodeOrder) {
    $http.get(`/apibe/XoaSanPhamDonHang/${item.Id}`).then(function (res) {
      console.log(CodeOrder);
      console.log(item);
      $scope.GetOrderDetail(CodeOrder);
    });

  }

  $scope.ThemSanPhamDonHang = function (param, CodeOrder) {
    if (param == "") {
      return;
    }
    $http.get(`/apibe/ThemSanPhamDonHang/${param}/${CodeOrder}/`).then(function (res) {
      $scope.GetOrderDetail(CodeOrder);
    });
  }

  $scope.SuaSanPhamDonHang = function (item, CodeOrder, ls) {
    console.log(CodeOrder);
    item.Number += (1 * ls);
    item.Number = Math.max(item.Number, 1);
    console.log(item);
    $http.get(`/apibe/SuaSanPhamDonHang/${item.Id}/${item.Number}`).then(function (res) {
      console.log(CodeOrder);
      console.log(item);
      $scope.GetOrderDetail(CodeOrder);
    });

  }


  $scope.ShowLyDoAction = function () {
    $scope.ShowChuyenNhanVien = false;
    $scope.ShowLyDo = !$scope.ShowLyDo;
  };
  $scope.ShowChuyenNhanVienAction = function () {
    $scope.ShowLyDo = false;
    $scope.ShowChuyenNhanVien = !$scope.ShowChuyenNhanVien;
  };
  $scope.HuyDonHang = function (lydo, id) {
    var data = { LyDo: lydo, Id: id };
    $http
      .post("/apibe/HuyDonHang/", $.param(data), headerFormData)
      .then(function (res) {
        window.alert(res.data.Mes);
        window.location.reload();
      });
  };
  $scope.LuuThongTinKhachHanh = function (_Tinh, _Huyen, Order) {
    var data = {
      KhachHang: {
        Name: Order.Name,
        Username: Order.Phone,
        Phone: Order.Phone,
        Email: Order.Email,
        Tinh: _Tinh,
        Huyen: _Huyen,
        DiaChi: Order.Duong,
        Password: "",
      },
    };
    $http
      .post("/apibe/saveInformationCustomer/", $.param(data), headerFormData)
      .then((res) => {
        console.log(res);
      });
  };
  $scope.OrderStatus = async function () {
    if ($scope._OrderStatus == null) {
      await $http.get("/apibe/OrderStatus/").then(function (res) {

        $scope._OrderStatus = res.data;

      });
    }
  };

  $scope.DanhSachDonHangNhanVien = async function (
    Params,
    pagesIndex,
    pagesNumber
  ) {
    await $http
      .post(
        "/apibe/GetOrdersByUserName/" + pagesIndex + "/" + pagesNumber + "/",
        $.param(Params),
        headerFormData
      )
      .then(function (res) {
        $scope._DanhSachDonHang = res.data;
      });
  };
  $scope.DanhSachAllDonHang = async function (Params, pagesIndex, pagesNumber) {
    await $http
      .post(
        "/apibe/GetAllOrders/" + pagesIndex + "/" + pagesNumber + "/",
        $.param(Params),
        headerFormData
      )
      .then(function (res) {
        $scope._DanhSachDonHang = res.data;
      });
  };
  $scope.getcarts = async function () {
    await $http.get("/api/getcarts/").then(function (res) {
      $scope._CartsProduct = res.data;
      console.log($scope._CartsProduct);
    });
  };
  $scope.ClearCart = async function () {
    await $http.get("/cart/index/clearcart/").then(function (res) {
      $scope._CartsProduct = res.data;
      console.log($scope._CartsProduct);
    });
  };
  $scope.plusNumberProduct = async function (id) {
    await $http.get("/cart/index/plusNumberProduct/" + id).then(function (res) {
      $scope.getcarts();
    });
  };
  $scope.addProductCart = async function (id) {
    await $http.get("/cart/index/addproduct/" + id).then(function (res) {
      $scope.getcarts();
      $scope.TuKhoaMaSP = "";
      $scope.TimKiemSanPham("");
    });
  };
  $scope.removeProductCart = async function (id) {
    await $http.get("/cart/index/removeproduct/" + id).then(function (res) {
      $scope.getcarts();
    });
  };
  $scope.minuNumberProduct = async function (id) {
    await $http.get("/cart/index/minuNumberProduct/" + id).then(function (res) {
      $scope.getcarts();
    });
  };

  $scope.DataThuTienDonHang = function (id) {
    if (window.confirm("Bạn đã thu tiền đơn hàng?") == false) {
      return;
    }
    var data = { Id: id };
    $http
      .post("/apibe/DataThuTienDonHang/", $.param(data), headerFormData)
      .then(function (res) {
        //            $scope._OrderDetail = res.data;
        $scope.GetOrderDetail(id);
        window.alert(res.data.Mes);
      });
  };

  $scope.DaNopTienVeCongTy = function (id) {
    if (window.confirm("Bạn đã nộp tiền về công ty?") == false) {
      return;
    }
    var data = { Id: id };
    $http
      .post("/apibe/DaNopTienVeCty/", $.param(data), headerFormData)
      .then(function (res) {
        //            $scope._OrderDetail = res.data;
        $scope.GetOrderDetail(id);
        window.alert(res.data.Mes);
      });
  };

  $scope.XacNhanDonHang = function (id) {
    if (window.confirm("Bạn muốn xác nhận đơn hàng?") == false) {
      return;
    }
    var data = { Id: id };
    $http
      .post("/apibe/XacNhanDonHang/", $.param(data), headerFormData)
      .then(function (res) {
        //            $scope._OrderDetail = res.data;
        $scope.GetOrderDetail(id);
        window.alert(res.data.Mes);
      });
  };

  $scope.TimKiemSanPham = function (keyword) {
    $http.get("/apibe/getProductsByName/" + keyword).then(function (res) {
      $scope._ProductsCart = res.data;
      console.log($scope._ProductsCart);
    });
  };

  $scope.TaoDonHang = function (_Tinh, _Huyen) {
    try {
      var data = {};
      data.CartsProduct = $scope._CartsProduct;
      $scope.Order.Tinh = _Tinh;
      $scope.Order.Huyen = _Huyen;
      data.Order = $scope.Order;
      if (data.Order.Name === undefined) {
        throw "Chưa có tên khách hàng";
      }
      if (data.Order.Phone === undefined) {
        throw "Chưa có SĐT khách hàng";
      }
      if (data.Order.Duong === undefined) {
        throw "Chưa có Địa Chỉ khách hàng";
      }
      if (data.CartsProduct.SumProduct == 0) {
        throw "Chưa có sản phẩm";
      }
      if (window.confirm("Bạn có muốn tạo đơn hàng?") == false) {
        return;
      }
      $http
        .post("/cart/mcart/taodonhang/", $.param(data), headerFormData)
        .then(function (res) {
          $scope.getcarts();
          $scope.GetOrderDetail(res.data.CodeOrder);
        });
    } catch (e) {
      alert(e);
    }
  };
});
app.controller(
  "diachiController",
  function ($scope, $rootScope, $http, $routeParams) {
    $scope._Tinh = "32";
    $scope._Huyen = "33";
    $scope.GetQuanHuyen = function (id) {
      $http.get("/api/GetTinhThanhQuanHuyen/" + id + "/").then((res) => {
        $scope._QuanHuyen = res.data;
      });
    };
    $scope.GetTinhThanh = function () {
      $http.get("/api/GetTinhThanhQuanHuyen/0/").then((res) => {
        $scope._TinhThanh = res.data;
      });
      $scope.GetQuanHuyen($scope._Tinh);
    };
  }
);
app.controller("phantrang1Controller", function ($scope) {
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
  $scope.getArrayIntPt = function (totalPages, pagesIndex) {
    totalPages = parseInt(totalPages);
    var a = new Array();
    var min = pagesIndex - 5;
    var max = pagesIndex + 5;
    min = Math.max(min, 1);
    max = Math.min(max, totalPages);
    for (var i = min; i <= max; i++) {
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
