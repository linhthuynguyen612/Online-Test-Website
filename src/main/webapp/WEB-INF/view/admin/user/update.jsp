<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="/css/manageUser.css">


</head>
<body>
    <div class="container">
        <aside>
            <div class="top">
                <div class="logo">
                    <img src="/client/img/logo.png" alt="">
                    <h2 style="color: #ad171c;"> PTIT</h2>
                </div>
            </div>
            <div class="sidebar">
                <a href="/admin/exam">
                    <span class="fa-solid fa-laptop-code"></span>
                    <h3>Quản lý kì thi</h3>
                </a>

                <a href="/admin/user" class="active">
                    <span class="fa-regular fa-user"></span>
                    <h3>Quản lý người dùng</h3>
                </a>

                <a href="">
                    <span class="fa-solid fa-chart-line"></span>
                    <h3>Thống kê</h3>
                </a>
            </div>
        </aside>

        <main>
            <h1>Quản lý người dùng</h1>

            <div class="content">
                <div class="box-header">
                    <p>Cập nhật thông tin người dùng</p>
                </div>

        
                <div class="box-body" style="overflow: auto; height: 450px;">
                    <table style="width:100%"  scroll="auto">
                        <div class="modal-main">
                            <form:form  method="post" action="/admin/user/update" modelAttribute="newUser">

                                  <div>
                                    <label>ID:</label>
                                    <form:input type="text" class="form-control" path="id"/>
                                    
                                  </div>
                                  <div>
                                    <label>Tên sinh viên:</label>
                                    <form:input type="text" id="fullName11" path="fullName"/>
                                  </div>
                                  <div>
                                      <label>Mã sinh viên:</label>
                                      <form:input type="text" id="studentCode11" path="studentCode"/>
                                  </div>
                                  <div>
                                    <label >Email:</label>
                                    <form:input type="text" id="email11" path="email"/>
                                  </div>
                                  <div>
                                    <label>Giới tính:</label>
                                    <form:select id="gender11" path="gender">
                                      <form:option value="Nam">Nam</form:option>
                                      <form:option value="Nữ">Nữ</form:option>
                                    </form:select>
                                  </div>
                                  <div class="form-bot">
                                      <button style="width: 100%;" type="submit">Cập nhật</button>
                                  </div>
                                
                            </form:form>
                       
                
                    </table>
                </div>
            </div>

            
        </main>

      
        
    </div>  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="/js/User.js"></script>

    <script>
        $(document).ready(function() {
            $(".openUpdateModal").click(function() {
                var userId = $(this).data("id");
                console.log(userId);
                $.ajax({
                    url: '/admin/user/' + userId,
                    type: 'GET',
                    success: function(user) {                        
                        $("#fullName11").val(user.fullName);
                        $("#studentCode11").val(user.studentCode);
                        $("#email11").val(user.email);
                        $("#gender11").val(user.gender);
                        // Open the modal
                        $("#modal1").show();
                        console.log(user);
                    }
                });
            });

            $(".openDeleteModal").click(function() {
                var userId = $(this).data("id");
                console.log(userId);
                $.ajax({
                    url: '/admin/user/delete/' + userId,
                    type: 'POST',
                    success: function(user) {
                        // Open the modal
                        $("#modal2").show();
                        console.log(user);
                    }
                });
            });
        });
    </script>
</body>
</html>

