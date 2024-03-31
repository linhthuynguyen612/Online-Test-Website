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
                <p class="caption1">Học viện Công Nghệ Bưu Chính Viễn Thông</p>
                <p class="caption2">Hệ thống thi trắc nghiệm trực tuyến</p>
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
            <a href="">
                <span>
                    <img class="account-profile-img" src="./assets/image/user_icon_3.jpg" alt="">
                </span>
            </a>

        </div>


    </header>

    <div id="exam-items">

        <span class="filters">
            <label for="exercise-type"><i class="fa-solid fa-filter"></i></label>
            <select id="exercise-type">
              <option value="all">Tất cả</option>
              <option value="free">Tự do</option>
              <option value="time">Thời gian</option>
            </select>
        </span>
        <div class="practice-title" id="course-1">
            <h2>Luyện tập</h2>
        </div>
        <div id="practice">
            <div class="items" data-status="free">
                <img class="item-img" src="client/img/subject.png" alt="">
                <h2 class="item-title">2024 Luyện tập Mạng Máy Tính P1</h2>
                <div class="item-info">
                    <span style="color:#677788;" class="fa-regular fa-clock"></span>
                    <p style="font-weight: 600; margin-left:5px;color:#677788;margin-bottom: 8px;">120 phút | 50 câu hỏi </p>
                </div>
                <p style="margin-bottom: 2rem;">Trạng thái: Tự do</p>
                <a href="test.html">
                    <button class="btn-start-exam">Bắt đầu thi</button>
                </a>
            </div>

            <div class="items" data-status="free">
                <img class="item-img" src="client/img/subject.png" alt="">
                <h2 class="item-title">2024 Luyện tập Mạng Máy Tính P2</h2>
                <div class="item-info">
                    <span style="color:#677788;" class="fa-regular fa-clock"></span>
                    <p style="font-weight: 600; margin-left:5px;color:#677788;margin-bottom: 8px;">120 phút | 50 câu hỏi </p>
                </div>
                <p style="margin-bottom: 2rem;">Trạng thái: Tự do</p>
                <a href="test.html">
                    <button class="btn-start-exam">Bắt đầu thi</button>
                </a>
            </div>

            <div class="items" data-status="time">
                <img class="item-img" src="client/img/subject.png" alt="">
                <h2 class="item-title">2024 Luyện tập Triết học Mác Lênin</h2>
                <div class="item-info">
                    <span style="color:#677788;" class="fa-regular fa-clock"></span>
                    <p style="font-weight: 600; margin-left:5px;color:#677788;margin-bottom: 8px;">120 phút | 50 câu hỏi </p>
                </div>
                <p style="margin-bottom: 2rem;">06/03/2024</p>
                <a href="test.html">
                    <button class="btn-start-exam">Bắt đầu thi</button>
                </a>
            </div>

            <div class="items" data-status="free">
                <img class="item-img" src="client/img/subject.png" alt="">
                <h2 class="item-title">2024 Luyện tập Đại</h2>
                <div class="item-info">
                    <span style="color:#677788;" class="fa-regular fa-clock"></span>
                    <p style="font-weight: 600; margin-left:5px;color:#677788;margin-bottom: 8px;">120 phút | 50 câu hỏi </p>
                </div>
                <p style="margin-bottom: 2rem;">Trạng thái: Tự do</p>
                <a href="test.html">
                    <button class="btn-start-exam">Bắt đầu thi</button>
                </a>
            </div>

            <div class="items" data-status="time">
                <img class="item-img" src="client/img/subject.png" alt="">
                <h2 class="item-title">2024 Luyện tập Giải tích 1 </h2>
                <div class="item-info">
                    <span style="color:#677788;" class="fa-regular fa-clock"></span>
                    <p style="font-weight: 600; margin-left:5px;color:#677788;margin-bottom: 8px;">120 phút | 50 câu hỏi </p>
                </div>
                <p style="margin-bottom: 2rem;">Trạng thái: 02/04/2024</p>
                <a href="test.html">
                    <button class="btn-start-exam">Bắt đầu thi</button>
                </a>
            </div>

            <div class="items" data-status="free">
                <img class="item-img" src="client/img/subject.png" alt="">
                <h2 class="item-title">2024 Luyện tập Hệ điều hành</h2>
                <div class="item-info">
                    <span style="color:#677788;" class="fa-regular fa-clock"></span>
                    <p style="font-weight: 600; margin-left:5px;color:#677788;margin-bottom: 8px;">120 phút | 50 câu hỏi </p>
                </div>
                <p style="margin-bottom: 2rem;">Trạng thái: Tự do</p>
                <a href="test.html">
                    <button class="btn-start-exam">Bắt đầu thi</button>
                </a>
            </div>

        </div>
        <div class="practice-title" id="course-2">
            <h2>Giữa kỳ</h2>
        </div>
        <div id="midterm">
            <div class="items" data-status="free">
                <img class="item-img" src="client/img/subject.png" alt="">
                <h2 class="item-title">2024 Giữa kỳ Mạng Máy Tính</h2>
                <div class="item-info">
                    <span style="color:#677788;" class="fa-regular fa-clock"></span>
                    <p style="font-weight: 600; margin-left:5px;color:#677788;margin-bottom: 8px;">120 phút | 50 câu hỏi </p>
                </div>
                <p style="margin-bottom: 2rem;">Trạng thái: Tự do</p>
                <a href="test.html">
                    <button class="btn-start-exam">Bắt đầu thi</button>
                </a>
            </div>

            <div class="items" data-status="free">
                <img class="item-img" src="client/img/subject.png" alt="">
                <h2 class="item-title">2024 Giữa kỳ Cơ sở dữ liệu phân tán</h2>
                <div class="item-info">
                    <span style="color:#677788;" class="fa-regular fa-clock"></span>
                    <p style="font-weight: 600; margin-left:5px;color:#677788;margin-bottom: 8px;">120 phút | 50 câu hỏi </p>
                </div>
                <p style="margin-bottom: 2rem;">Trạng thái: 23/03/2024</p>
                <a href="test.html">
                    <button class="btn-start-exam">Bắt đầu thi</button>
                </a>
            </div>

            <div class="items" data-status="free">
                <img class="item-img" src="client/img/subject.png" alt="">
                <h2 class="item-title">2024 Giữa kỳ Kĩ thuật số</h2>
                <div class="item-info">
                    <span style="color:#677788;" class="fa-regular fa-clock"></span>
                    <p style="font-weight: 600; margin-left:5px;color:#677788;margin-bottom: 8px;">120 phút | 50 câu hỏi </p>
                </div>
                <p style="margin-bottom: 2rem;">Trạng thái: Tự do</p>
                <a href="test.html">
                    <button class="btn-start-exam">Bắt đầu thi</button>
                </a>
            </div>

            <div class="items" data-status="free">
                <img class="item-img" src="client/img/subject.png" alt="">
                <h2 class="item-title">2024 Giữa kỳ Tin học cơ sở 1</h2>
                <div class="item-info">
                    <span style="color:#677788;" class="fa-regular fa-clock"></span>
                    <p style="font-weight: 600; margin-left:5px;color:#677788;margin-bottom: 8px;">120 phút | 50 câu hỏi </p>
                </div>
                <p style="margin-bottom: 2rem;">Trạng thái: 04/03/2024</p>
                <a href="test.html">
                    <button class="btn-start-exam">Bắt đầu thi</button>
                </a>
            </div>

            <div class="items" data-status="free">
                <img class="item-img" src="client/img/subject.png" alt="">
                <h2 class="item-title">2024 Giữa kỳ Cơ sở dữ liệu</h2>
                <div class="item-info">
                    <span style="color:#677788;" class="fa-regular fa-clock"></span>
                    <p style="font-weight: 600; margin-left:5px;color:#677788;margin-bottom: 8px;">120 phút | 50 câu hỏi </p>
                </div>
                <p style="margin-bottom: 2rem;">Trạng thái: Tự do</p>
                <a href="test.html">
                    <button class="btn-start-exam">Bắt đầu thi</button>
                </a>
            </div>

            <div class="items" data-status="time">
                <img class="item-img" src="client/img/subject.png" alt="">
                <h2 class="item-title">2024 Giữa kỳ Lịch sử đảng</h2>
                <div class="item-info">
                    <span style="color:#677788;" class="fa-regular fa-clock"></span>
                    <p style="font-weight: 600; margin-left:5px;color:#677788;margin-bottom: 8px;">120 phút | 50 câu hỏi </p>
                </div>
                <p style="margin-bottom: 2rem;">06/03/2024</p>
                <a href="test.html">
                    <button class="btn-start-exam">Bắt đầu thi</button>
                </a>
            </div>

        </div>
        <div class="practice-title" id="course-3">
            <h2>Cuối kỳ</h2>
        </div>
        <div id="finalexam">
            <div class="items" data-status="free">
                <img class="item-img" src="client/img/subject.png" alt="">
                <h2 class="item-title">2024 Cuối kỳ Tư Tưởng Hồ Chí Minh</h2>
                <div class="item-info">
                    <span style="color:#677788;" class="fa-regular fa-clock"></span>
                    <p style="font-weight: 600; margin-left:5px;color:#677788;margin-bottom: 8px;">120 phút | 50 câu hỏi </p>
                </div>
                <p style="margin-bottom: 2rem;">Trạng thái: Tự do</p>
                <a href="test.html">
                    <button class="btn-start-exam">Bắt đầu thi</button>
                </a>
            </div>

            <div class="items" data-status="free">
                <img class="item-img" src="client/img/subject.png" alt="">
                <h2 class="item-title">2024 Cuối kỳ Mạng Máy Tính</h2>
                <div class="item-info">
                    <span style="color:#677788;" class="fa-regular fa-clock"></span>
                    <p style="font-weight: 600; margin-left:5px;color:#677788;margin-bottom: 8px;">120 phút | 50 câu hỏi </p>
                </div>
                <p style="margin-bottom: 2rem;">Trạng thái: 02/05/2024</p>
                <a href="test.html">
                    <button class="btn-start-exam">Bắt đầu thi</button>
                </a>
            </div>

            <div class="items" data-status="free">
                <img class="item-img" src="client/img/subject.png" alt="">
                <h2 class="item-title">2024 Cuối kỳ Vật lí và thí nghiệm 1</h2>
                <div class="item-info">
                    <span style="color:#677788;" class="fa-regular fa-clock"></span>
                    <p style="font-weight: 600; margin-left:5px;color:#677788;margin-bottom: 8px;">120 phút | 50 câu hỏi </p>
                </div>
                <p style="margin-bottom: 2rem;">Trạng thái: Tự do</p>
                <a href="test.html">
                    <button class="btn-start-exam">Bắt đầu thi</button>
                </a>
            </div>

            <div class="items" data-status="free">
                <img class="item-img" src="client/img/subject.png" alt="">
                <h2 class="item-title">2024 Cuối kỳ Xử lý tín hiệu số</h2>
                <div class="item-info">
                    <span style="color:#677788;" class="fa-regular fa-clock"></span>
                    <p style="font-weight: 600; margin-left:5px;color:#677788;margin-bottom: 8px;">120 phút | 50 câu hỏi </p>
                </div>
                <p style="margin-bottom: 2rem;">Trạng thái: 03/04/2024</p>
                <a href="test.html">
                    <button class="btn-start-exam">Bắt đầu thi</button>
                </a>
            </div>

            <div class="items" data-status="free">
                <img class="item-img" src="client/img/subject.png" alt="">
                <h2 class="item-title">2024 Cuối kỳ Tin học cơ sở 2</h2>
                <div class="item-info">
                    <span style="color:#677788;" class="fa-regular fa-clock"></span>
                    <p style="font-weight: 600; margin-left:5px;color:#677788;margin-bottom: 8px;">120 phút | 50 câu hỏi </p>
                </div>
                <p style="margin-bottom: 2rem;">Trạng thái: Tự do</p>
                <a href="test.html">
                    <button class="btn-start-exam">Bắt đầu thi</button>
                </a>
            </div>

            <div class="items" data-status="free">
                <img class="item-img" src="client/img/subject.png" alt="">
                <h2 class="item-title">2024 Cuối kỳ Kiến trúc máy tính</h2>
                <div class="item-info">
                    <span style="color:#677788;" class="fa-regular fa-clock"></span>
                    <p style="font-weight: 600; margin-left:5px;color:#677788;margin-bottom: 8px;">120 phút | 50 câu hỏi </p>
                </div>
                <p style="margin-bottom: 2rem;">Trạng thái: Tự do</p>
                <a href="test.html">
                    <button class="btn-start-exam">Bắt đầu thi</button>
                </a>
            </div>

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
            console.log(selectedType);
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
</body>
</html>