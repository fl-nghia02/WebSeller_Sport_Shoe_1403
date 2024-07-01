<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<html>
<head>
    <title>Title</title>
</head>
<body>


<div class="d-flex flex-column flex-shrink-0 p-3 bg-light" style="width: 250px; height: 100vh; position: fixed;">
    <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
        <%--            <span class="fs-4">Shoe Store</span>--%>
        <img src="/images/logo-giay.png" alt="Shoe Store" style="height: 210px;">
    </a>
    <hr>
    <ul class="nav nav-pills flex-column mb-auto">
        <li class="nav-item">
            <a href="/home" class="nav-link link-dark" aria-current="page">
                <img src="/images/ban-hang.jpg" alt="" style="width: 20px; height: 20px; margin-right: 10px;">
                Bán hàng
            </a>
        </li>
        <li>
            <a href="/nhan-vien/hien-thi" class="nav-link link-dark">
                <img src="/images/san-pham.png" alt="" style="width: 20px; height: 20px; margin-right: 10px;">
                Sản phẩm
            </a>
        </li>
        <li>
            <a href="/add-shoe" class="nav-link link-dark">
                <img src="/images/user%20icon.png" alt="" style="width: 20px; height: 20px; margin-right: 10px;">
                Khách hàng
            </a>
        </li>
        <li>
            <a href="/nhan-vien/hien-thi" class="nav-link link-dark">
                <img src="/images/user%20icon.png" alt="" style="width: 20px; height: 20px; margin-right: 10px;">
                Nhân viên
            </a>
        </li>
        <li>
            <a href="/nhan-vien/hien-thi" class="nav-link link-dark">
                <img src="/images/thong-ke.jpg" alt="" style="width: 20px; height: 20px; margin-right: 10px;">
                Giảm giá
            </a>
        </li>
        <li>
            <a href="/nhan-vien/hien-thi" class="nav-link link-dark">
                <img src="/images/thong-ke.jpg" alt="" style="width: 20px; height: 20px; margin-right: 10px;">
                Khuyến mãi
            </a>
        </li>
        <li>
            <a href="/nhan-vien/hien-thi" class="nav-link link-dark">
                <img src="/images/thong-ke.jpg" alt="" style="width: 20px; height: 20px; margin-right: 10px;">
                Thống kê
            </a>
        </li>
    </ul>
</div>


</body>
</html>
