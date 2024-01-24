<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login</title>
    <!-- Meta Tag -->
    <meta charset="utf-8">
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


    <div class="container" id="account-user">
        <div class="main-account">
            <div class="main-account-header">
                <h3>Thông tin tài khoản</h3>
                <p>Quản lý thông tin để bảo mật tài khoản</p>
            </div>
            <div class="main-account-body">
                <div class="main-account-body-col">
                    <form action="" class="info-user">
                        <div class="form-group">
                            <label for="infoname" class="form-label">Họ và tên</label>
                            <input class="form-control" type="text" name="infoname" id="infoname" placeholder="">
                        </div>
                        <div class="form-group">
                            <label for="infophone" class="form-label">Số điện thoại</label>
                            <input class="form-control" type="text" name="infophone" id="infophone"
                                   placeholder="">
                        </div>
                        <div class="form-group">
                            <label for="infoemail" class="form-label">Email</label>
                            <input class="form-control" type="email" name="infoemail" id="infoemail"
                                   placeholder="Thêm địa chỉ email của bạn">
                            <span class="inforemail-error form-message"></span>
                        </div>
                        <div class="form-group">
                            <label for="infoaddress" class="form-label">Địa chỉ</label>
                            <input class="form-control" type="text" name="infoaddress" id="infoaddress"
                                   placeholder="Thêm địa chỉ giao hàng của bạn">
                        </div>
                    </form>
                </div>
                <div class="main-account-body-col">
                    <form action="" class="change-password">
                        <div class="form-group">
                            <label class="form-label w60">Mật khẩu hiện tại</label>
                            <input class="form-control" type="password" name="" id="password-cur-info"
                                   placeholder="Nhập mật khẩu hiện tại">
                            <span class="password-cur-info-error form-message"></span>
                        </div>
                        <div class="form-group">
                            <label class="form-label w60">Mật khẩu mới </label>
                            <input class="form-control" type="password" name="" id="password-after-info"
                                   placeholder="Nhập mật khẩu mới">
                            <span class="password-after-info-error form-message"></span>
                        </div>
                        <div class="form-group">
                            <label class="form-label w60">Xác nhận mật khẩu mới</label>
                            <input class="form-control" type="password" name="" id="password-comfirm-info"
                                   placeholder="Nhập lại mật khẩu mới">
                            <span class="password-after-comfirm-error form-message"></span>
                        </div>
                    </form>
                </div>
                <div class="main-account-body-row">
                    <div>
                        <button id="save-info-user" ></i> Lưu thay đổi</button>
                    </div>
                    <div>
                        <button id="save-password"></i> Đổi mật khẩu</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

<div style="margin-top: 150px;"></div>
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

</body>

</html>