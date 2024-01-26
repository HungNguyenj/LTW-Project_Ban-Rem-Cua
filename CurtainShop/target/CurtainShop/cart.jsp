<%@ page import="com.curtainshop.beans.User" %>
<%@ page import="com.curtainshop.carts.Carts" %>
<%@ page import="java.util.Map" %>
<%@ page import="com.curtainshop.carts.CartsProduct" %>
<%@ page import="com.curtainshop.beans.Product" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<!-- Meta Tag -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name='copyright' content=''>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Title Tag  -->
    <title>Giỏ Hàng</title>
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
	
	<!-- Eshop StyleSheet -->
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
													<li ><a href="shop-grid.jsp">Sản Phẩm<i class="ti-angle-down"></i></a>
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
													<li class="active"><a href="cart.jsp">Giỏ Hàng</a></li>
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
							<li class="active"><a href="blog-single.html">Giỏ Hàng</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Breadcrumbs -->
			
	<!-- Shopping Cart -->
	<div class="shopping-cart section">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<!-- Shopping Summery -->
					<table class="table shopping-summery">
						<thead>
							<tr class="main-hading">
								<th>Sản Phẩm</th>
								<th class="text-center">Giá</th>
								<th class="text-center">Chiều rộng (cm)</th>
								<th class="text-center">Chiều cao (cm)</th>
								<th class="text-center">Số Lượng</th>
								<th class="text-center">TOTAL</th> 
								<th class="text-center"><i class="ti-trash remove-icon"></i></th>
							</tr>
						</thead>

						<%
							Carts cart = (Carts) session.getAttribute("cart");
							if (cart == null) {
								cart = new Carts();
							}
							Map<Integer, CartsProduct> cartItems = cart.getListData();
						%>
						<%
							if (cartItems.isEmpty()) {
						%>

						<%
							} else {
						%>
						<%
							for (Map.Entry<Integer, CartsProduct> entry : cartItems.entrySet()) {
								CartsProduct cartsProduct = entry.getValue();
								Product product = cartsProduct.getProduct();

						%>

						<tbody>
						<%NumberFormat currentFormat = NumberFormat.getCurrencyInstance(java.util.Locale.forLanguageTag("vi-VN"));%>
							<tr>
								<td class="product-des" data-title="Description">
									<p class="product-name"><a href="product-info.jsp?id=<%=product.getId()%>"><%=product.getProductName()%></a></p>
								</td>
								<td class="price" data-title="Price"><span><%=currentFormat.format(product.getProductPrice())%></span></td>
								<td>
									 <div>
										 <input type="number" name="productWidth" placeholder="Chiều rộng" style="width: 100px">
									 </div>
								</td>
								<td>
									<div >
										<input type="number" name="productHeight"placeholder="Chiều cao" style="width: 100px">
									</div>
								</td>
								<td class="qty" data-title="Qty">
									<!-- Input Order -->
									<div class="input-group">
										<div class="button minus">
											<button type="button" class="btn btn-primary btn-number" disabled="disabled" data-type="minus" data-field="quant[<%=product.getId()%>]">
												<i class="ti-minus"></i>
											</button>
										</div>
										<input type="text" name="quant[<%=product.getId()%>]" class="input-number"  data-min="1" data-max="<%=product.getQuantity()%>" value="<%=cartsProduct.getQuantity()%>">
										<div class="button plus">
											<form action="CartController?productId=<%=product.getId()%>&quantity=1" method="post">
												<button type="submit" class="btn btn-primary btn-number" data-type="plus" data-field="quant[<%=product.getId()%>]">
													<i class="ti-plus"></i>
												</button>
											</form>
										</div>
									</div>
									<!--/ End Input Order -->
								</td>
								<td class="total-amount" data-title="Total"><span><%=currentFormat.format(product.getProductPrice() * cartsProduct.getQuantity())%></span></td>
								<td class="action" data-title="Remove"><a href="RemoveCartController?productId=<%=product.getId()%>"><i class="ti-trash remove-icon"></i></a></td>
							</tr>

							<%		}
							}%>


						</tbody>
					</table>
					<!--/ End Shopping Summery -->
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<!-- Total Amount -->
					<div class="total-amount">
						<div class="row">
							<div class="col-lg-8 col-md-5 col-12">
								<div class="left">
								</div>
							</div>
							<div class="col-lg-4 col-md-7 col-12">
								<div class="right">

									<ul>
										<%NumberFormat currentFormat1 = NumberFormat.getCurrencyInstance(java.util.Locale.forLanguageTag("vi-VN"));%>

										<li>Tổng giá giỏ hàng<span><%=currentFormat1.format(cart.getTotalPrice())%>></span></li>
										<li>Phí vận chuyển<span><%=currentFormat1.format(cart.getTotalPrice() * 0.05)%></span></li>
										<li class="last">Tổng<span><%=currentFormat1.format(cart.getTotalPrice()-(cart.getTotalPrice() * 0.05))%></span></li>
									</ul>
									<div class="button5">
										<a href="checkout.jsp" class="btn">Thanh Toán</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--/ End Total Amount -->
				</div>
			</div>
		</div>
	</div>
	<!--/ End Shopping Cart -->
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