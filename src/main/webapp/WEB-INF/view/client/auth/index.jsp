<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title> 
    <link rel="stylesheet" href="/client/css/login.css" />
    
</head>
<body> 
    <section>   
        <form id="form-login">
            <h1>Đăng nhập</h1>
        
            <div class="inputbox">
                <ion-icon name="ios-person-outline"></ion-icon>
                <input type="text" id="loginUser" required>
                <label for="loginUser">Tên đăng nhập</label>
            </div>
            <div class="inputbox">
                <ion-icon name="lock-closed-outline"></ion-icon>
                <input type="password" id="loginPass" required>
                <label for="loginPass">Mật khẩu</label>
            </div>
            <div class="forget">
                <label for=""><input type="checkbox">Nhớ mật khẩu</label>
                <br>
                <a href="">Quên mật khẩu ?</a>
            </div>
            <input id="submit" type="submit" onclick="handleSubmit()" value="Đăng nhập" id="submit">
            <div class="register">
                <p> <a href="http://localhost:8080/register">Tạo tài khoản</a></p>
            </div>
        </form>
    </section> 
    <script src="/client/js/login.js"></script>
</body>
</html>
