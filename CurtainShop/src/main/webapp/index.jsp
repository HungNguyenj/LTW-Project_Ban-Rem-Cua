<%@ page import="com.curtainshop.services.ProductService" %>
<%@ page import="com.curtainshop.beans.Product" %>
<%@ page import="com.curtainshop.services.OrderService" %>
<%@ page import="com.curtainshop.services.GalleryService" %>
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
	<title>Home</title>
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


<!-- Header -->
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
				</div>
				<div class="col-lg-8 col-md-7 col-12">
					<div class="search-bar-top">
						<div class="search-bar">
<%--							<select>--%>
<%--								<option selected="selected" >Danh Mục</option>--%>
<%--								<option>Rèm Vải</option>--%>
<%--								<option>Rèm Cuốn</option>--%>
<%--								<option>Rèm Sáo Gỗ</option>--%>
<%--								<option>Rèm Kiểu Âu</option>--%>
<%--								<option>Rèm Tre/Trúc</option>--%>
<%--								<option>Rèm Phòng Tắm</option>--%>
<%--								<option>Rèm Sợi</option>--%>
<%--								<option>Rèm Roman</option>--%>
<%--							</select>--%>
							<form>
								<input name="search" placeholder="Tìm kiếm ở đây....." type="search" style="width: 480px">
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

					<div class="col-lg-9 col-12">
						<div class="menu-area">
							<!-- Main Menu -->
							<nav class="navbar navbar-expand-lg">
								<div class="navbar-collapse">
									<div class="nav-inner">
										<ul class="nav main-menu menu navbar-nav">
											<li class="active"><a href="#">Trang Chủ</a></li>
											<li><a href="shop-grid.jsp">Sản Phẩm<i class="ti-angle-down"></i></a>
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
<%--											<li ><a href="blog-single-sidebar.html">Tin Tức</a></li>--%>
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

<!-- Slider Area -->
<section class="hero-slider">
	<!-- Single Slider -->
<%--	<div class="single-slider">--%>
<%--		<div class="container">--%>
<%--			<div class="row no-gutters">--%>
<%--				<div class="col-lg-9 offset-lg-3 col-12">--%>
<%--					<div class="text-inner">--%>
<%--						<div class="row">--%>
<%--							<div class="col-lg-7 col-12">--%>
<%--								<div class="hero-text">--%>
<%--									<h1 style="color: white"> <span>GIẢM GIÁ 50% </span> SANG TRỌNG</h1>--%>
<%--									<div class="button">--%>
<%--										<a href="#" class="btn">Mua Ngay!</a>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--						</div>--%>
<%--					</div>--%>
<%--				</div>--%>
<%--			</div>--%>
<%--		</div>--%>
<%--	</div>--%>
	<!--/ End Single Slider -->
</section>
<!--/ End Slider Area -->




<!-- Start Small Banner  -->
<section class="small-banner section" style="margin-top: 30px">
	<div class="container-fluid">
		<div class="row">
			<!-- Single Banner  -->
			<div class="col-lg-4 col-md-6 col-12">
				<div class="single-banner">
					<img src="image/product-image/600x370.1.png" alt="#">
					<div class="content">
						<h3 style="color: #fff; -webkit-text-stroke: 0.5px #333;font-size: 30px ">Phá Cách</h3>
						<a href="shop-grid.jsp">Mua Ngay!</a>
					</div>
				</div>
			</div>
			<!-- /End Single Banner  -->
			<!-- Single Banner  -->
			<div class="col-lg-4 col-md-6 col-12">
				<div class="single-banner">
					<img src="image/product-image/600x370.2.png" alt="#">
					<div class="content">
						<h3 style="color: #fff; -webkit-text-stroke: 0.5px #333;font-size: 30px ">Tươi Mới</h3>
						<a href="shop-grid.jsp">Mua Ngay!</a>
					</div>
				</div>
			</div>
			<!-- /End Single Banner  -->
			<!-- Single Banner  -->
			<div class="col-lg-4 col-md-6 col-12">
				<div class="single-banner">
					<img src="image/product-image/600x370.3.png" alt="#">
					<div class="content">
						<h3 style="color: #fff; -webkit-text-stroke: 0.5px #333;font-size: 30px ">Đa Nhiệm</h3>
						<a href="shop-grid.jsp">Mua Ngay!</a>
					</div>
				</div>
			</div>
			<!-- /End Single Banner  -->
		</div>
	</div>
</section>
<!-- End Small Banner -->

<!-- Start Most Popular -->
<div class="product-area most-popular section" style="margin-top: -50px">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="section-title">
					<h2>Sản Phẩm Thịnh Hành</h2>
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


