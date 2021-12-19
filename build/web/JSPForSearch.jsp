<%-- 
    Document   : JSPForSearch
    Created on : Mar 28, 2021, 3:47:13 PM
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
        <title>Shop</title>
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
                                    <form action="search" method="post">
                                        <input class="search" name="txt" value="${find}" type="text" placeholder="Search products..." oninput="searchByName(this)">
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
                            <h2>Search results for "<strong>${find}</strong>"</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="single-product-area">
            <div class="container">
                <div id="content" class="row">
                    <c:forEach items="${listP}" var="o">
                        <div class="product col-md-3 col-sm-6">
                            <div class="single-shop-product">
                                <img src="image/${o.image}" alt="">
                                <div class="product-upper">
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
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
            function searchByName(param) {
                var txtSearch = param.value;
                $.ajax({
                    url: "/ProjectTest_1.5/searchbyajax",
                    type: "get", //send it through get method
                    data: {
                        txt: txtSearch
                    },
                    success: function (data) {
                        var row = document.getElementById("content");
                        row.innerHTML = data;
                    },
                    error: function (xhr) {
                        //Do Something to handle error
                    }
                });
            }
        </script>
    </body>
    <footer>
        <jsp:include page="Footer.jsp"></jsp:include>
    </footer>
</html>
