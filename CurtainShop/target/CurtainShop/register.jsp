<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Đăng ký</title>
    <!-- Meta Tag -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name='copyright' content=''>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Web Font -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">

    <!-- StyleSheet -->

    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <!-- Magnific Popup -->
    <link rel="stylesheet" href="css/magnific-popup.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/font-awesome.css">
    <!-- Fancybox -->
    <link rel="stylesheet" href="css/jquery.fancybox.min.css">
    <!-- Themify Icons -->
    <link rel="stylesheet" href="css/themify-icons.css">
    <!-- Nice Select CSS -->
    <link rel="stylesheet" href="css/niceselect.css">
    <!-- Animate CSS -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- Flex Slider CSS -->
    <link rel="stylesheet" href="css/flex-slider.min.css">
    <!-- Owl Carousel -->
    <link rel="stylesheet" href="css/owl-carousel.css">
    <!-- Slicknav -->
    <link rel="stylesheet" href="css/slicknav.min.css">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/login.css">


</head>
<body>

<header class="header shop">

    <div class="middle-inner" style="background-color: #333333;">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-md-2 col-12">
                    <!-- Logo -->
                    <div class="logo">
                        <a href="index.jsp"><img src="images/logo/logo_white.svg" alt="logo"></a>
                    </div>
                    <!--/ End Logo -->
                    <!-- Search Form -->
                    <div class="search-top">
                        <div class="top-search"><a href="#0"><i class="ti-search"></i></a></div>
                        <!-- Search Form -->
                        <div class="search-top">
                            <form class="search-form">
                                <input type="text" placeholder="Tìm kiếm..." name="search">
                                <button value="search" type="submit"><i class="ti-search"></i></button>
                            </form>
                        </div>
                        <!--/ End Search Form -->
                    </div>
                    <!--/ End Search Form -->
                    <div class="mobile-nav"></div>
                </div>
                <div class="col-lg-8 col-md-7 col-12">

                </div>
                <div class="col-lg-2 col-md-3 col-12">

                </div>
            </div>
        </div>
    </div>
    <!-- Header Inner -->

    <!--/ End Header Inner -->
</header>
<%
    String error = (String)(request.getAttribute("error"));
    if (error != null) {
        request.getAttribute("error");
    } else {
        error = "";

    }
%>


	<!-- Sign Up -->
	<div class="container m-5">
        <div class="row h-100 align-items-center">
            <div class="col-md-4 mb-3 text-center">

            </div>
            <div class="col-md-5 mb-3 p-3" style="box-shadow: #666666 0px 1px 5px 1px; margin-left: 50px">

                <h5 class="forgot-title">Tạo tài khoản</h5>
                <p style="margin: 5px 0px; color: #fc1616"> <%= error%> </p>
                <div class="d-flex justify-content-center" style="margin:20px 43px 0 0;">
                </div>

                <form action="registerUser" method="post" >

                    <div class="form-div" style="margin:0 0 12px 0;">
                        <input type="text" class="forgot-input" name="fullName" style="width: 450px" onchange="checkInput()">
                        <label  class="form-lable">Họ và tên</label>
                    </div>
                    <div class="form-div" style="margin:0 0 12px 0;">
                        <input type="text" class="forgot-input" name="username" style="width: 450px" onchange="checkInput()">
                        <label  class="form-lable">Tên tài khoản</label>
                    </div>
                    <div class="form-div" style="margin:0 0 12px 0;">
                        <input type="email" class="forgot-input" name="email" style="width: 450px" onchange="checkInput()">
                        <label  class="form-lable">Email</label>
                    </div>
                    <div class="form-div" style="margin:0 0 12px 0;">
                        <input type="number" class="forgot-input" name="phone" style="width: 450px" onchange="checkInput()">
                        <label  class="form-lable">Số điện thoại</label>
                    </div>
                    <div class="form-div" style="margin:0 0 12px 0;">
                        <input type="text" class="forgot-input" name="address" style="width: 450px" onchange="checkInput()">
                        <label  class="form-lable">Địa chỉ</label>
                    </div>
                    <div class="form-div" style="margin:0 0 12px 0;">
                        <input type="password" class="forgot-input" name="password" style="width: 450px" onchange="checkInput()">
                        <label  class="form-lable">Mật Khẩu</label>
                    </div>
                    <div class="form-div">
                        <input type="password" class="forgot-input" name="repassword" style="width: 450px" onchange="checkInput()">
                        <label  class="form-lable">Xác nhận mật khẩu</label>
                    </div>
                    <div class="d-flex justify-content-between">
                        <div class="check-box">
                            <input class="form-check-input" type="checkbox" id="check1" name="term">
                            <label for="check1" class="form-check-label">Chấp nhận điều khoản <a class="a-link" href="#">Term of Use</a> & <a class="a-link" href="#">Privacy Policy</a>.</label>
                        </div>
                    </div>
                    <input type="submit" class="forgot-btn " value="Đăng ký"  style="width: 450px; height: 50px" >

                </form>

                <p class="return-login">Bạn đã có tài khoản <a class="a-link" href="login.jsp"> Đăng nhập </a></p>
            </div>
        </div>
    </div>


