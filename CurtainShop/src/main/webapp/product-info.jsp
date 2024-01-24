<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zxx">
<head>
    <!-- Meta Tag -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name='copyright' content=''>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Title Tag  -->
    <title>Thông Tin Sản Phẩm</title>
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
<body class="js">
<header class="header shop">
    <!-- Topbar -->
    <div class="topbar">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-12 col-12">
                    <!-- Top Left -->
                    <div class="top-left">
                    </div>
                    <!--/ End Top Left -->
                </div>
                <div class="col-lg-8 col-md-12 col-12">
                    <!-- Top Right -->
                    <div class="right-content">
                        <ul class="list-main">
                            <li><i class="ti-user"></i> <a href="user.jsp">Tài khoản</a></li>
                            <li><i class="ti-power-off"></i><a href="login.jsp">Đăng Nhập</a></li>
                        </ul>
                    </div>
                    <!-- End Top Right -->
                </div>
            </div>
        </div>
    </div>
    <!-- End Topbar -->
    <div class="middle-inner">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-md-2 col-12">
                    <!-- Logo -->
                    <div class="logo">
                        <a href="index.jsp"><img src="images/logo/logo_black.jpg" alt="logo"></a>
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
                    <div class="search-bar-top">
                        <div class="search-bar">
<%--                            <select>--%>
<%--                                <option selected="selected" >Danh Mục</option>--%>
<%--                                <option>Rèm Vải</option>--%>
<%--                                <option>Rèm Cuốn</option>--%>
<%--                                <option>Rèm Sáo Gỗ</option>--%>
<%--                                <option>Rèm Kiểu Âu</option>--%>
<%--                                <option>Rèm Tre/Trúc</option>--%>
<%--                                <option>Rèm Phòng Tắm</option>--%>
<%--                                <option>Rèm Sợi</option>--%>
<%--                                <option>Rèm Roman</option>--%>
<%--                            </select>--%>
                            <form>
                                <input name="search" placeholder="Tìm kiếm ở đây....." type="search">
                                <button class="btnn"><i class="ti-search"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-12">
                    <div class="right-bar">
                        <!-- Search Form -->
                        <div class="sinlge-bar">
                            <a href="#" class="single-icon"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                        </div>
                        <div class="sinlge-bar shopping">
                            <a href="cart.jsp" class="single-icon"><i class="ti-bag"></i></a>
                            <!-- Shopping Item -->
                            <!--							<div class="shopping-item">-->
                            <!--								<div class="dropdown-cart-header">-->
                            <!--									<span>2 Items</span>-->
                            <!--									<a href="#">View Cart</a>-->
                            <!--								</div>-->
                            <!--								<ul class="shopping-list">-->
                            <!--									<li>-->
                            <!--										<a href="#" class="remove" title="Remove this item"><i class="fa fa-remove"></i></a>-->
                            <!--										<a class="cart-img" href="#"><img src="https://via.placeholder.com/70x70" alt="#"></a>-->
                            <!--										<h4><a href="#">Woman Ring</a></h4>-->
                            <!--										<p class="quantity">1x - <span class="amount">$99.00</span></p>-->
                            <!--									</li>-->
                            <!--									<li>-->
                            <!--										<a href="#" class="remove" title="Remove this item"><i class="fa fa-remove"></i></a>-->
                            <!--										<a class="cart-img" href="#"><img src="https://via.placeholder.com/70x70" alt="#"></a>-->
                            <!--										<h4><a href="#">Woman Necklace</a></h4>-->
                            <!--										<p class="quantity">1x - <span class="amount">$35.00</span></p>-->
                            <!--									</li>-->
                            <!--								</ul>-->
                            <!--								<div class="bottom">-->
                            <!--									<div class="total">-->
                            <!--										<span>Total</span>-->
                            <!--										<span class="total-amount">$134.00</span>-->
                            <!--									</div>-->
                            <!--									<a href="checkout.jsp" class="btn animate">Checkout</a>-->
                            <!--								</div>-->
                            <!--							</div>-->
                            <!--/ End Shopping Item -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Header Inner -->
    <div class="header-inner">
        <div class="container">
            <div class="cat-nav-head">
                <div class="row">
                    <div class="col-12">
                        <div class="menu-area">
                            <!-- Main Menu -->
                            <nav class="navbar navbar-expand-lg">
                                <div class="navbar-collapse">
                                    <div class="nav-inner">
                                        <ul class="nav main-menu menu navbar-nav">
                                            <li ><a href="index.jsp">Trang Chủ</a></li>
                                            <li class="active"><a href="shop-grid.jsp">Sản Phẩm<i class="ti-angle-down"></i></a>
                                                <ul class="dropdown">
                                                    <li><a href="shop-grid.jsp">Rèm Vải</a></li>
                                                    <li><a href="shop-grid.jsp">Rèm Cuốn</a></li>
                                                    <li><a href="shop-grid.jsp">Rèm Sáo Gỗ</a></li>
                                                    <li><a href="shop-grid.jsp">Rèm Văn Phòng</a></li>
                                                    <li><a href="shop-grid.jsp">Rèm Kiểu Âu</a></li>
                                                    <li><a href="shop-grid.jsp">Rèm Tre/Trúc</a></li>
                                                    <li><a href="shop-grid.jsp">Rèm Phòng Tắm</a></li>
                                                    <li><a href="shop-grid.jsp">Rèm Vải</a></li>
                                                    <li><a href="shop-grid.jsp">Rèm Roman</a></li>
                                                </ul>
                                            </li>
                                            <li ><a href="blog-index.jsp">Giới Thiệu</a></li>
                                            <li ><a href="cart.jsp">Giỏ Hàng</a></li>
                                            <li><a href="checkout.jsp">Thanh Toán</a></li>
                                            <li><a href="contact.jsp">Liên Hệ</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </nav>
                            <!--/ End Main Menu -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ End Header Inner -->
