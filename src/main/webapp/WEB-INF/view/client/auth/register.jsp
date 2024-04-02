<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng ký</title> 
    <link rel="stylesheet" href="/client/css/login.css" />
</head>
<body> 
    <section>   
        <form id="form-register">
            <h1>Đăng ký</h1> 
            <div class="inputbox">
                <ion-icon name="ios-person-outline"></ion-icon>
                <input type="text" required>
                <label for="loginUser">Tên đăng nhập</label>
            </div>
            <div class="inputbox">
                <ion-icon name="ios-person-outline"></ion-icon>
                <input type="text" required>
                <label for="email">Email</label>
            </div>
            
            <div class="inputbox date">
                <ion-icon name="ios-person-outline"></ion-icon>
                <input type="date" required  >
                <label for="date">Ngày sinh</label>
            </div>
            <div class="inputbox">
                <ion-icon name="lock-closed-outline"></ion-icon>
                <input type="password" required>
                <label for="loginPass">Mật khẩu</label>
            </div>
            <div class="inputbox">
                <ion-icon name="lock-closed-outline"></ion-icon>
                <input type="password" required>
                <label for="loginPass">Nhắc lại mật khẩu</label>
            </div> 
            <button type="submit" id="submit">Đăng ký</button> 
        </form>
    </section>
</body>
</html>
