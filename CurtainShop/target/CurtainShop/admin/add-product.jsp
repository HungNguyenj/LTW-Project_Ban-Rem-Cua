<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Thêm sản phẩm | Quản trị Admin</title>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Main CSS-->
  <link rel="stylesheet" type="text/css" href="../css/admin/main.css">
  <!-- Font-icon css-->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
  <!-- or -->
  <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
  <link rel="stylesheet" type="text/css"
    href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

  <script src="http://code.jquery.com/jquery.min.js" type="text/javascript"></script>
  <script>

    function readURL(input, thumbimage) {
      if (input.files && input.files[0]) { //Sử dụng  cho Firefox - chrome
        var reader = new FileReader();
        reader.onload = function (e) {
          $("#thumbimage").attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
      }
      else { // Sử dụng cho IE
        $("#thumbimage").attr('src', input.value);

      }
      $("#thumbimage").show();
      $(".removeimg").show();


    }
    $(document).ready(function () {

      $(".removeimg").click(function () {
        $("#thumbimage").attr('src', '').hide();
        $(".file").html('<input type="file" name="file" placeholder="Ảnh sản " multiple onchange="readURL(this);" class="file">');
        $(".removeimg").hide();
      });
    })
  </script>
</head>

<body class="app sidebar-mini rtl">
  <style>

    .removeimg {
      display: none;
      margin-top: 10px;
    }

    #thumbbox {
      position: relative;
      width: 100%;
      margin-bottom: 20px;
    }

    .removeimg {
      height: 25px;
      position: absolute;
      background-repeat: no-repeat;
      top: 5px;
      left: 5px;
      background-size: 25px;
      width: 25px;
      /* border: 3px solid red; */
      border-radius: 50%;

    }

    .removeimg::before {
      -webkit-box-sizing: border-box;
      box-sizing: border-box;
      content: '';
      border: 1px solid red;
      background: red;
      text-align: center;
      display: block;
      margin-top: 11px;
      transform: rotate(45deg);
    }

    .removeimg::after {
      /* color: #FFF; */
      /* background-color: #DC403B; */
      content: '';
      background: red;
      border: 1px solid red;
      text-align: center;
      display: block;
      transform: rotate(-45deg);
      margin-top: -2px;
    }

    .upload-button:hover {
      opacity: .5;
    }

  </style>
  <!-- Navbar-->
  <header class="app-header" style="background-color: #585858">
    <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar"
      aria-label="Hide Sidebar"></a>
    <!-- Navbar Right Menu-->
    <ul class="app-nav">


      <!-- User Menu-->
      <li><a class="app-nav__item" href="../index.jsp"><i class='bx bx-log-out bx-rotate-180'></i> </a>

      </li>
    </ul>
  </header>
  <!-- Sidebar menu-->
  <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
  <aside class="app-sidebar" style="background-color: #585858">
    <hr>
    <ul class="app-menu">
      <li><a class="app-menu__item" href="user-manager.jsp"><i class='app-menu__icon bx bx-user-voice'></i><span
              class="app-menu__label">Quản lý người dùng</span></a></li>
      <li><a class="app-menu__item" href="product-manager.jsp"><i
              class='app-menu__icon bx bx-purchase-tag-alt'></i><span class="app-menu__label">Quản lý sản phẩm</span></a>
      </li>
      <li><a class="app-menu__item" href="order-manager.jsp"><i class='app-menu__icon bx bx-task'></i><span
              class="app-menu__label">Quản lý đơn hàng</span></a></li>
    </ul>

  </aside>
  <main class="app-content">
    <div class="row">
      <div class="col-md-12">
        <div class="tile">
          <h3 class="tile-title">Thêm sản phẩm</h3>

          <div class="tile-body">

            <form action="../upload-product" class="row" method="post" enctype="multipart/form-data">

              <div class="form-group col-md-4">
                <label class="control-label">Tên sản phẩm</label>
                <input class="form-control" type="text" name="productName" placeholder="Tên sản phẩm">
              </div>

              <div class="form-group col-md-4">
                <label class="control-label">Giá bán</label>
                <input class="form-control" type="number" name="productPrice" placeholder="Giá bán sản phẩm">
              </div>

              <div class="form-group col-md-4">
                <label class="control-label">Chất liệu</label>
                <input class="form-control" type="text" name="material" placeholder="Chất liệu">
              </div>

              <div class="form-group col-md-4">
                <label class="control-label">Xuất xứ</label>
                <input class="form-control" type="text" name="origin" placeholder="Xuất xứ">
              </div>

              <div class="form-group col-md-4">
                <label class="control-label">Loại sản phẩm</label>
                <input class="form-control" type="text" name="type" placeholder="Loại sản phẩm">
              </div>

              <div class="form-group col-md-4">
                <label class="control-label">Khuyến mãi</label>
                <input class="form-control" type="number" name="productDiscount" placeholder="Khuyến mãi">
              </div>

              <div class="form-group  col-md-4">
                <label class="control-label">Số lượng</label>
                <input class="form-control" type="number" name="quantity" placeholder="Số lượng">
              </div>

              <div class="form-group col-md-12">
                <label class="control-label">Mô tả sản phẩm</label>
                <textarea class="form-control" name="detail" placeholder="Mô tả sản phẩm"></textarea>
              </div>

              <div class="form-group col-md-12">
              <label class="control-label">Ảnh sản phẩm</label>
                <div>
                  <input type="file" name="file" placeholder="Ảnh sản " multiple onchange="readURL(this);" class="file">
                </div>
                <div id="thumbbox">
                  <img height="450" width="400" alt="Thumb image" id="thumbimage" style="display: none" />
                  <a class="removeimg" href="javascript:"></a>
                </div>
              </div>

              <input type="submit" class="btn btn-save upload-button" value="upload">
            </form>

          </div>
        </div>
      </div>
    </div>

  </main>

  <script src="js/jquery-3.2.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>
  <script src="js/plugins/pace.min.js"></script>

</body>

</html>