</header>
<!--/ End Header -->

<!-- Breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="bread-inner">
                    <ul class="bread-list">
                        <li><a href="index.jsp">Trang Chủ <i class="ti-arrow-right"></i></a></li>
                        <li class="active"><a href="#">Thông Tin Sản Phẩm</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Breadcrumbs -->

<section class="py-5">
    <div class="container">
        <div class="row gx-5">
            <aside class="col-lg-6">
                <div class="border rounded-4 mb-3 d-flex justify-content-center">
                        <img style="max-width: 100%; max-height: 100vh; margin: auto;" class="rounded-4 fit" src="image/product-image/550x750.1.png" />
                </div>
<!--                <div class="d-flex justify-content-center mb-3">-->
<!--                    <a data-fslightbox="mygalley" class="border mx-1 rounded-2" target="_blank" data-type="image" href="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/detail1/big1.webp" class="item-thumb">-->
<!--                        <img width="60" height="60" class="rounded-2" src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/detail1/big1.webp" />-->
<!--                    </a>-->
<!--                    <a data-fslightbox="mygalley" class="border mx-1 rounded-2" target="_blank" data-type="image" href="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/detail1/big2.webp" class="item-thumb">-->
<!--                        <img width="60" height="60" class="rounded-2" src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/detail1/big2.webp" />-->
<!--                    </a>-->
<!--                    <a data-fslightbox="mygalley" class="border mx-1 rounded-2" target="_blank" data-type="image" href="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/detail1/big3.webp" class="item-thumb">-->
<!--                        <img width="60" height="60" class="rounded-2" src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/detail1/big3.webp" />-->
<!--                    </a>-->
<!--                    <a data-fslightbox="mygalley" class="border mx-1 rounded-2" target="_blank" data-type="image" href="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/detail1/big4.webp" class="item-thumb">-->
<!--                        <img width="60" height="60" class="rounded-2" src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/detail1/big4.webp" />-->
<!--                    </a>-->
<!--                    <a data-fslightbox="mygalley" class="border mx-1 rounded-2" target="_blank" data-type="image" href="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/detail1/big.webp" class="item-thumb">-->
<!--                        <img width="60" height="60" class="rounded-2" src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/detail1/big.webp" />-->
<!--                    </a>-->
<!--                </div>-->
                <!-- thumbs-wrap.// -->
                <!-- gallery-wrap .end// -->
            </aside>
            <main class="col-lg-6">
                <div class="ps-lg-3">
                    <h4 class="title text-dark">
                        Rèm cuốn cửa sổ ấm cúng
                    </h4>
                    <div class="d-flex flex-row my-3">
                        <div class="text-warning mb-1 me-2">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                            <span class="ms-1">
                4.5
              </span>
                        </div>

                    </div>

                    <div class="mb-3">
                        <span class="h5">700,000đ</span>
                        <span class="text-muted">/per box</span>
                    </div>

                    <p>
                        Màn sáo cuốn chống nắng là sản phẩm rèm cuốn cao cấp có nhiều ưu điểm vượt trội mà các sản phẩm khác không dễ gì có được. Rèm cuốn trơn thoáng giống như lớp vải voan mỏng và khả năng che nắng, cản sáng khoảng 80%. Nó có thể che chắn ánh nắng mặt trời, ánh sáng và cái nhìn xoi mói từ xung quanh.
                    </p>

                    <div class="row">
                        <dt class="col-3">Thương Hiệu:</dt>
                        <dd class="col-9">Hasakuki</dd>

                        <dt class="col-3">Xuất Xứ:</dt>
                        <dd class="col-9">Trung Quốc</dd>

                        <dt class="col-3">Chất Liệu</dt>
                        <dd class="col-9">Vải cotton</dd>

                        <dt class="col-3">Kích Thước</dt>
                        <dd class="col-9">8.9cm , 10cm , 12.7cm</dd>

                        <dt class="col-3">Bảo Hành</dt>
                        <dd class="col-9">12 Tháng</dd>
                    </div>

                    <hr />
                    <a href="#" class="btn btn-primary shadow-0"></i> Mua Ngay </a>
                    <a href="#" class="btn btn-primary shadow-0"> <i class="me-1 fa fa-shopping-basket"></i> Thêm Vào Giỏ Hàng </a>
                    <a href="#" class="btn btn-primary shadow-0"> <i class="me-1 fa fa-heart fa-lg"></i> Yêu Thích </a>
                </div>

            </main>
        </div>
    </div>
