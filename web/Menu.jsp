<%-- 
    Document   : Menu
    Created on : Feb 13, 2021, 11:26:23 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .logo img{
                max-width: 100%;
                height: auto;
                position: relative;
                bottom: -140px;
            }
            .block-slider4 img{
                width: 50%;
            }
            .block-slider .caption-group{
                right: 7%;
            }
            .product-thumb{
                height: 125px;
            }
            .search{
                margin-left: 200px;
                margin-top: 9px;
            }

        </style>
    </head>
    <body>
        <div class="header-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="user-menu">
                            <ul>
                                <c:if test="${sessionScope.acc == null }">
                                    <li>
                                        <a href="login" ><i class="fa fa-user"></i> Đăng nhập/ Đăng ký</a>
                                    </li>
                                    <li>
                                        <a href="shop"><i class="fa fa-archive"></i> Danh sách sản phẩm</a>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.acc != null}">
                                    <li>
                                        <a href="account"><i class="fa fa-user" ></i> Tài khoản của tôi</a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-heart"></i> Danh sách yêu thích</a>
                                    </li>
                                    <li>
                                        <a href="cart.html"><i class="fa fa-shopping-cart"></i> Giỏ hàng của tôi</a>
                                    </li>
                                    <li>
                                        <a href="checkout.html"><i class="fa fa-credit-card"></i> Thủ tục thanh toán</a>
                                    </li>
                                    <li class="dropdown dropdown-small">
                                        <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#">
                                            <span class="key"> Hello ${sessionScope.acc.user} </span><b class="caret"></b>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <a href="ChangePassword.jsp"><i class="fa fa-key"></i> Đổi mật khẩu</a>
                                            <a href="logout" ><i class="fa fa-user"></i> Đăng xuất</a>
                                            <c:if test="${sessionScope.acc.isSell == 1}">
                                                <a href="managerProduct"><i class="fa fa-archive"></i> Manager</a>
                                            </c:if>
                                        </ul>
                                    </li>
                                </c:if>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- End header area -->

        <div class="site-branding-area">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="logo">
                            <h1><a href="home"><img src="image/logo/horizontal_on_white_by_logaster 1.0.png"></a></h1>
                        </div>
                    </div>
                    <%--<jsp:include page="LogoCart.jsp"></jsp:include>--%>
                </div>
            </div>
        </div> <!-- End site branding area -->
    </body>
</html>
