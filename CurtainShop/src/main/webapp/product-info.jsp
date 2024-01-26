<%@ page import="com.curtainshop.beans.Product" %>
<%@ page import="com.curtainshop.services.ProductService" %>
<%@ page import="com.curtainshop.services.GalleryService" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.List" %>
<%@ page import="com.curtainshop.beans.User" %>
<%@ page import="com.curtainshop.beans.Gallery" %>
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

    <style>
        #image-container {
            max-width: 400px;
            margin: 20px auto;
            overflow: hidden;
        }

        #image-slider {
            display: flex;
            transition: transform 0.5s ease-in-out;
        }

        .slide {
            min-width: 100%;
            box-sizing: border-box;
        }
        #prev-button {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            padding: 5px 10px;
            cursor: pointer;
            border: none;
            background-color: #fff;
            color: #000000;
            font-size: 16px;
            left: 10px;
        }

        #next-button {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            padding: 5px 10px;
            cursor: pointer;
            border: none;
            background-color: #fff;
            color: #000000;
            font-size: 16px;
            right: 10px;
        }
    </style>

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
                            <%
                                HttpSession session1 = request.getSession();
                                User user = (User) session.getAttribute("account");
                                String test = (user == null) ? "Đăng Nhập" : user.getUserName();
                            %>

                            <li><i class="ti-user"></i> <a href="user.jsp">Tài khoản</a></li>
                            <li><i class="ti-power-off"></i><a href="login.jsp"><%=test%></a></li>
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
                    <div class="mobile-nav"></div>
                </div>
                <div class="col-lg-8 col-md-7 col-12">
                    <div class="search-bar-top">
                        <div class="search-bar">
                            <form action="searchController" method="get">
                                <input name="search" placeholder="Tìm kiếm ở đây....." type="search" style="width: 480px">
                                <button class="btnn" type="submit"><i class="ti-search"></i></button>
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
<% int prdId = Integer.valueOf(request.getParameter("id")); %>
<%Product product = ProductService.getInstance().getById(prdId);%>

<section class="py-5">
    <div class="container">
        <div class="row gx-5">
            <aside class="col-lg-6">
                <div class="border rounded-4 mb-3 d-flex justify-content-center">
                    <div id="image-container" style="position: absolute">
                        <div id="image-slider">
                            <%List<Gallery> listImage = GalleryService.getInstance().getListImageByProductId(product.getId()); %>
                            <% for (Gallery image : listImage) { %>

                            <div class="slide"><img src="data/images/<%=image.getImageName()%>" alt="#" ></div>

                            <%}%>
                            <!-- Add more images as needed -->
                        </div>
                        <button id="prev-button" onclick="prevImage()"> < </button>
                        <button id="next-button" onclick="nextImage()"> > </button>
                    </div>
                </div>

            </aside>
            <main class="col-lg-6">

                <div class="ps-lg-3">
                    <h4 class="title text-dark">
                        <%=product.getProductName()%>
                    </h4>

                    <div class="mb-3">
                        <div class="product-price">
                            <%NumberFormat currentFormat = NumberFormat.getCurrencyInstance(java.util.Locale.forLanguageTag("vi-VN"));%>
                            <s style="font-size: 15px"><%=currentFormat.format(product.getProductPrice())%></s>
                            <span style="font-size: 22px; color: #f7941d; font-weight: 700"><%=currentFormat.format(product.getProductPrice() - (product.getProductPrice() * product.getProductDiscount() / 100))%></span>
                        </div>
                    </div>

                    <p style="font-size: 14px">
                        <%=product.getProductDetail()%>
                    </p>

                    <div class="row">

                        <dt class="col-3">Chất Liệu</dt>
                        <dd class="col-9"><%=product.getMaterial()%></dd>

                        <dt class="col-3">Xuất Xứ:</dt>
                        <dd class="col-9"><%=product.getOrigin()%></dd>

                        <dt class="col-3">Loại rèm:</dt>
                        <dd class="col-9"><%=product.getType()%></dd>

                        <dt class="col-3">Bảo Hành</dt>
                        <dd class="col-9">12 Tháng</dd>
                    </div>

                    <hr />
                    <form action="CartController?productId=<%=product.getId()%>&quantity=1" method="post">
                        <button class="btn btn-primary shadow-0" style="color: #FFFFFF" type="submit">Mua ngay</button>
                    </form>
                    <form action="CartController?productId=<%=product.getId()%>&quantity=1&urlId=1" method="post" style="margin-top: 5px">
                        <button type="submit" class="btn btn-primary shadow-0" style="color: #FFFFFF"><i class="me-1 fa fa-shopping-basket"></i>Thêm vào giỏ hàng</button>
                    </form>
                </div>

            </main>
        </div>
    </div>
</section>

<div style="margin-top: 170px; margin-bottom: 100px"></div>

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
                    <% List<Product> listpopular = ProductService.getInstance().getAllProduct(); %>
                    <% for (Product popularProduct : listpopular) { %>
                    <% if (popularProduct.getId() == product.getId()) continue;%>
                    <!-- Start Single Product -->
                    <div class="single-product">
                        <div class="product-img">
                            <a href="product-info.jsp?id=<%=popularProduct.getId()%>">
                                <img class="default-img" src="data/images/<%=GalleryService.getInstance().getOneImageByProductId(popularProduct.getId()).getImageName()%>" alt="#">
                                <img class="hover-img" src="data/images/<%=GalleryService.getInstance().getOneImageByProductId(popularProduct.getId()).getImageName()%>" alt="#">
                            </a>
                            <div class="button-head">
                                <div class="product-action-2">
                                    <a title="Thêm Vào Giỏ Hàng" href="#">Thêm Vào Giỏ Hàng</a>
                                </div>
                            </div>
                        </div>
                        <div class="product-content">
                            <h3><a href="product-info.jsp?id=<%=popularProduct.getId()%>"><%=popularProduct.getProductName()%></a></h3>
                            <div class="product-price">
                                <span class="old"><%=currentFormat.format(popularProduct.getProductPrice())%></span>
                                <span style="font-size: 22px; color: #f7941d;"><%=currentFormat.format(popularProduct.getProductPrice() - (popularProduct.getProductPrice() * popularProduct.getProductDiscount() / 100))%></span>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Product -->
                    <%}%>
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
<!-- Hiển thị ảnh -->
<script>
    let currentIndex = 0;
    const totalImages = document.querySelectorAll('.slide').length;

    function showImage(index) {
        const slider = document.getElementById('image-slider');
        const offset = -index * 100;
        slider.style.transform = `translateX(${offset}%)`;
    }

    function nextImage() {
        currentIndex = (currentIndex + 1) % totalImages;
        showImage(currentIndex);
    }

    function prevImage() {
        currentIndex = (currentIndex - 1 + totalImages) % totalImages;
        showImage(currentIndex);
    }
</script>
</body>
</html>