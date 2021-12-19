<%-- 
    Document   : Home
    Created on : Feb 5, 2021, 5:07:49 PM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Otaku no Sekai</title>
        <!-- Google Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.min.css">

        <!-- Font Awesome -->
        <link rel="stylesheet" href="css/font-awesome.min.css">

        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="css/responsive.css">
        <!--Background-->
        <link rel="stylesheet" href="css/backgrounds.css">
        <!--Ico-->
        <link rel="shortcut icon" type="image/png" href="image/icon/__original_drawn_by_ichihaya__f4254d3f9fc4d617f6017eca6ce7bd1f.ico"/>

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <style>

            .block-slider4 img{
                width: 50%;
            }
            .block-slider .caption-group {
                margin-top: 247px;
            }
            .product-thumb{
                height: 125px;
            }

        </style>

    </head>
    <body>
        <jsp:include page="Menu.jsp"></jsp:include>
            <div class="mainmenu-area">
                <div class="container">
                    <div class="row">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div> 
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav">
                                <li class="active"><a href="home">Home</a></li>
                                <li ><a href="shop">Shop page</a></li>
                                <li ><a href="cart">Cart</a></li>
                                <li ><a href="checkout.html">Checkout</a></li>
                                <li class="dropdown dropdown-small">
                                    <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#">
                                        Category
                                    </a>
                                    <ul class="dropdown-menu" style="min-width: 102px">
                                    <c:forEach items="${listC}" var="o">
                                        <a href="shopbycate?cateid=${o.id}" style="padding: 5px; background-color: white; color: black">${o.name}</a></br>
                                    </c:forEach>
                                </ul>
                            </li>
                            <li ><a href="#">Others</a></li>
                            <li ><a href="#">Contact</a></li>
                            <li>
                                <form action="search" method="POST">
                                    <input class="search" name="txt" type="text" placeholder="Search products...">
                                    <input type="submit" value="Search">
                                </form>
                            </li>
                        </ul>
                    </div>  
                </div>
            </div>
        </div> <!-- End mainmenu area -->
        <div class="slider-area">
            <!-- Slider -->
            <div class="block-slider block-slider4">
                <ul class="" id="bxslider-home4">
                    <c:forEach items="${listT10}" var="o">
                        <li>
                            <div class="row">
                                <div class="col-md-6">
                                    <img src="image/${o.image}" alt="Slide" style="width: 100%">
                                </div>
                                <div class="col-md-6">
                                    <div class="caption-group" style="right: 75%">
                                        <h2 class="caption title">
                                            ${o.name}
                                        </h2>
                                        <h4 class="caption subtitle">${o.title}</h4>
                                        <a class="caption button-radius" href="singleproduct?pid=${o.id}"><span class="icon"></span>Shop now</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <!-- ./Slider -->
        </div> <!-- End slider area -->
        <div class="promo-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="single-promo promo1">
                            <i class="fa fa-refresh"></i>
                            <p>30 Days return</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="single-promo promo2">
                            <i class="fa fa-truck"></i>
                            <p>Free shipping</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="single-promo promo3">
                            <i class="fa fa-lock"></i>
                            <p>Secure payments</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="single-promo promo4">
                            <i class="fa fa-gift"></i>
                            <p>New products</p>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- End promo area -->

        <div class="maincontent-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="latest-product">
                            <h2 class="section-title">Latest Products</h2>
                            <div class="product-carousel">
                                <c:forEach items="${listLatest}" var="o">
                                    <div class="single-product">
                                        <div class="product-f-image">
                                            <img src="image/${o.image}" width="25px" height="30px">
                                            <div class="product-hover">
                                                <a href="cookie?id=${o.id}" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                                <a href="singleproduct?pid=${o.id}" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                            </div>
                                        </div>

                                        <h2><a href="singleproduct?pid=${o.id}">${o.name}</a></h2>

                                        <div class="product-carousel-price">
                                            <ins>${o.price - o.price*o.discount/100}</ins> <del>${o.price}</del>
                                        </div> 
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- End main content area -->

        <div class="product-widget-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="single-product-widget">
                            <h2 class="product-wid-title">Top Sellers</h2>
                            <a href="" class="wid-view-more">View All</a>
                            <c:forEach items="${listT3Sell}" var="o">
                                <div class="single-wid-product">
                                    <a href="singleproduct?pid=${o.id}"><img src="image/${o.image}" width="12px" height="18px" alt="" class="product-thumb"></a>
                                    <h2><a href="singleproduct?pid=${o.id}">${o.name}</a></h2>
                                    <div class="product-wid-rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div class="product-wid-price">
                                        <ins>${o.price - o.price*o.discount/100}</ins> <del>${o.price}</del>
                                    </div>                            
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="single-product-widget">
                            <h2 class="product-wid-title">Recently Viewed</h2>
                            <a href="#" class="wid-view-more">View All</a>
                            <c:forEach items="${listT3View}" var="o">
                                <div class="single-wid-product">
                                    <a href="singleproduct?pid=${o.id}"><img src="image/${o.image}" alt="" class="product-thumb"></a>
                                    <h2><a href="singleproduct?pid=${o.id}">${o.name}</a></h2>
                                    <div class="product-wid-rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div class="product-wid-price">
                                        <ins>${o.price - o.price*o.discount/100}</ins> <del>${o.price}</del>
                                    </div>                            
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="single-product-widget">
                            <h2 class="product-wid-title">Top New</h2>
                            <a href="#" class="wid-view-more">View All</a>
                            <c:forEach items="${listT3New}" var="o">
                                <div class="single-wid-product">
                                    <a href="singleproduct?pid=${o.id}"><img src="image/${o.image}" alt="" class="product-thumb"></a>
                                    <h2><a href="singleproduct?pid=${o.id}">${o.name}</a></h2>
                                    <div class="product-wid-rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div class="product-wid-price">
                                        <ins>${o.price - o.price*o.discount/100}</ins> <del>${o.price}</del>
                                    </div>                            
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- End product widget area -->


        <!-- Latest jQuery form server -->
        <script src="https://code.jquery.com/jquery.min.js"></script>

        <!-- Bootstrap JS form CDN -->
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

        <!-- jQuery sticky menu -->
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.sticky.js"></script>

        <!-- jQuery easing -->
        <script src="js/jquery.easing.1.3.min.js"></script>

        <!-- Main Script -->
        <script src="js/main.js"></script>

        <!-- Slider -->
        <script type="text/javascript" src="js/bxslider.min.js"></script>
        <script type="text/javascript" src="js/script.slider.js"></script>
    </body>
    <footer>
        <jsp:include page="Footer.jsp"></jsp:include>
    </footer>
</html>
