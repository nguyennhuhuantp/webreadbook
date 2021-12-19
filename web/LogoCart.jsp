<%-- 
    Document   : LogoCart
    Created on : Feb 14, 2021, 3:40:57 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:if test="${sessionScope.acc == null}">
            <div class="col-sm-6">
                <div class="shopping-item">
                    <a href="Login.jsp">Giỏ hàng <i class="fa fa-shopping-cart"></i></a>
                </div>
            </div>
        </c:if>
        <c:if test="${sessionScope.acc != null}">
            <div class="col-sm-6">
                <div class="shopping-item">
                    <a href="cart.html">Giỏ hàng <span class="cart-amunt"></span> <i class="fa fa-shopping-cart"></i> <span class="product-count"></span></a>
                </div>
            </div>
        </c:if>
    </body>
</html>