</section>

<!-- Start Most Popular -->
<div class="product-area most-popular section" style="margin-top: -90px">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-title">
                    <h2>Sản Phẩm Liên Quan</h2>
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: -40px">
            <div class="col-12">
                <div class="owl-carousel popular-slider">
                    <!-- Start Single Product -->
                    <div class="single-product">
                        <div class="product-img">
                            <a href="product-info.jsp">
                                <img class="default-img" src="image/product-image/550x750.1.png" alt="#">
                                <img class="hover-img" src="image/product-image/550x750.1.png" alt="#">
                                <span class="out-of-stock">Hot</span>
                            </a>
                            <div class="button-head">
                                <div class="product-action">
                                    <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Yêu Thích</span></a>
                                    <a></a>
                                </div>
                                <div class="product-action-2">
                                    <a title="Thêm Vào Giỏ Hàng" href="#">Thêm Vào Giỏ Hàng</a>
                                </div>
                            </div>
                        </div>
                        <div class="product-content">
                            <h3><a href="product-info.jsp">Rèm cuốn cửa sổ ấm cúng </a></h3>
                            <div class="product-price">
                                <span class="old">120,000đ</span>
                                <span>100,000đ</span>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Product -->
                    <!-- Start Single Product -->
                    <div class="single-product">
                        <div class="product-img">
                            <a href="product-info.jsp">
                                <img class="default-img" src="image/product-image/550x750.2.png" alt="#">
                                <img class="hover-img" src="image/product-image/550x750.2.png" alt="#">
                            </a>
                            <div class="button-head">
                                <div class="product-action">
                                    <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Yêu Thích</span></a>
                                    <a></a>
                                </div>
                                <div class="product-action-2">
                                    <a title="Thêm Vào Giỏ Hàng" href="#">Thêm Vào Giỏ Hàng</a>
                                </div>
                            </div>
                        </div>
                        <div class="product-content">
                            <h3><a href="product-info.jsp">Màn cuốn vải sọc chống nắng</a></h3>
                            <div class="product-price">
                                <span>110,000đ</span>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Product -->
                    <!-- Start Single Product -->
                    <div class="single-product">
                        <div class="product-img">
                            <a href="product-info.jsp">
                                <img class="default-img" src="image/product-image/550x750.3.png" alt="#">
                                <img class="hover-img" src="image/product-image/550x750.3.png" alt="#">
                                <span class="new">Mới</span>
                            </a>
                            <div class="button-head">
                                <div class="product-action">
                                    <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Yêu Thích</span></a>
                                    <a></a>
                                </div>
                                <div class="product-action-2">
                                    <a title="Thêm Vào Giỏ Hàng" href="#">Thêm Vào Giỏ Hàng</a>
                                </div>
                            </div>
                        </div>
                        <div class="product-content">
                            <h3><a href="product-info.jsp">Mành cuốn vải hoa văn lá cây</a></h3>
                            <div class="product-price">
                                <span>285,000đ</span>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Product -->
                    <!-- Start Single Product -->
                    <div class="single-product">
                        <div class="product-img">
                            <a href="product-info.jsp">
                                <img class="default-img" src="image/product-image/550x750.4.png" alt="#">
                                <img class="hover-img" src="image/product-image/550x750.4.png" alt="#">
                            </a>
                            <div class="button-head">
                                <div class="product-action">
                                    <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Yêu Thích</span></a>
                                    <a></a>
                                </div>
                                <div class="product-action-2">
                                    <a title="Thêm Vào Giỏ Hàng" href="#">Thêm Vào Giỏ Hàng</a>
                                </div>
                            </div>
                        </div>
                        <div class="product-content">
                            <h3><a href="product-info.jsp">Rèm cuốn lưới đẹp sang trọng</a></h3>
                            <div class="product-price">
                                <span>320,000đ</span>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Product -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Most Popular Area -->

