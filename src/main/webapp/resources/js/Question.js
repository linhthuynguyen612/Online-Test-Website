function taoThanhCong() {
    alert("Bạn đã tạo câu hỏi cho bài thi thành công!");

}

document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("addButton").addEventListener("click", addQuestion);
});

var i = 0;
function addQuestion(event) {
    i += 1;
    event.preventDefault();
    var inputsContainer = document.getElementById("inputsContainer");
    var inputDiv = document.createElement('form');
    inputDiv.id = `question${i}`;
    inputDiv.method = "post";
    inputDiv.action = "";
    inputDiv.setAttribute("modelAttribute", "newQuestion");
    inputDiv.classList.add('question');

    inputDiv.innerHTML = `
    <h2>Câu hỏi ${i}</h2>

    <label for="deBaiCauHoi${i}">Đề bài:</label>
    <input type="text" id="deBaiCauHoi${i}" placeholder="Nhập đề bài câu hỏi ${i}..."> <br>

    <label for="phuongAnA${i}">Phương án A:</label>
    <input type="text" id="phuongAnA${i}" placeholder="Nhập phương án A..."><br>

    <label for="phuongAnB${i}">Phương án B:</label>
    <input type="text" id="phuongAnB${i}" placeholder="Nhập phương án B..."><br>

    <label for="phuongAnC${i}">Phương án C:</label>
    <input type="text" id="phuongAnC${i}" placeholder="Nhập phương án C..."><br>

    <label for="phuongAnD${i}">Phương án D:</label>
    <input type="text" id="phuongAnD${i}" placeholder="Nhập phương án D..."><br>

    <label for="phuongAnDung${i}">Phương án đúng:</label>
    <select id="phuongAnDung${i}">
        <option value="1">A</option>
        <option value="2">B</option>
        <option value="3">C</option>
        <option value="4">D</option>
    </select><br>
    `;
    inputsContainer.appendChild(inputDiv);

    inputDiv.scrollIntoView({ behavior: 'smooth', block: 'end' });

}


document.getElementById("addButton").addEventListener("click", addQuestion);

function saveQuestions() {
    var examId = document.getElementById("submitButton").dataset.examId;
    // Tạo một mảng chứa các câu hỏi
    var questions = [];
    for (var j = 1; j <= i; j++) {
        var question = {
            questionContent: document.getElementById(`deBaiCauHoi${j}`).value,
            optionA: document.getElementById(`phuongAnA${j}`).value,
            optionB: document.getElementById(`phuongAnB${j}`).value,
            optionC: document.getElementById(`phuongAnC${j}`).value,
            optionD: document.getElementById(`phuongAnD${j}`).value,
            correctOptionIndex: document.getElementById(`phuongAnDung${j}`).value,
        };
        questions.push(question);
    }

    // Gửi yêu cầu POST tới backend
    fetch(`/admin/exam/question/create_question/${examId}`, {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(questions)
    })
    .then(response => {
        if (response.ok) {
            // Nếu yêu cầu thành công, chuyển hướng trang web
            window.location.href = `/admin/exam/update/question/${examId}`;
            taoThanhCong();
        } else {
            // Nếu có lỗi, hiển thị thông báo hoặc xử lý lỗi khác
            console.error('Có lỗi xảy ra.');
        }
    })
    .catch(error => {
        // Xử lý lỗi nếu có
        console.error('Error:', error);
    });
}
