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
        <title>Manager Product</title>
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
                                <h2>Manage <b>Product</b></h2>
                            </div>
                            <div class="col-sm-6 set-up">
                                <a href="#addProductModal"  class="btn btn-success" data-toggle="modal"><i class="fa fa-plus"></i> <span>Add New Product</span></a>
                                <a href="#deleteProductModal" class="btn btn-danger" data-toggle="modal"><i class="fa fa-minus"></i> <span>Delete</span></a>
                            </div>
                        </div>
                    </div>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="selectAll">
                                        <label for="selectAll"></label>
                                    </span>
                                </th>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Image</th>
                                <th>Price</th>
                                <th>Discount</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${listAllP}" var="o">
                                <tr>
                                    <td>
                                        <span class="custom-checkbox">
                                            <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                            <label for="checkbox1"></label>
                                        </span>
                                    </td>
                                    <td>${o.id}</td>
                                    <td>${o.name}</td>
                                    <td><img src="image/${o.image}" alt=""></td>
                                    <td>${o.price}</td>
                                    <td>${o.discount}</td>
                                    <td>
                                        <a href="loadDetailProduct?pid=${o.id}" class="edit" data-toggle="model"><i class="fa fa-edit" data-toggle="tooltip" title="Edit"></i></a>
                                        <a href="deleteProduct?pid=${o.id}" class="delete" data-toggle="model"><i class="fa fa-recycle" data-toggle="tooltip" title="Delete"></i></a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <div class="product-pagination text-center">
                        <div class="hint-text">Hiển thị <b>8</b> sản phẩm trong <b>${count}</b> sản phẩm</div>
                        <ul class="pagination">
                            <c:if test="${end < 5}">
                                    <li>
                                        <c:if test="${sessionScope.in != 1}">
                                            <a href="managerProduct?index=${1}" aria-label="First">
                                                <span aria-hidden="true">&laquo;</span>
                                            </a>
                                        </c:if>
                                    </li>
                                    <li>
                                        <c:if test="${sessionScope.in != 1}">
                                            <a href="managerProduct?index=${sessionScope.in - 1}" aria-label="Previous">
                                                <span aria-hidden="true">&lt;</span>
                                            </a>
                                        </c:if>
                                    </li>
                                    <c:forEach begin="1" end="${end}" var="i">
                                        <li class="${tag == i ? "active" : ""}">
                                            <a href="managerProduct?index=${i}" >${i}</a>
                                        </li>
                                    </c:forEach>
                                    <li>
                                        <c:if test="${sessionScope.in != sessionScope.endpage}">
                                            <a href="managerProduct?index=${sessionScope.in + 1}" aria-label="Next">
                                                <span aria-hidden="true">&gt;</span>
                                            </a>
                                        </c:if>
                                    </li>
                                    <li>
                                        <c:if test="${sessionScope.in != sessionScope.endpage}">
                                            <a href="managerProduct?index=${sessionScope.endpage}" aria-label="Last">
                                                <span aria-hidden="true">&raquo;</span>
                                            </a>
                                        </c:if>
                                    </li>
                                </c:if>
                                <c:if test="${end >= 5}">
                                    <li>
                                        <c:if test="${sessionScope.in != 1}">
                                            <a href="managerProduct?index=${1}" aria-label="First">
                                                <span aria-hidden="true">&laquo;</span>
                                            </a>
                                        </c:if>
                                    </li>
                                    <li>
                                        <c:if test="${sessionScope.in != 1}">
                                            <a href="managerProduct?index=${sessionScope.in - 1}" aria-label="Previous">
                                                <span aria-hidden="true">&lt;</span>
                                            </a>
                                        </c:if>
                                    </li>
                                    <c:if test="${sessionScope.in <= 3}">
                                        <c:forEach begin="1" end="5" var="i">
                                            <li class="${tag == i ? "active" : ""}">
                                                <a href="managerProduct?index=${i}" >${i}</a>
                                            </li>
                                        </c:forEach>
                                    </c:if>
                                    <c:if test="${sessionScope.in > 3 && sessionScope.in <= sessionScope.endpage - 2}">
                                        <c:forEach begin="${sessionScope.in - 2}" end="${sessionScope.in + 2}" var="i">
                                            <li class="${tag == i ? "active" : ""}">
                                                <a href="managerProduct?index=${i}">${i}</a>
                                            </li>
                                        </c:forEach>
                                    </c:if>
                                    <c:if test="${sessionScope.in + 2 > sessionScope.endpage}">
                                        <c:forEach begin="${end - 4}" end="${end}" var="i">
                                            <li class="${tag == i ? "active" : ""}">
                                                <a href="managerProduct?index=${i}" >${i}</a>
                                            </li>
                                        </c:forEach>
                                    </c:if>
                                    <li>
                                        <c:if test="${sessionScope.in != sessionScope.endpage}">
                                            <a href="managerProduct?index=${sessionScope.in + 1}" aria-label="Next">
                                                <span aria-hidden="true">&gt;</span>
                                            </a>
                                        </c:if>
                                    </li>
                                    <li>
                                        <c:if test="${sessionScope.in != sessionScope.endpage}">
                                            <a href="managerProduct?index=${sessionScope.endpage}" aria-label="Last">
                                                <span aria-hidden="true">&raquo;</span>
                                            </a>
                                        </c:if>
                                    </li>
                                </c:if>
                        </ul>                      
                    </div>
                </div>
            </div>
        </div>
        <div id="addProductModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content" style="width: 490px; margin-left: 70px">
                    <form action="add" method="post">
                        <div class="modal-header">
                            <h4 class="modal-title">Add Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label>Name</label>
                                <input name="name" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Image</label>
                                <input name="image" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Author</label>
                                <input name="author" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input name="price" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Title</label>
                                <textarea name="title" class="form-control"></textarea>
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea name="description" class="form-control"></textarea>
                            </div>
                            <div>
                                <label>Category</label>
                                <select name="category" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${listC}" var="o">
                                        <option value="${o.id}">${o.name}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
    <footer>
        <jsp:include page="Footer.jsp"></jsp:include>
    </footer>
</html>