<footer class="footer">
    <!-- Footer Top -->
    <div class="footer-top section">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-6 col-12">
                    <!-- Single Widget -->
                    <div class="single-footer about">
                        <div class="logo">
                            <a href="index.jsp"><img src="images/logo/logo_white.svg" style="width: 35%" alt="#"></a>
                        </div>
                        <p class="text">Chuyên cung cấp các sản phẩm rèm cửa đẹp và các phụ kiện trang trí nhà cửa, văn phòng hàng đầu hiện nay.</p>
                        <p class="call">Hotline 24/7<span><a href="tel:123456789">+0123 456 789</a></span></p>
                    </div>
                    <!-- End Single Widget -->
                </div>
                <div class="col-lg-2 col-md-6 col-12">
                    <!-- Single Widget -->
                    <div class="single-footer links">
                        <h4>Thông Tin</h4>
                        <ul>
                            <li><a href="#">Về chúng tôi</a></li>
                            <li><a href="#">Faq</a></li>
                            <li><a href="#">Điều khoản và điều kiện</a></li>
                            <li><a href="#">Liên hệ chúng tôi</a></li>
                            <li><a href="#">Trợ giúp</a></li>
                        </ul>
                    </div>
                    <!-- End Single Widget -->
                </div>
                <div class="col-lg-2 col-md-6 col-12">
                    <!-- Single Widget -->
                    <div class="single-footer links">
                        <h4>Dịch Vụ Khách Hàng</h4>
                        <ul>
                            <li><a href="#">Phương thức thanh toán</a></li>
                            <li><a href="#">Hoàn tiền</a></li>
                            <li><a href="#">Đổi trả</a></li>
                            <li><a href="#">Shipping</a></li>
                            <li><a href="#">Chính sách bảo mật</a></li>
                        </ul>
                    </div>
                    <!-- End Single Widget -->
                </div>
                <div class="col-lg-3 col-md-6 col-12">
                    <!-- Single Widget -->
                    <div class="single-footer social">
                        <h4>Liên Lạc</h4>
                        <!-- Single Widget -->
                        <div class="contact">
                            <ul>
                                <li>Linh Trung, NÔNG LÂM UNIVERSITY.</li>
                                <li>Thủ Đức, Thành Phố HCM</li>
                                <li>hellu@eshop.com</li>
                                <li>+08412345678</li>
                            </ul>
                        </div>
                        <!-- End Single Widget -->
                        <ul>
                            <li><a href="#"><i class="ti-facebook"></i></a></li>
                            <li><a href="#"><i class="ti-twitter"></i></a></li>
                            <li><a href="#"><i class="ti-flickr"></i></a></li>
                            <li><a href="#"><i class="ti-instagram"></i></a></li>
                        </ul>
                    </div>
                    <!-- End Single Widget -->
                </div>
            </div>
        </div>
    </div>
    <!-- End Footer Top -->
    <div class="copyright">
        <div class="container">
            <div class="inner">
                <div class="row">
                    <div class="col-lg-6 col-12" style="margin-left: 380px">
                        <div class="left">
                            <p>Copyright © 2023 <a href="#" target="_blank">Curtainshop</a>  -  Đã đăng kí bản quyền.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>

<!--===============================================================================================-->
	<script src="js/main.js"></script>
    <script>
        function checkInput() {
            // Lấy giá trị từ trường input
            var inputValue = document.getElementsByClassName("forgot-input").value;

            // Kiểm tra xem giá trị có là null hoặc trống không
            if (inputValue === null || inputValue.trim() === "") {
                alert("Trường input không được để trống!");
                return false; // Ngăn chặn form được submit
            }

            // Nếu muốn kiểm tra giá trị có chỉ chứa khoảng trắng hay không
            // thì sử dụng điều kiện inputValue.trim() === ""

            return true; // Cho phép form được submit
        }
    </script>

</body>

</html>