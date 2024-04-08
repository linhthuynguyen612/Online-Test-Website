<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập-TestOnline</title> 
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="/client/css/login.css" />
    
</head>
<body> 
    <section>   
        <form action="/login" method="post">

            <c:if test="${param.error != null}">
                <div class="my-2" style="color: red;">Email hoặc Mật khẩu không đúng</div>
            </c:if>
            <c:if test="${param.logout != null}">
                <div class="my-2" style="color: rgb(0, 255, 38);">Đăng xuất thành công</div>
            </c:if>
            <h1>Đăng nhập</h1>
        
            <div class="mb-3">
                <label for="loginUser">Địa chỉ Email:</label>
                <input type="email" id="loginUser" name="username" class="form-control" />
            </div>
            <div class="mb-3">
                <label for="loginPass">Password:</label>
                <input type="password" id="loginPass" name="password" class="form-control" />
            </div>
            <div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            </div>
            <button id="submit" type="submit">Đăng nhập</button>
            <div class="register">
                <p> <a href="/register">Tạo tài khoản</a></p>
            </div>
        </form>
        
    </section> 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>
