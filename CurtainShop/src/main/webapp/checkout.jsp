<%@ page import="com.curtainshop.beans.User" %>
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
    <title>Thanh Toán</title>
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
												<li ><a href="cart.jsp">Giỏ Hàng</a></li>
												<li class="active"><a href="checkout.jsp">Thanh Toán</a></li>
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
								<li><a href="index.jsp">Trang Chủ<i class="ti-arrow-right"></i></a></li>
								<li class="active"><a href="blog-single.html">Thanh Toán</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Breadcrumbs -->
				
		<!-- Start Checkout -->
		<section class="shop checkout section">
			<div class="container">
				<div class="row"> 
					<div class="col-lg-8 col-12">
						<div class="checkout-form">
							<h2>Thực hiện thanh toán của bạn ở đây</h2>
							<p>Vui lòng đăng ký để thanh toán nhanh hơn</p>
							<!-- Form -->
							<form class="form" method="post" action="#">
								<div class="row">
									<div class="col-lg-6 col-md-6 col-12">
										<div class="form-group">
											<label>Tên<span>*</span></label>
											<input type="text" name="name" placeholder="" required="required">
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-12">
										<div class="form-group">
											<label>Họ<span>*</span></label>
											<input type="text" name="name" placeholder="" required="required">
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-12">
										<div class="form-group">
											<label>Địa chỉ Email<span>*</span></label>
											<input type="email" name="email" placeholder="" required="required">
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-12">
										<div class="form-group">
											<label>Số điện thoại<span>*</span></label>
											<input type="number1" name="number" placeholder="" required="required">
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-12">
										<div class="form-group">
											<label>Tỉnh thành<span>*</span></label>
											<select name="country_name" id="country">
												<option value="AF">An Giang</option>
												<option value="AX">Bà Rịa-Vũng Tàu</option>
												<option value="AL">Bạc Liêu</option>
												<option value="DZ">Bắc Kạn</option>
												<option value="AS">Bắc Giang</option>
												<option value="AD">Bắc Ninh</option>
												<option value="AO">Bến Tre</option>
												<option value="AI">Bình Dương</option>
												<option value="AQ">Bình Định</option>
												<option value="AG">Bình Phước</option>
												<option value="AR">Bình Thuận</option>
												<option value="AM">Cà Mau</option>
												<option value="AW">Cao Bằng</option>
												<option value="AU">Cần Thơ (TP)</option>
												<option value="AT">Đà Nẵng (TP)</option>
												<option value="AZ">Đắk Lắk</option>
												<option value="BS">Đắk Nông</option>
												<option value="BH">Điện Biên</option>
												<option value="BD">Đồng Nai</option>
												<option value="BB">Đồng Tháp</option>
												<option value="BY">Gia Lai</option>
												<option value="BE">Hà Giang</option>
												<option value="BZ">Hà Nam</option>
												<option value="BJ">Hà Nội (TP)</option>
												<option value="BM">Hà Tây</option>
												<option value="BT">Hà Tĩnh</option>
												<option value="BO">Hải Dương</option>
												<option value="BA">Hải Phòng (TP)</option>
												<option value="BW">Hòa Bình</option>
												<option value="BV">Hồ Chí Minh (TP)</option>
												<option value="BR">Hậu Giang</option>
												<option value="IO">Hưng Yên</option>
												<option value="VG">Khánh Hòa</option>
												<option value="BN">Kiên Giang</option>
												<option value="BG">Kon Tum</option>
												<option value="BF">Lai Châu</option>
												<option value="BI">Lào Cai</option>
												<option value="KH">Lạng Sơn</option>
												<option value="CM">Lâm Đồng</option>
												<option value="CA">Long An</option>
												<option value="CV">Nam Định</option>
												<option value="KY">Nghệ An</option>
												<option value="CF">Ninh Bình</option>
												<option value="TD">Ninh Thuận</option>
												<option value="CL">Phú Thọ</option>
												<option value="CN">Phú Yên</option>
												<option value="CX">Quảng Bình</option>
												<option value="CC">Quảng Nam</option>
												<option value="CO">Quảng Ngãi</option>
												<option value="KM">Quảng Ninh</option>
												<option value="CG">Quảng Trị</option>
												<option value="CD">Sóc Trăng</option>
												<option value="CK">Sơn La</option>
												<option value="CR">Tây Ninh</option>
												<option value="CI">Thái Bình</option>
												<option value="HR">Thái Nguyên</option>
												<option value="CU">Thanh Hóa</option>
												<option value="CY">Thừa Thiên - Huế</option>
												<option value="CZ">Tiền Giang</option>
												<option value="DK">Trà Vinh</option>
												<option value="DJ">Tuyên Quang</option>
												<option value="DM">Vĩnh Long</option>
												<option value="DO">Vĩnh Phúc</option>
												<option value="EC">Yên Bái</option>
											</select>
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-12">
										<div class="form-group">
											<label>Địa chỉ<span>*</span></label>
											<input type="text" name="address" placeholder="" required="required">
										</div>
									</div>
								</div>
							</form>
							<!--/ End Form -->
						</div>
					</div>
					<div class="col-lg-4 col-12">
						<div class="order-details">
							<!-- Order Widget -->
							<div class="single-widget">
								<h2>Giỏ Hàng</h2>
								<div class="content">
									<ul>
										<li>Tổng giá<span>1,000,000đ</span></li>
										<li>(+) Phí vận chuyê<span>0đ</span></li>
										<li class="last">Tổng tính<span>1,000,000đ</span></li>
									</ul>
								</div>
							</div>
							<!--/ End Order Widget -->
							<!-- Order Widget -->
							<div class="single-widget">
								<h2>Phương thức</h2>
								<div class="content">
									<div class="radioPayment" style="margin-left: 30px; margin-top: 20px;">
										<input type="radio" id="html" name="fav_language" value="HTML">
										<label for="html">HTML</label><br>
										<input type="radio" id="css" name="fav_language" value="CSS">
										<label for="css">CSS</label><br>
										<input type="radio" id="javascript" name="fav_language" value="JavaScript">
										<label for="javascript">JavaScript</label>
									</div>
								</div>
							</div>
							<!--/ End Order Widget -->
							<!-- Payment Method Widget -->
							<div class="single-widget payement">
								<div class="content">
<!--									<img src="images/logo/R.png" alt="#">-->
								</div>
							</div>
							<!--/ End Payment Method Widget -->
							<!-- Button Widget -->
							<div class="single-widget get-button">
								<div class="content">
									<div class="button" >
										<a href="#" class="btn">Tiến hành thanh toán</a>
									</div>
								</div>
							</div>
							<!--/ End Button Widget -->
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--/ End Checkout -->

			
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