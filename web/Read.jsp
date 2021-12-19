<%-- 
    Document   : Read
    Created on : Dec 19, 2021, 2:28:49 AM
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
        <title>Đọc ${chap.chapterName}</title>

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
        <link href="css/read.css" rel="stylesheet" type="text/css"/>
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
                                <li ><a href="shop">Shop page</a></li>
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
        <div class="reading-book">
            <c:if test="${sessionScope.chapnum <= 3}">
                <div class="header-book">
                    <h2>${chap.productName}</h2>
                    <h3>${chap.chapterName}</h3>
                </div>
                <div class="body-book">
                    <h4>${chap.content}</h4>
                </div>
                <div class="footer-book row">
                    <div class="prev col-md-3">
                        <a href="reading?chapid=${chap.id - 1}">Chapter trước</a>
                    </div>
                    <div class="col-md-6">
                        <a href="singleproduct?pid=${chap.productId}">${chap.productName}</a>
                    </div>
                    <div class="next col-md-3">
                        <a href="reading?chapid=${chap.id + 1}">Chapter sau</a>
                    </div>
                </div>
            </c:if>
            <c:if test="${sessionScope.chapnum > 3}">
                <div class="header-book">
                    <h2>${chap.productName}</h2>
                </div>
                <div class="body-book">
                    <h4>Hãy click vào <a href="singleproduct?pid=${chap.productId}">đây</a> để mua truyện ủng hộ nhà phát hành và dịch giả, chứ không làm mà muốn có ăn thì chỉ có ăn ...</h4>
                </div>
            </c:if>
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
</body>
</html>
