document.getElementById("form-login").addEventListener("submit", function(event) {
    event.preventDefault(); 
    var loginUser = document.getElementById("loginUser").value;
    var loginPass = document.getElementById("loginPass").value;
    
    if (loginUser === "") {
        showError("Vui lòng nhập tên đăng nhập");
    } else if (loginPass === "") {
        showError("Vui lòng nhập mật khẩu");
    } else {
        alert("Đăng nhập thành công");   
    }
});


function showError(errorMessage) {
    var errorElement = document.createElement("p");
    errorElement.classList.add("error");
    errorElement.textContent = errorMessage;
    document.body.appendChild(errorElement);
}

function handleSubmit() {
    window.location.href= "http://localhost:8080";
}