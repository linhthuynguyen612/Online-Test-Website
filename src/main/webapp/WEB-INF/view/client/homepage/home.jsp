<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="/client/css/home.css">
    
</head>
<body>
    <header>
        <div class="head-left">
            <div>
                <a href="https://portal.ptit.edu.vn/">
                    <img src ="https://code.ptit.edu.vn/2020/images/logo_ptit.png"  class="logo">
                </a>
            </div>
            <div class="caption">
                <p style="margin-bottom: 0;" class="caption1">Học viện Công Nghệ Bưu Chính Viễn Thông</p>
                <p style="margin-bottom: 0;" class="caption2">Hệ thống thi trắc nghiệm trực tuyến</p>
            </div>
        </div>

        <div class="home-search">
            <span class="fa-solid fa-magnifying-glass">

            </span>
            <input type="text" class="form-control" id="search-input" placeholder="Tìm kiếm bài luyện tập">
            <button class="btn-search" id="search-button">Tìm kiếm</button>
            
        </div>
        <div class="course">
            <a href="#course-1">Luyện tập</a>
            <a href="#course-2">Giữa kỳ</a>
            <a href="#course-3">Cuối kỳ</a>
            <div class="d-flex m-3">
                <c:if test="${not empty pageContext.request.userPrincipal}">
                    
                    <div class="dropdown my-auto">
                        <a href="#" class="dropdown" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            <i style="color: white; font-size: 25px;" class="fas fa-user fa-2x"></i>
                        </a>    
                        <ul class="dropdown-menu dropdown-menu-end p-4" aria-labelledby="dropdownMenuLink">
                            <li class="d-flex align-items-center flex-column" style="min-width: 200px;">
                                <div class="text-center my-3">
                                    <c:out value="${sessionScope.fullName}" />
                                </div>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li>
                                <form method="post" action="/logout">
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                                    <button class="dropdown-item">Đăng xuất</button>
                                </form>
                            </li>
                        </ul>
                    </div>
                </c:if>
            </div>
              
                    
            
        </div>

        


    </header>

    <div id="exam-items" class="container">

        <span class="filters">
            <label for="exercise-type"><i class="fa-solid fa-filter"></i></label>
            <select id="exercise-type">
              <option value="all">Tất cả</option>
              <option value="Tự do">Tự do</option>
              <option value="Thời gian">Thời gian</option>
            </select>
        </span>
        
        <div class="practice-title" id="course-1">
            <h2>Luyện tập</h2>
        </div>
        
            <div id="practice">
                <c:forEach var="exam" items="${exams}">
                    <c:if test="${exam.type == 'Luyện tập'}">
                        <div class="items" data-status="${exam.status}">
                            <img class="item-img" src="client/img/subject.png" alt="">
                            <h2 class="item-title">${exam.name}</h2>
                            <div class="item-info">
                                <span style="color:#677788;" class="fa-regular fa-clock"></span>
                                <p style="font-weight: 600; margin-left:5px;color:#677788;margin-bottom: 8px;">${exam.description} </p>
                            </div>
                            <p style="margin-bottom: 2rem;">Trạng thái: ${exam.status}</p>
                            <a href="/doexam/${exam.id}">
                                <button class="btn-start-exam">Bắt đầu thi</button>
                            </a>
                        </div>
                    </c:if>
                </c:forEach>
            </div>
       
            <div class="practice-title" id="course-2">
                <h2>Giữa kỳ</h2>
            </div>
            <div id="midterm">
                <c:forEach var="exam" items="${exams}">
                    <c:if test="${exam.type == 'Giữa kỳ'}">
                        <div class="items" data-status="${exam.status}">
                            <img class="item-img" src="client/img/subject.png" alt="">
                            <h2 class="item-title">${exam.name}</h2>
                            <div class="item-info">
                                <span style="color:#677788;" class="fa-regular fa-clock"></span>
                                <p style="font-weight: 600; margin-left:5px;color:#677788;margin-bottom: 8px;">${exam.description} </p>
                            </div>
                            <p style="margin-bottom: 2rem;">Trạng thái: ${exam.status}</p>
                            <a href="/doexam/${exam.id}">
                                <button class="btn-start-exam">Bắt đầu thi</button>
                            </a>
                        </div>
                    </c:if>
                </c:forEach>

                

            </div>
            <div class="practice-title" id="course-3">
                <h2>Cuối kỳ</h2>
            </div>
            <div id="finalexam">
                <c:forEach var="exam" items="${exams}">
                    <c:if test="${exam.type == 'Cuối kỳ'}">
                        <div class="items" data-status="${exam.status}">
                            <img class="item-img" src="client/img/subject.png" alt="">
                            <h2 class="item-title">${exam.name}</h2>
                            <div class="item-info">
                                <span style="color:#677788;" class="fa-regular fa-clock"></span>
                                <p style="font-weight: 600; margin-left:5px;color:#677788;margin-bottom: 8px;">${exam.description} </p>
                            </div>
                            <p style="margin-bottom: 2rem;">Trạng thái: ${exam.status}</p>
                            <a href="/doexam/${exam.id}">
                                <button class="btn-start-exam">Bắt đầu thi</button>
                            </a>
                        </div>
                    </c:if>
                </c:forEach>

            </div>
        


        

    </div>
    

    <script>
        // Lấy các phần tử HTML cần sử dụng
        const searchInput = document.getElementById('search-input');
        const searchButton = document.getElementById('search-button');
        const items = document.getElementsByClassName('items');

        // Bắt sự kiện click vào nút tìm kiếm
        searchButton.addEventListener('click', function() {
            const searchTerm = searchInput.value.toLowerCase();
            console.log(searchTerm);
            // Lấy giá trị từ ô nhập tìm kiếm và chuyển thành chữ thường
            for (let i = 0; i < items.length; i++) {
                const itemTitle = items[i].querySelector('.item-title');
                const titleText = itemTitle.innerText.toLowerCase(); // Lấy nội dung của tiêu đề và chuyển thành chữ thường
                if (titleText.includes(searchTerm)) {
                    items[i].style.display = 'block'; // Hiển thị mục nếu tiêu đề chứa từ khóa tìm kiếm
                } else {
                    items[i].style.display = 'none'; // Ẩn mục nếu không tìm thấy từ khóa tìm kiếm trong tiêu đề
                }
            }

            
        });

        document.getElementById('exercise-type').addEventListener('change', function() {
            var selectedType = this.value;
            var items = document.getElementsByClassName('items');
            
            for (var i = 0; i < items.length; i++) {
              var item = items[i];
              var itemStatus = item.getAttribute('data-status');
              if (selectedType === 'all' || itemStatus === selectedType) {
                item.style.display = 'block';
              } else {
                item.style.display = 'none';
              }
            }
          });


    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>