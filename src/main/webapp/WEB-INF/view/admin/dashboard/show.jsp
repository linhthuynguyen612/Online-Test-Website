<!-- <%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                <a href="manageExam.html">
                    <span class="fa-solid fa-laptop-code"></span>
                    <h3>Quản lý kì thi</h3>
                </a>

                <a href="manageUser.html" class="active">
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
                    <p>Danh sách người dùng</p>
                </div>

                <div class="box-add">
                    <a href="#" id="openModalBtn">
                        <button>
                            <span style="margin-right: 5px;" class="fa-solid fa-plus"></span> 
                            Thêm mới
                        </button>
                    </a>

                </div>

                <div class="box-body">
                    <table style="width:100%" id="examTable">
                        <thead>
                            <tr>
                                <th style="width:10%">STT</th>
                                <th style="width:30%">Tên sinh viên</th>
                                <th style="width:10%">Mã sinh viên</th>
                                <th style="width:25%">Email</th>
                                <th style="width:15%">Giới tính</th>
                                <th style="width:10%">Thao tác</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="width:10%">1</td>
                                <td style="width:30%">Nguyễn Đức Hiếu</td>
                                <td style="width:10%">B21DCCN123</td>
                                <td style="width:25%">ndh@gmail.com</td>
                                <td style="width:15%">Nam</td>
                                <td style="width:10%">
                                    <a href="#" class="openUpdateModal" data-modal="modal1"><span style="margin: 0 10px;" class="fa-solid fa-pen-to-square"></span></a>
                                    <a href="#" class="openDeleteModal" data-modal="modal2"><span class="fa-solid fa-xmark"></span></a>
                                </td>
                            </tr>

                            <tr>
                                <td style="width:10%">2</td>
                                <td style="width:30%">Nguyễn Đức Cảnh</td>
                                <td style="width:10%">B21DCCN124</td>
                                <td style="width:25%">ndc@gmail.com</td>
                                <td style="width:15%">Nam</td>
                                <td style="width:10%">
                                    <a href="#" class="openUpdateModal" data-modal="modal1"><span style="margin: 0 10px;" class="fa-solid fa-pen-to-square"></span></a>
                                    <a href="#" class="openDeleteModal" data-modal="modal2"><span class="fa-solid fa-xmark"></span></a>
                                </td>
                            </tr>

                            <tr>
                                <td style="width:10%">3</td>
                                <td style="width:30%">Nguyễn Thùy Trang</td>
                                <td style="width:10%">B21DCCN125</td>
                                <td style="width:25%">ntt@gmail.com</td>
                                <td style="width:15%">Nữ</td>
                                <td style="width:10%">
                                    <a href="#" class="openUpdateModal" data-modal="modal1"><span style="margin: 0 10px;" class="fa-solid fa-pen-to-square"></span></a>
                                    <a href="#" class="openDeleteModal" data-modal="modal2"><span class="fa-solid fa-xmark"></span></a>
                                </td>
                            </tr>

                            <tr>
                                <td style="width:10%">4</td>
                                <td style="width:30%">Nguyễn Thị Thùy Linh</td>
                                <td style="width:10%">B21DCCN125</td>
                                <td style="width:25%">nttl2k3@gmail.com</td>
                                <td style="width:15%">Nữ</td>
                                <td style="width:10%">
                                    <a href="#" class="openUpdateModal" data-modal="modal1"><span style="margin: 0 10px;" class="fa-solid fa-pen-to-square"></span></a>
                                    <a href="#" class="openDeleteModal" data-modal="modal2"><span class="fa-solid fa-xmark"></span></a>
                                </td>
                            </tr>

                            <tr>
                                <td style="width:10%">5</td>
                                <td style="width:30%">Nguyễn Phương Nam</td>
                                <td style="width:10%">B21DCCN123</td>
                                <td style="width:25%">npn@gmail.com</td>
                                <td style="width:15%">Nam</td>
                                <td style="width:10%">
                                    <a href="#" class="openUpdateModal" data-modal="modal1"><span style="margin: 0 10px;" class="fa-solid fa-pen-to-square"></span></a>
                                    <a href="#" class="openDeleteModal" data-modal="modal2"><span class="fa-solid fa-xmark"></span></a>
                                </td>
                            </tr>

                            <tr>
                                <td style="width:10%">6</td>
                                <td style="width:30%">Nguyễn Thị Thu Hường</td>
                                <td style="width:10%">B21DCCN123</td>
                                <td style="width:25%">ntth@gmail.com</td>
                                <td style="width:15%">Nữ</td>
                                <td style="width:10%">
                                    <a href="#" class="openUpdateModal" data-modal="modal1"><span style="margin: 0 10px;" class="fa-solid fa-pen-to-square"></span></a>
                                    <a href="#" class="openDeleteModal" data-modal="modal2"><span class="fa-solid fa-xmark"></span></a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            
        </main>

        <div id="addStudentModal" class="modal">
            <div class="modal-content">
                <div class="modal-header">
                    <span class="close">&times;</span>
                    <h2>Thêm sinh viên mới</h2>
                </div>
                <div class="modal-main">
                    <form id="addUserForm">
                        <div>
                          <label for="fullName">Fullname:</label>
                          <input type="text" id="fullName" name="fullName" required>
                        </div>
                        
                        <div>
                          <label for="email">Email:</label>
                          <textarea id="email" name="email" required></textarea>
                        </div>
                        
                        <div class="form-bot">
                            <button type="submit">Thêm mới</button>
                            <button type="submit" class="close">Đóng</button>
                        </div>
                        
                    </form>
                </div>
            </div>
        </div>

        <div id="modal1" class="modal">
            <div class="modal-content">
                <div class="modal-header">
                    <span class="close">&times;</span>
                    <h2>Cập nhật thông tin sinh viên</h2>
                </div>
                <div class="modal-main">
                    <form id="updateExamForm">
                        <div>
                          <label for="NameUp">Tên sinh viên:</label>
                          <input type="text" id="NameUp" name="NameUp" required>
                        </div>
                        <div>
                            <label for="CodeUp">Mã sinh viên:</label>
                            <input type="text" id="CodeUp" name="CodeUp" required>
                        </div>
                        <div>
                          <label for="EmailUp">Email:</label>
                          <textarea id="EmailUp" name="EmailUp" required></textarea>
                        </div>
                        <div>
                          <label for="GenderUp">Giới tính:</label>
                          <select id="GenderUp" name="GenderUp" required>
                            <option value="boy">Nam</option>
                            <option value="girl">Nữ</option>
                            <option value="other">Khác</option>
                          </select>
                        </div>
                        <div class="form-bot">
                            <button type="submit">Cập nhật</button>
                            <button type="submit" class="close">Đóng</button>
                        </div>
                        
                    </form>
                </div>
            </div>
        </div>
        
        <div id="modal2" class="modal">
            <div class="modal-content-delete">              
                <h2>Bạn chắc chắn muốn xóa?</h2>
                <div class="form-bot">
                    <button type="submit" class="close">Hủy bỏ</button>
                    <button type="submit" >Xóa</button>
                </div>
            </div>
              
        </div>
    </div>  
  
    <script src="/js/User.js"></script>
    <!-- <script src="exam.js"></script> -->
</body>
</html>
 -->
