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
                    <p style="display: inline-block;">Cập nhật thông tin kì thi</p>
                    <a 
                    href="/admin/exam/update/question/${newExam.id}" 
                    class="viewquestion"
                    style="display: inline-block;"
                    >Xem câu hỏi</a>

                </div>

                <div class="box-body" style="overflow: auto; height: 450px;">
                    <div class="modal-main">
                        <form id="updateExamForm" method="post" action="/admin/exam/update" modelAttribute="newExam">
                            <div>
                                <label>Mã kì thi:</label>
                                <form:input type="text" path="newExam.id" id="id11"/>
                            </div>
                            
                            <div>
                                <label>Tên kì thi:</label>
                                <form:input type="text" id="name11" path="newExam.name" />
                            </div>
                              <div>
                                <label>Loại kì thi:</label>
                                <form:select path="newExam.type">
                                  <form:option value="Luyện tập">Luyện tập</form:option>
                                  <form:option value="Cuối kỳ">Cuối kỳ</form:option>
                                  <form:option value="Giữa kỳ">Giữa kỳ</form:option>
                                </form:select>
                              </div>
                              <div>
                                <label >Mô tả:</label>
                                <form:input type="text" path="newExam.description" id="description11"/>
                              </div>
                              <div>
                                <label>Trạng thái:</label>
                                <form:select path="newExam.status" id="status11">
                                  <form:option value="Tự do">Tự do</form:option>
                                  <form:option value="Thời gian">Thời gian</form:option>
                                </form:select>
                              </div>
                              
                              <div class="form-bot">
                                  <button style="width: 100%;" type="submit">Cập nhật</button>
                              </div>
                        
                        </form>
                    </div>
                </div>
            </div>

            
        </main>
   
    
    

    
    </main>
         
     
    

      
</body>
</html>

