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

<jsp:include page="/WEB-INF/view/header/sidebar.jsp"/>

<div class="container" style="margin-left: 260px;">
    <h1 class="text-center">Nhân viên</h1>
    <form action="/nhan-vien/search" method="get">
        Mã:<input type="text" name="ma"/>
        <button type="submit">Search</button>
    </form>

    <div class="mb-3">
        <form:form action="/nhan-vien/add" method="post" modelAttribute="nv">
            ID:<form:input path="id" class="form-control"/>
            <form:errors path="id"/><br>

            Mã:<form:input path="maNhanVien" class="form-control"/>
            <form:errors path="maNhanVien" cssStyle="color: red"/><br>

            Tên:<form:input path="tenNhanVien" class="form-control"/>
            <form:errors path="tenNhanVien" class="text-danger"/><br>

            Giới tính:<form:input path="gioiTinh" class="form-control"/>
            <form:errors path="gioiTinh" class="text-danger"/><br>

            Ngày sinh:<form:input path="ngaySinh" class="form-control"/>
            <form:errors path="ngaySinh" class="text-danger"/><br>

            Địa chỉ:<form:input path="diaChi" class="form-control"/>
            <form:errors path="diaChi" class="text-danger"/><br>

            SDT:<form:input path="soDienThoai" class="form-control"/>
            <form:errors path="soDienThoai" class="text-danger"/><br>

            Email:<form:input path="email" class="form-control"/>
            <form:errors path="email" class="text-danger"/><br>

            CCCD:<form:input path="cccd" class="form-control"/>
            <form:errors path="cccd" class="text-danger"/><br>

            Trạng thái:<form:radiobutton path="trangThai" value="0" checked="true"/>Đi làm
            <form:radiobutton path="trangThai" value="1"/>Nghỉ làm<br><br>

            Ảnh:<form:input path="anh" class="form-control"/>
            <form:errors path="anh" class="text-danger"/><br>

            Ngày tạo:<form:input path="ngayTao" class="form-control"/>
            <form:errors path="ngayTao" class="text-danger"/><br>

            Ngày sửa:<form:input path="ngaySua" class="form-control"/>
            <form:errors path="ngaySua" class="text-danger"/><br>

            Mã chức vụ:<form:select path="chucVu">
            <form:options items="${listChucVu}" itemLabel="maChucVu" />
        </form:select><br><br>


            <form:button type="submit" class="btn btn-outline-info">Add</form:button>
        </form:form>
    </div>

    <table class="table">
        <thead>
        <tr>
            <th>#</th>
            <th>ID</th>
            <th>Mã</th>
            <th>Tên</th>
            <th>Giới tính</th>
            <th>Ngày sinh</th>
            <th>Địa chỉ</th>
            <th>SDT</th>
            <th>Email</th>
            <th>CCCD</th>
            <th>Trạng thái</th>
            <th>Ảnh</th>
            <th>Ngày tạo</th>
            <th>Ngày sửa</th>
            <th>Mã chức vụ</th>

            <th colspan="2">Action</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach items="${list}" var="nv" varStatus="index">
            <tr>
                <td>${index.count}</td>
                <td>${nv.id}</td>
                <td>${nv.maNhanVien}</td>
                <td>${nv.tenNhanVien}</td>
                <td>${nv.gioiTinh}</td>
                <td>${nv.ngaySinh}</td>
                <td>${nv.diaChi}</td>
                <td>${nv.soDienThoai}</td>
                <td>${nv.email}</td>
                <td>${nv.cccd}</td>
                <td>${nv.trangThai==0?"Đi làm":"Nghỉ làm"}</td>
                <td>${nv.anh}</td>
                <td>${nv.ngayTao}</td>
                <td>${nv.ngaySua}</td>
                <td>${nv.chucVu.maChucVu}</td>
                <td>
                    <button class="btn btn-outline-warning"><a href="${pageContext.request.contextPath}/nhan-vien/view-update?id=${nv.id}">Update</a></button>
                    <button class="btn btn-outline-danger"><a href="${pageContext.request.contextPath}/nhan-vien/remove?id=${nv.id}">Remove</a></button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <div>
        <p>Page : ${currentPage} / ${totalPages}</p>
        <button class="btn btn-outline-info"><a href="${pageContext.request.contextPath}/nhan-vien/hien-thi?page=${currentPage <= 1 ? 1 : (currentPage - 1) }">Previous</a></button>
        <button class="btn btn-outline-info"><a href="${pageContext.request.contextPath}/nhan-vien/hien-thi?page=${currentPage >= totalPages ? currentPage : (currentPage + 1) }">Next</a></button>
    </div>
</div>
</body>
</html>
