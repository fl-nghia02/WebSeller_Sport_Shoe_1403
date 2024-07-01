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

<form:form action="/nhan-vien/update" method="post" modelAttribute="nv">

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

    <form:button type="submit" class="btn btn-outline-info">Update</form:button>
</form:form>
</body>
</html>
