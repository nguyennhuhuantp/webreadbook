<%-- 
    Document   : Shop
    Created on : Feb 17, 2021, 11:14:50 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Shop Page</title>

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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .single-shop-product h2{
                font-size: 18px;
            }
            .active{
                font-weight: bold;
            }
            .pagination{
                padding-left: 900px;
            }
            .edit_to_cart_button{
                margin-left: 66px;
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
                                <li ><a href="home">Home</a></li>
                                <li class="active"><a href="shop">Shop page</a></li>
                                <li ><a href="cart.html">Cart</a></li>
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
            <div class="product-big-title-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="product-bit-title text-center">
                                <h2>Shop</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="single-product-area">
                <div class="container">
                    <div class="row">
                    <c:forEach items="${listAllP}" var="o">
                        <div class="col-md-3 col-sm-6">
                            <div class="single-shop-product">
                                <div class="product-upper">
                                    <img src="image/${o.image}" alt="">
                                </div>
                                <div>
                                    <h2>
                                        <a href="singleproduct?pid=${o.id}">
                                            ${o.name}
                                        </a>
                                    </h2>
                                    <div class="product-carousel-price">
                                        <ins>${o.price - o.price*o.discount/100}</ins> <del>${o.price}</del>
                                    </div>  

                                    <div class="product-option-shop">
                                        <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="70" rel="nofollow" href="/canvas/shop/?add-to-cart=70">Add to cart</a>
                                        <c:if test="${sessionScope.acc.isAdmin == 1}">
                                            <a class="edit_to_cart_button" href="#" style="color: white">Edit</a>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="product-pagination text-center">
                        <nav>
                            <ul class="pagination">
                                <c:if test="${end < 5}">
                                    <li>
                                        <c:if test="${sessionScope.in != 1}">
                                            <a href="shop?index=${1}" aria-label="First">
                                                <span aria-hidden="true">&laquo;</span>
                                            </a>
                                        </c:if>
                                    </li>
                                    <li>
                                        <c:if test="${sessionScope.in != 1}">
                                            <a href="shop?index=${sessionScope.in - 1}" aria-label="Previous">
                                                <span aria-hidden="true">&lt;</span>
                                            </a>
                                        </c:if>
                                    </li>
                                    <c:forEach begin="1" end="${end}" var="i">
                                        <li class="${tag == i ? "active" : ""}">
                                            <a href="shop?index=${i}" >${i}</a>
                                        </li>
                                    </c:forEach>
                                    <li>
                                        <c:if test="${sessionScope.in != sessionScope.endpage}">
                                            <a href="shop?index=${sessionScope.in + 1}" aria-label="Next">
                                                <span aria-hidden="true">&gt;</span>
                                            </a>
                                        </c:if>
                                    </li>
                                    <li>
                                        <c:if test="${sessionScope.in != sessionScope.endpage}">
                                            <a href="shop?index=${sessionScope.endpage}" aria-label="Last">
                                                <span aria-hidden="true">&raquo;</span>
                                            </a>
                                        </c:if>
                                    </li>
                                </c:if>
                                <c:if test="${end >= 5}">
                                    <li>
                                        <c:if test="${sessionScope.in != 1}">
                                            <a href="shop?index=${1}" aria-label="First">
                                                <span aria-hidden="true">&laquo;</span>
                                            </a>
                                        </c:if>
                                    </li>
                                    <li>
                                        <c:if test="${sessionScope.in != 1}">
                                            <a href="shop?index=${sessionScope.in - 1}" aria-label="Previous">
                                                <span aria-hidden="true">&lt;</span>
                                            </a>
                                        </c:if>
                                    </li>
                                    <c:if test="${sessionScope.in <= 3}">
                                        <c:forEach begin="1" end="5" var="i">
                                            <li class="${tag == i ? "active" : ""}">
                                                <a href="shop?index=${i}" >${i}</a>
                                            </li>
                                        </c:forEach>
                                    </c:if>
                                    <c:if test="${sessionScope.in > 3 && sessionScope.in <= sessionScope.endpage - 2}">
                                        <c:forEach begin="${sessionScope.in - 2}" end="${sessionScope.in + 2}" var="i">
                                            <li class="${tag == i ? "active" : ""}">
                                                <a href="shop?index=${i}">${i}</a>
                                            </li>
                                        </c:forEach>
                                    </c:if>
                                    <c:if test="${sessionScope.in + 2 > sessionScope.endpage}">
                                        <c:forEach begin="${end - 4}" end="${end}" var="i">
                                            <li class="${tag == i ? "active" : ""}">
                                                <a href="shop?index=${i}" >${i}</a>
                                            </li>
                                        </c:forEach>
                                    </c:if>
                                    <li>
                                        <c:if test="${sessionScope.in != sessionScope.endpage}">
                                            <a href="shop?index=${sessionScope.in + 1}" aria-label="Next">
                                                <span aria-hidden="true">&gt;</span>
                                            </a>
                                        </c:if>
                                    </li>
                                    <li>
                                        <c:if test="${sessionScope.in != sessionScope.endpage}">
                                            <a href="shop?index=${sessionScope.endpage}" aria-label="Last">
                                                <span aria-hidden="true">&raquo;</span>
                                            </a>
                                        </c:if>
                                    </li>
                                </c:if>
                            </ul>
                        </nav>                        
                    </div>
                </div>
            </div>
        </div>


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
