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
    <title>Giới Thiệu</title>
    <!-- Favicon -->
    <link rel="icon" type="image/png" href="images/favicon.png">
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
                                            <li class="active"><a href="blog-index.jsp">Giới Thiệu</a></li>
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

<div class="container">
    <div class = "title">
        <h1 style="text-align: center; margin-top: 50px"> Curtain - Shop</h1>
        <p style="text-align: left; margin-top: 20px">Thế giới rèm cửa là đơn vị chuyên kinh doanh và cung cấp các sản phẩm trang trí nhà cửa với sản phẩm chủ lực rèm cửa và phụ kiện nội thất trang trí đa dạng. Chúng tôi đã nhận được sự tin tưởng khách hàng trong suốt chặng đường nhiều năm qua.</p>
        <h5 style="text-align: center; margin-top: 20px">Với cam kết m
            ang đến sản phẩm tốt nhất, đẹp nhất tới khách hàng, nhiều năm qu
            chúng tôi đã luôn cố gắng cập nhật cải tiến sản phẩm và chất lượng t
            ừ sản phẩm cho đến dịch vụ để phục vụ quý khách hàng.</h5>
        <h6 style="margin-top: 20px;margin-bottom: 20px">Giá trị cốt lõi:</h6>
        <ul class="text-content" style="margin-bottom: 20px">
            <li style="margin-bottom: 20px">* Mang sản phẩm chất lượng hàng đầu tới khách hàng</li>
            <li style="margin-bottom: 20px">* Trách nhiệm trong công việc</li>
            <li style="margin-bottom: 20px">* Luôn thay đổi với việc tiếp cận những ý kiến từ khách hàng</li>
        </ul>
        <p style="margin-bottom: 20px">Mọi gia đình đều muốn trang trí cửa sổ của mình với rèm cửa, rèm bóng, mành sao cho thật đẹp mắt. Có rất nhiều những cách thức để trang trí ô cửa với phong cách và màu sắc khác nhau thể hiện được đầy đủ những sở thích hay cá tính của chủ nhà mà vẫn đảm bảo được sự kín đáo cũng như những không gian riêng tư cần thiết khi cần. Không chỉ riêng tại Việt Nam mà các nước châu á, và trên toàn thế giới việc sử dụng rèm cửa gần như là yếu tố tất yếu để làm đẹp cho ngôi nhà của mình.</p>
        <p style="margin-bottom: 20px">Rèm còn được gọi là tấm rèm, mành. Nó có thể dài bằng sàn hoặc ngắn hơn có thể che cửa sổ . Nó được làm bằng vải nhẹ như cotton, lanh, hay nhiều các chất liệu khác v.v.</p>
        <p style="margin-bottom: 20px">Mặt khác, mành, màn là chiều dài của đỉnh cửa sổ đến sàn nhà. Rèm cửa được xếp nếp và làm từ vải nặng hoặc dày như nhung, lụa, v.v … Do đó, chặn ánh sáng vào phòng. Nó còn được gọi là màn treo và tấm mành.</p>
        <p style="margin-bottom: 20px">Về các loại rèm thì chia ra rất nhiều kiểu cách và phong cách khác nhau, nhiều khi cùng sản phẩm đó nhưng lại có một số tên gọi tương tự như nhau.</p>
        <h6 style="margin-top: 20px;margin-bottom: 20px">Các sản phẩm rèm cửa thưởng chủ chốt chia ra một số loại chính như:</h6>
        <ul class="text-content" style="margin-bottom: 20px">
            <li style="margin-bottom: 20px">* Rèm roman</li>
            <li style="margin-bottom: 20px">* Rèm cuốn</li>
            <li style="margin-bottom: 20px">* Rèm vải</li>
            <li style="margin-bottom: 20px">* Rèm lá dọc</li>
            <li style="margin-bottom: 20px">* Rèm sáo Gỗ</li>
            <li style="margin-bottom: 20px">* Rèm Sáo Nhôm</li>
        </ul>
        <p style="margin-bottom: 20px">Đây là những kiểu sản phẩm chính trong lĩnh vực rèm cửa hiện tại, tuy nhiên trong khi lựa chọn sản phẩm thì chúng ta lại đi tiếp đến phong cách, kiểu dáng của từng mẫu rèm cửa là như thế nào với nhiều tên gọi cụ thể thường được sử dụng mà trong bài viết này chúng tôi muốn chia sẻ ngay tới mọi người đó là:</p>
        <ul class="text-content" style="margin-bottom: 20px">
            <li style="margin-bottom: 20px">* Rèm phong cách châu âu</li>
            <li style="margin-bottom: 20px">* Rèm phong cách tân cổ điển</li>
            <li style="margin-bottom: 20px">* Rèm văn phòng</li>
            <li style="margin-bottom: 20px">* Rèm cầu vồng</li>
            <li style="margin-bottom: 20px">* Rèm phòng tắm</li>
            <li style="margin-bottom: 20px">* Rèm phòng học…</li>
        </ul>
        <p style="margin-bottom: 20px">Còn nhiều hơn nữa nhưng bạn thất đấy , hầu hết là đó là tên gọi theo phong cách hay theo nhu cầu sử dụng của mỗi người.</p>
        <p style="margin-bottom: 20px">Đi vào cụ thể thể hơn với một số loại rèm cửa.</p>
        <p style="margin-bottom: 20px">Rèm cuốn thường được mọi người tìm kiếm và thật sự nó là cái tên dễ để mọi người hình dung nhất, đó là phần rèm được sử dụng và cuốn lên khi cần thiết , mẫu rèm này được sử dụng ở đa dạng các không gian khác nhau nên được rất nhiều người sử dụng.</p>
        <p style="margin-bottom: 20px">Tiếp đến là mẫu rèm sáo, mẫu rèm này có những tên gọi phổ biến như rèm sáo nhôm, rèm sáo nhựa, rèm sáo gỗ … chủ yếu được gọi với cái tên từ chất liệu tạo ra các sản phẩm đó.</p>
        <p style="margin-bottom: 20px">Rèm roman là loại rèm cuốn điệu đà cũng được sử dụng rất phổ biến ngày nay, mẫu này thì được sử dụng từ nhiều chất liệu khác nhau và mang dáng hiện đại cho các không gian cửa sổ.</p>
        <p style="margin-bottom: 20px">Thêm một kiểu rèm nữa đó là mẫu Rèm lá dọc được thiết kế kiểu thẳng đứng giữa các tấm mành với nhau, mẫu rèm này thường được thiết kế tương đối đơn giản.</p>
        <p style="margin-bottom: 20px">Còn rất nhiều những kiểu cách khác nữa thegioiremcua.vn sẽ giới thiệu các bạn trong bài viết chi tiết cụ thể hơn hoặc khách hàng cần đặt hàng và có nhu cầu tìm hiểu kỹ hơn chúng tôi hỗ trợ cụ thể để quý khách có thể nắm bắt được trước khi đưa ra những quyết định lựa chọn sản phẩm rèm đẹp nhất cho ngôi nhà, không gian phòng của mình.</p>
        <p style="margin-bottom: 20px">Liên hệ ngay curtainshop để được tư vấn hỗ trợ tốt nhất !</p>

    </div>
</div>

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