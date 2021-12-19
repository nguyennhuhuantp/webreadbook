<%-- 
    Document   : SingleProduct
    Created on : Feb 22, 2021, 4:56:48 PM
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
        <title>${p.name}</title>

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
        <div class="single-product-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="single-sidebar">
                            <h2 class="sidebar-title">Products</h2>
                            <c:forEach items="${listT4}" var="o">
                                <div class="thubmnail-recent">
                                    <img src="image/${o.image}" class="recent-thumb" alt="">
                                    <h2><a href="singleproduct?pid=${o.id}">${o.name}</a></h2>
                                    <div class="product-sidebar-price">
                                        <ins>${o.price - o.price*o.discount/100}</ins> <del>${o.price}</del>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>

                        <div class="single-sidebar">
                            <h2 class="sidebar-title">Recent Posts</h2>
                            <ul>
                                <c:forEach items="${listT5}" var="o">
                                    <li>
                                        <a href="singleproduct?pid=${o.id}">${o.name}</a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-9">
                        <div class="product-content-right">
                            <div class="product-breadcroumb">
                                <a href="home">Home</a>
                                <a href="shopbycate?cateid=${c.id}">${c.name}</a>
                                <a href="singleproduct?pid=${p.id}">${p.name}</a>
                            </div>

                            <div class="row">
                                <div class="col-sm-8">
                                    <div class="product-images">
                                        <div class="product-main-img">
                                            <img src="image/${p.image}" alt="">
                                        </div>

                                        <div class="product-gallery">
                                            <img src="image/${p.image}" alt="">
                                            <img src="image/${p.image}" alt="">
                                            <img src="image/${p.image}" alt="">
                                        </div>
                                    </div>
                                    <div class="product-chapter">
                                        <h3>Danh sách chapter</h3>
                                        <c:forEach items="${listChap}" var="ct">
                                            <a href="reading?chapid=${ct.id}">${ct.chapterName}</a></br>
                                        </c:forEach>
                                    </div>
                                </div>

                                <div class="col-sm-4">
                                    <div class="product-inner">
                                        <h2 class="product-name">${p.name}</h2>
                                        <div class="product-inner-price">
                                            <ins>${p.price - p.price*p.discount/100}</ins> <del>${p.price}</del>
                                        </div>    

                                        <form action="" class="cart">
                                            <div class="quantity">
                                                <input type="number" size="4" class="input-text qty text" title="Qty" value="1" name="quantity" min="1" step="1">
                                            </div>
                                            <button class="add_to_cart_button" type="submit">Add to cart</button>
                                        </form>   

                                        <div class="product-inner-category">
                                            <p>Category: <a href="#">${c.name}</a>.</p>
                                        </div> 

                                        <div role="tabpanel">
                                            <ul class="product-tab" role="tablist">
                                                <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Description</a></li>
                                                <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Reviews</a></li>
                                            </ul>
                                            <div class="tab-content">
                                                <div role="tabpanel" class="tab-pane fade in active" id="home">
                                                    <h2>Product Description</h2>  
                                                    <p>${p.description}</p>
                                                </div>
                                                <div role="tabpanel" class="tab-pane fade" id="profile">
                                                    <h2>Reviews</h2>
                                                    <div class="submit-review">
                                                        <p><label for="name">Name</label> <input name="name" type="text"></p>
                                                        <p><label for="email">Email</label> <input name="email" type="email"></p>
                                                        <div class="rating-chooser">
                                                            <p>Your rating</p>

                                                            <div class="rating-wrap-post">
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                            </div>
                                                        </div>
                                                        <p><label for="review">Your review</label> <textarea name="review" id="" cols="30" rows="10"></textarea></p>
                                                        <p><input type="submit" value="Submit"></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="comment">
                                <form action="singleproduct?pid=${p.id}" method="post">
                                    <input type="text" name="comment" style="width: 590px"><br/>
                                    <input type="submit" value="Comment" style="margin-left: 478px">
                                </form>
                            </div>
                            <div class="">
                                <c:forEach items="${listCom}" var="o">
                                    <div class="">
                                        <div class="">
                                            <img src="https://salt.tikicdn.com/desktop/img/avatar.png" alt="">
                                        </div>
                                        <div class="">
                                            <h6>${o.user}</h6>
                                            <textarea>${o.comment}</textarea>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                        <div class="related-products-wrapper">
                            <h2 class="related-products-title">Related Products</h2>
                            <div class="related-products-carousel">
                                <c:forEach items="${listT6}" var="o">
                                    <div class="single-product">
                                        <div class="product-f-image">
                                            <img src="image/${o.image}" alt="">
                                            <div class="product-hover">
                                                <a href="" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
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
</body>
<footer>
    <jsp:include page="Footer.jsp"></jsp:include>
</footer>
</html>
