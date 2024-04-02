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
    <link rel="stylesheet" href="/css/manageExam.css">


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
                <a href="/admin/exam" class="active">
                    <span class="fa-solid fa-laptop-code"></span>
                    <h3>Quản lý kì thi</h3>
                </a>

                <a href="/admin/user">
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
            <h1>Quản lý kì thi</h1>

            <div class="content">
                <div class="box-header">
                    <p>Danh sách kì thi</p>
                </div>

                <div class="box-add">
                    <a href="#" id="openModalBtn">
                        <button>
                            <span style="margin-right: 5px;" class="fa-solid fa-plus"></span> 
                            Thêm mới
                        </button>
                    </a>

                </div>

                <div class="box-body" style="overflow: auto; height: 450px;">
                    <table style="width: 100%;" id="examTable" >
                        <thead>
                            <tr>
                                <th style="width:10%">STT</th>
                                <th style="width:10%">Mã kì thi</th>
                                <th style="width:25%">Tên kì thi</th>
                                <th style="width:15%">Loại kì thi</th>
                                <th style="width:10%">Trạng thái</th>
                                <th style="width:20%">Mô tả</th>
                                <th style="width:10%">Thao tác</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% int index = 0; %>
                            <c:forEach items="${exams}" var="exam">
                                
                                <% index++; %>
                            
                                <tr>
                                    <td style="width:10%"><%=index%></td>
                                    <td style="width:10%">${exam.id}</td>
                                    <td style="width:25%">${exam.name}</td>
                                    <td style="width:15%">${exam.type}</td>
                                    <td style="width:10%">${exam.status}</td>
                                    <td style="width:20%">${exam.description}</td>
                                    <td style="width:10%">
                                        <a href="#" class="openUpdateModal" data-id="${exam.id}" data-modal="modal1"><span style="margin: 0 10px;" class="fa-solid fa-pen-to-square"></span></a>
                                        <a href="#" class="openDeleteModal" data-id="${exam.id}" data-modal="modal2"><span class="fa-solid fa-xmark"></span></a>
                                    </td>
                                </tr>
                            </c:forEach>
                            
                        </tbody>
                    </table>
                </div>
            </div>

            
        </main>

        <div id="addExamModal" class="modal">
            <div class="modal-content">
                <div class="modal-header">
                    <span class="close">&times;</span>
                    <h2>Thêm kì thi mới</h2>
                </div>
                <div class="modal-main">
                    <form:form id="addExamForm" method="post" action="/admin/exam/create" modelAttribute="newExam">
                        
                        <div>
                            <label>Mã kì thi:</label>
                            <form:input type="text" path="id" />
                        </div>
                    
                        <div>
                          <label>Tên kì thi:</label>
                          <form:input type="text" path="name" />
                        </div>
                        <div>
                            <label>Loại kì thi:</label>
                            <form:input type="text" path="type" />
                        </div>
                        <div>
                          <label >Mô tả:</label>
                          <form:input type="text" path="description" />
                        </div>
                        <div>
                          <label>Trạng thái:</label>
                          <form:select path="status">
                            <form:option value="Tự do">Tự do</form:option>
                            <form:option value="Thời gian">Thời gian</form:option>
                          </form:select>
                        </div>
                        <div class="form-bot">
                            <button style="width: 100%;" type="submit">Thêm mới</button>
                        </div>
                        
                    </form:form>
                </div>
            </div>
        </div>

        <div id="modal1" class="modal">
            <div class="modal-content">
                <div class="modal-header">
                    <span class="close">&times;</span>
                    <h2>Cập nhật kì thi</h2>
                </div>
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
                              <form:input type="text" path="newExam.type" id="type11"/>
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
        
        <div id="modal2" class="modal">
            <div class="modal-content-delete">              
                <h2>Bạn chắc chắn muốn xóa?</h2>
                <div class="form-bot" style="display: flex; justify-content: center;">
                    <button style="width: 50%;" type="submit">Confirm</button>
                </div>
            </div>
              
        </div>
    </div>  
  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="/js/Exam.js"></script>
    <script>
        $(document).ready(function() {
            $(".openUpdateModal").click(function() {
                var examId = $(this).data("id");
                $.ajax({
                    url: '/admin/exam/' + examId,
                    type: 'GET',
                    success: function(exam) {                        
                        $("#name11").val(exam.name);
                        $("#id11").val(exam.id);
                        $("#type11").val(exam.type);
                        $("#description11").val(exam.description);
                        $("#status11").val(exam.status);
                        // Open the modal
                        $("#modal1").show();
                        console.log(exam);
                    }
                });
            });

            $(".openDeleteModal").click(function() {
                var examId = $(this).data("id");
                $.ajax({
                    url: '/admin/exam/delete/' + examId,
                    type: 'POST',
                    success: function(exam) {
                        // Open the modal
                        $("#modal2").show();
                        console.log(exam);
                    }
                });
            });
        });
    </script>
</body>
</html>

