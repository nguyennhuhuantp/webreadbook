<%-- 
    Document   : Manager
    Created on : Mar 15, 2021, 11:31:07 AM
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
        <title>Manager Account</title>
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
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            .manager{
                margin-right: auto;
                margin-left: 100px;
            }
            .table>thead>tr>th {
                vertical-align: bottom;
                border-bottom: 2px solid #ddd;
                background-color: #333;
                color: #FFF;
            }
            .col-md-10 {
                width: 70.9%;
            }
            .set-up{
                text-align: right;
            }
            table.table td a.edit {
                color: #FFC107;
            }
            .col-md-10 img{
                width: 250px;
                height: 330px
            }
            .hint-text {
                float: left;
                margin-top: 10px;
                font-size: 13px;
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
                                <li><a href="home">Home</a></li>
                                <li><a href="shop">Shop page</a></li>
                                <li><a href="cart.html">Cart</a></li>
                                <li><a href="checkout.html">Checkout</a></li>
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
                                <li><a href="#">Others</a></li>
                                <li><a href="#">Contact</a></li>
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
            <div class="zigzag-bottom">
                </br>
            </div>
            <div class="manager">
                <div class="row">
                    <div class="col-md-2">
                        <table class="table table-striped">
                            <thead style="font-weight: bold">
                                <tr>
                                    <th scope="col"><span>MANAGER</span></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row"><a href="managerProduct">Manager Product</a></th>
                                </tr>
                            <c:if test="${sessionScope.acc.isAdmin == 1}">
                                <tr>
                                    <th scope="row"><a href="managerAccount">Manager Member</a></th>
                                </tr>
                            </c:if>
                        </tbody>
                    </table>
                </div>
                <div class="col-md-10">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-6">
                                <h2>Manage <b>Member</b></h2>
                            </div>
                        </div>
                    </div>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Username</th>
                                <th>Authorization</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${listAllA}" var="o">
                                <tr>
                                    <td>${o.id}</td>
                                    <td>${o.user}</td>
                                    <td>
                                        <c:if test="${o.isSell == 1}">
                                            is Seller
                                        </c:if>
                                        <c:if test="${o.isSell == 0}">
                                            is Buyer
                                        </c:if>
                                    </td>
                                    <td>
                                        <c:if test="${o.status == 0}">
                                            Block
                                        </c:if>
                                        <c:if test="${o.status == 1}">
                                            Allow
                                        </c:if>
                                    </td>
                                    <td>
                                        <a href="loadDetailAccount?id=${o.id}" class="edit"><i class="fa fa-edit" title="Edit"></i></a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
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
    </body>
    <footer>
        <jsp:include page="Footer.jsp"></jsp:include>
    </footer>
</html>