<!-- Start Product Area -->
<div class="product-area section" style="margin-top: -130px">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="section-title">
					<h2>Sản Phẩm Bán Chạy</h2>
				</div>
			</div>
		</div>
		<div class="row" style="margin-top: -50px">
			<div class="col-12">
				<div class="product-info">
					<div class="tab-content" id="myTabContent">
						<!-- Start Single Tab -->
						<div class="tab-pane fade show active" id="man" role="tabpanel">
							<div class="tab-single">
								<div class="row">
									<div class="col-xl-3 col-lg-4 col-md-4 col-12">
										<div class="single-product">
											<div class="product-img">
												<a href="product-info.jsp">
													<img class="default-img" src="image/product-image/550x750.11.png" alt="#">
													<img class="hover-img" src="image/product-image/550x750.11.png" alt="#">
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
												<h3><a href="product-info.jsp">Rèm lá nhựa đơn giản hiện đại</a></h3>
												<div class="product-price">
													<span>200,000đ</span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-3 col-lg-4 col-md-4 col-12">
										<div class="single-product">
											<div class="product-img">
												<a href="product-info.jsp">
													<img class="default-img" src="image/product-image/550x750.12.png" alt="#">
													<img class="hover-img" src="image/product-image/550x750.12.png" alt="#">
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
												<h3><a href="product-info.jsp">Rèm lá dọc phòng ngủ cao cấp</a></h3>
												<div class="product-price">
													<span>130,000đ</span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-3 col-lg-4 col-md-4 col-12">
										<div class="single-product">
											<div class="product-img">
												<a href="product-info.jsp">
													<img class="default-img" src="image/product-image/550x750.13.png" alt="#">
													<img class="hover-img" src="image/product-image/550x750.13.png" alt="#">
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
												<h3><a href="product-info.jsp">Rèm nhựa vân gỗ chất liệu PVC</a></h3>
												<div class="product-price">
													<span>400,000đ</span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-3 col-lg-4 col-md-4 col-12">
										<div class="single-product">
											<div class="product-img">
												<a href="product-info.jsp">
													<img class="default-img" src="image/product-image/550x750.14.png" alt="#">
													<img class="hover-img" src="image/product-image/550x750.14.png" alt="#">
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
												<h3><a href="product-info.jsp">Rèm sáo nhôm ngang cao cấp TP.HCM</a></h3>
												<div class="product-price">
													<span>160,000đ</span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-3 col-lg-4 col-md-4 col-12">
										<div class="single-product">
											<div class="product-img">
												<a href="product-info.jsp">
													<img class="default-img" src="image/product-image/550x750.15.png" alt="#">
													<img class="hover-img" src="image/product-image/550x750.15.png" alt="#">
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
												<h3><a href="product-info.jsp">Rèm Cầu Vồng All Plus – Behan</a></h3>
												<div class="product-price">
													<span>180,000đ</span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-3 col-lg-4 col-md-4 col-12">
										<div class="single-product">
											<div class="product-img">
												<a href="product-info.jsp">
													<img class="default-img" src="image/product-image/550x750.16.png" alt="#">
													<img class="hover-img" src="image/product-image/550x750.16.png" alt="#">
													<span class="price-dec">-30%</span>
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
												<h3><a href="product-info.jsp">Rèm cửa sợi kim tuyến màu vàng kem</a></h3>
												<div class="product-price">
													<span>520,000đ</span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-3 col-lg-4 col-md-4 col-12">
										<div class="single-product">
											<div class="product-img">
												<a href="product-info.jsp">
													<img class="default-img" src="image/product-image/550x750.17.png" alt="#">
													<img class="hover-img" src="image/product-image/550x750.17.png" alt="#">
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
												<h3><a href="product-info.jsp">Rèm phòng tắm Hàn Quốc</a></h3>
												<div class="product-price">
													<span>80,000đ</span>
												</div>
											</div>
										</div>
									</div>
<%--									<%Product product = ProductService.getInstance().getById(15);%>--%>
<%--									<div class="col-xl-3 col-lg-4 col-md-4 col-12">--%>
<%--										<div class="single-product">--%>
<%--											<div class="product-img">--%>
<%--												<a href="product-info.jsp">--%>
<%--													<img class="default-img" src="<%=GalleryService.getInstance().getOneImageByProductId(product.getId()).getImagePath()%>" alt="#" width="550px" height="750px">--%>
<%--													<img class="hover-img" src="<%=GalleryService.getInstance().getOneImageByProductId(product.getId()).getImagePath()%>" alt="#" width="550px" height="750px">--%>
<%--													<span class="out-of-stock">Hot</span>--%>
<%--												</a>--%>
<%--												<div class="button-head">--%>
<%--		&lt;%&ndash;										<div class="product-action">&ndash;%&gt;--%>
<%--		&lt;%&ndash;											<a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Yêu Thích</span></a>&ndash;%&gt;--%>
<%--		&lt;%&ndash;											<a></a>&ndash;%&gt;--%>
<%--		&lt;%&ndash;										</div>&ndash;%&gt;--%>
<%--													<div class="product-action-2">--%>
<%--														<a title="Thêm Vào Giỏ Hàng" href="#">Thêm Vào Giỏ Hàng</a>--%>
<%--													</div>--%>
<%--												</div>--%>
<%--											</div>--%>
<%--											<div class="product-content">--%>
<%--												<h3><a href="product-info.jsp"><%= product.getProductName() %></a></h3>--%>
<%--												<div class="product-price">--%>
<%--													<span class="old"> <%= product.getProductPrice()%> </span>--%>
<%--													<span> <%= product.getProductPrice() - (product.getProductPrice()) * product.getProductDiscount()%> </span>--%>
<%--												</div>--%>
<%--											</div>--%>
<%--										</div>--%>
<%--									</div>--%>
								</div>
							</div>
						</div>
						<!--/ End Single Tab -->

					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End Product Area -->


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
	<%--							<p>Copyright © 2023 <a href="#" target="_blank">Curtainshop</a>  -  Đã đăng kí bản quyền.</p>--%>
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
<!-- Waypoints JS -->
<script src="js/waypoints.min.js"></script>
<!-- Countdown JS -->
<script src="js/finalcountdown.min.js"></script>
<!-- Nice Select JS -->
<script src="js/nicesellect.js"></script>
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