<!-- Start Footer Area -->
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
<!-- /End Footer Area -->

<!-- Jquery -->
<script src="js/jquery.min.js"></script>
<script src="js/jquery-migrate-3.0.0.js"></script>
<script src="js/jquery-ui.min.js"></script>
<!-- Popper JS -->
<script src="js/popper.min.js"></script>
<!-- Bootstrap JS -->
<script src="js/bootstrap.min.js"></script>
<!-- Color JS -->
<script src="js/colors.js"></script>
<!-- Slicknav JS -->
<script src="js/slicknav.min.js"></script>
<!-- Owl Carousel JS -->
<script src="js/owl-carousel.js"></script>
<!-- Magnific Popup JS -->
<script src="js/magnific-popup.js"></script>
<!-- Fancybox JS -->
<script src="js/facnybox.min.js"></script>
<!-- Waypoints JS -->
<script src="js/waypoints.min.js"></script>
<!-- Countdown JS -->
<script src="js/finalcountdown.min.js"></script>
<!-- Nice Select JS -->
<script src="js/nicesellect.js"></script>
<!-- Ytplayer JS -->
<script src="js/ytplayer.min.js"></script>
<!-- Flex Slider JS -->
<script src="js/flex-slider.js"></script>
<!-- ScrollUp JS -->
<script src="js/scrollup.js"></script>
<!-- Onepage Nav JS -->
<script src="js/onepage-nav.min.js"></script>
<!-- Easing JS -->
<script src="js/easing.js"></script>
<!-- Active JS -->
<script src="js/active.js"></script>
</body>
</html>