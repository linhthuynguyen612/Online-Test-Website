<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="vi">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Làm bài kiểm tra</title>
    <!--Bootstrap-->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />

    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
    />
    <link rel="stylesheet" href="/css/clock.css">


</head>

<body>


  <div class="clock">
    <div id="countdown"></div>
  </div>

  <div class="container">
    <div class="card">
      <div class="card-header">
        <h3>Chọn đáp án đúng nhất cho mỗi câu hỏi dưới đây</h3>
      </div>
      
      <div class="card-body">
        <% int index = 0; %>
        <c:forEach items="${questions}" var="question">
            <% index++; %>

            <p>
                <strong>Câu <%=index%>:</strong> ${question.questionContent}
            </p>

            <div class="form-check">
              <input
                class="form-check-input"
                type="radio"
                name="Cau<%=index%>"
                id="Cau<%=index%>"
                value="1"
              />
              <label class="form-check-label" for="Cau<%=index%>"> A. </label> ${question.optionA}
            </div>

            <div class="form-check">
              <input
                class="form-check-input"
                type="radio"
                name="Cau<%=index%>"
                id="Cau<%=index%>"
                value="2"
              />
              <label class="form-check-label" for="Cau<%=index%>"> B. </label> ${question.optionA}
            </div>

            <div class="form-check">
              <input
                class="form-check-input"
                type="radio"
                name="Cau<%=index%>"
                id="Cau<%=index%>"
                value="3"
              />
              <label class="form-check-label" for="Cau<%=index%>"> C. </label> ${question.optionA}
            </div>

            <div class="form-check">
              <input
                class="form-check-input"
                type="radio"
                name="Cau<%=index%>"
                id="Cau<%=index%>"
                value="4"
              />
              <label class="form-check-label" for="Cau<%=index%>"> D. </label> ${question.optionA}
            </div>

        </c:forEach>    
                
      </div>

      <div class="card-footer">
        <div class="d-flex justify-content-center my-2">
          <button
            type="button"
            class="btn btn-primary"
            data-bs-toggle="modal"
            data-bs-target="#resultModal"
          >
            Nộp bài
          </button>
        </div>

        <div
            class="modal fade"
            id="resultModal"
            tabindex="-1"
            aria-labelledby="resultModalLabel"
            aria-hidden="true"
          >
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h1 class="modal-title fs-5" id="resultModalLabel">
                    Xác nhận nộp bài?
                  </h1>
                  <button
                    type="button"
                    class="btn-close"
                    data-bs-dismiss="modal"
                    aria-label="Close"
                  ></button>
                </div>
                <div class="modal-footer">
                  <button
                    type="button"
                    class="btn btn-secondary"
                    
                  >
                    Huỷ nộp bài
                  </button>
                  <button type="button" class="btn btn-primary">
                    Nộp bài
                  </button>
                </div>
              </div>
            </div>
          </div>
      </div>
    </div>

  </div>


  <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
      crossorigin="anonymous"
    ></script>
  <script src="/js/clock.js"></script>

</body>