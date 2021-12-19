<%-- 
    Document   : User Navigation
    Created on : Feb 16, 2021, 5:15:43 PM
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

        <div class="col-md-3 col-sm-6">
            <div class="footer-menu">
                <h2 class="footer-wid-title">User Navigation </h2>
                <ul>
                    <c:if test="${sessionScope.acc == null }">
                        <li>
                            <a href="Login.jsp"><i class="fa fa-user"></i> Đăng nhập</a>
                        </li>
                        <li>
                            <a href="Signup.jsp"><i class="fa fa-user"></i> Đăng ký</a>
                        </li>
                    </c:if>
                    <c:if test="${sessionScope.acc != null}">
                        <li>
                            <a href="#">Tài khoản của tôi</a>
                        </li>
                        <li>
                            <a href="#">Lịch sử đơn hàng</a>
                        </li>
                        <li>
                            <a href="#">Danh sách yêu thích</a>
                        </li>
                        <li>
                            <a href="#">Liên hệ nhà cung cấp</a>
                        </li>
                        <li>
                            <a href="#">Trang đầu</a>
                        </li>
                    </c:if>
                </ul>                        
            </div>
        </div>
    </body>
</html>
