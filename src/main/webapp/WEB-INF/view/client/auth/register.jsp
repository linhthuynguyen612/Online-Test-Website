<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register-TestOnline</title> 

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" href="/client/css/login.css" />
</head>
<body> 
    <section>   
        <form:form id="form-register" method="post"  action="/register" modelAttribute="registerUser">
            <c:set var="errorFullName">
                <form:errors path="fullName" cssClass="invalid-feedback" style="color:red;"/>
            </c:set>
            <c:set var="errorEmail">
                <form:errors path="email" cssClass="invalid-feedback" style="color:red; "/>
            </c:set>
            <c:set var="errorPassword">
                <form:errors path="confirmPassword" cssClass="invalid-feedback"  style="color:red;"/>
            </c:set>
            <h1>Đăng ký</h1> 
            <div class="mb-3">
                <label for="loginUser">Họ và tên</label>
                <form:input type="text"  class="form-control ${not empty errorFullName ? 'is-invalid' : ''}" path="fullName" />
                ${errorFullName}
            </div>
            <div class="mb-3">
                <label for="email">Địa chỉ Email</label>
                <form:input type="email" class="form-control ${ not empty errorEmail ? 'is-invalid' : ''}" path="email" />
                ${errorEmail}
            </div>
            <div class="mb-3">
                <label for="inputPass">Mật khẩu</label>
                <form:input type="password"  class="form-control ${ not empty errorPassword ? 'is-invalid' : ''}" path="password" />
                ${errorPassword}
            </div>
            <div class="mb-3">
                <label for="inputConfirmPass">Nhắc lại mật khẩu</label>
                <form:input type="password" class="form-control" path="confirmPassword" />
            </div> 
            <form:button type="submit" id="submit" >Đăng ký</form:button> 
            <div class="register">
                <p> <a href="/login">Bạn đã có tài khoản? Đăng nhập ngay.</a></p>
            </div>  
        </form:form>
    </section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>
