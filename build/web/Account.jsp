<%-- 
    Document   : Account
    Created on : Feb 16, 2021, 7:22:13 PM
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
        <title>Tài khoản của tôi</title>
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
            .jFkAwY{
                margin-right: auto;
                margin-left: 100px;
            }
            .uSLJP {
                margin: 0px;
                padding: 0px;
                list-style: none;
                font-size: 13px;
            }
            .gKGcfW {
                width: 250px;
                margin-right: 17px;
                margin-right: 18px;
            }
            .hBHoW {
                display: flex;
                -webkit-box-align: center;
                align-items: center;
                padding-left: 7px;
                margin: 0px 0px 12px;
            }
            .uSLJP a{
                display: flex;
                -webkit-box-align: center;
                align-items: center;
                padding: 15px 18px;
                color: rgb(74, 74, 74);
            }
            .edAZXd{
                flex: 1 1 0%;
            }
            .jZJmua{
                font-size: 19px;
                line-height: 21px;
                font-weight: 300;
                margin: 20px 0px 15px;
            }
            .irgDVD{
                background-color: rgb(255, 255, 255);
                padding: 30px 20px;
                border-radius: 4px;
            }
            .bYlDgr{
                transition: border-color 0.15s ease-in-out 0s, box-shadow 0.15s ease-in-out 0s, -webkit-box-shadow 0.15s ease-in-out 0s;
                border: 1px solid rgb(204, 204, 204);
                border-radius: 4px;
                height: 34px;
                padding: 6px 12px;
                line-height: 34px;
                outline: none;
            }
            .col-md-4{
                width: 20%;
            }
            .col-md-2{
                margin-top: 15px;
            }
            .col-md-8{
                padding-top: 5px;
                padding-bottom: 10px;
            }
            .euTTxe{
                display: flex;
                margin-right: 15px;
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
        <div class="jFkAwY">
            <div class="row">
                <div class="col-md-4">
                    <aside class="gKGcfW">
                        <div class="hBHoW">
                            <img src="https://salt.tikicdn.com/desktop/img/avatar.png" alt="" />
                            <div class="info">Tài khoản của</br><strong>${user.user}</strong></div>
                        </div>
                        <ul class="uSLJP">
                            <table class="table table-success table-striped">
                                <li>
                                    <a class="is-active" href="account">
                                        <i class="fa fa-user" ></i>
                                        Thông tin tài khoản
                                    </a>
                                </li>
                                <li>
                                    <a class="" href="#">
                                        <i class="fa fa-shopping-cart"></i>
                                        Quản lý đơn hàng
                                    </a>
                                </li>
                                <li>
                                    <a class="" href="#">
                                        <i class="fa fa-arrow-circle-down"></i>
                                        Sổ địa chỉ
                                    </a>
                                </li>
                                <li>
                                    <a class="" href="#">
                                        <i class="fa fa-credit-card"></i>
                                        Thông tin thanh toán
                                    </a>
                                </li>
                                <li>
                                    <a class="" href="#">
                                        <i class="fa fa-heart"></i>
                                        Sản phẩm yêu thích
                                    </a>
                                </li>
                            </table>

                        </ul>
                    </aside>
                </div>
                <div class="col-md-8">
                    <div class="edAZXd">
                        <h3 class="jZJmua">Thông tin tài khoản</h3>
                    </div>
                    <div>
                        <form action="update" method="post">
                            <div class="row">
                                <div class="col-md-2">
                                    <label class="">Họ tên</label>
                                </div>
                                <div class="col-md-8">
                                    <input type="text" name="name" maxlength="128" class="bYlDgr" value="${detail.name}">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-2">
                                    <label class="">Email</label>
                                </div>
                                <div class="col-md-8">
                                    <input type="text" name="email" class="bYlDgr" value="${detail.email}">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-2">
                                    <label class="">Số điện thoại</label>
                                </div>
                                <div class="col-md-8">
                                    <input type="text" name="phone" class="bYlDgr" value="${detail.phone}">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-2">
                                    <label class="">Địa chỉ</label>
                                </div>
                                <div class="col-md-8">
                                    <input type="text" name="address" class="bYlDgr" value="${detail.address}">
                                </div>
                            </div>
                            <div class="">
                                <button type="submit" class="">Cập nhật</button>
                            </div>
                        </form>
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
