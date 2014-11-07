

function CreateCaptcha() {
    var m = 1000;
    var n = 50000;
    var number = Math.floor(Math.random() * (n - m + 1)) + m;

    return number;
}

function changeCaptcha() {
    var captcha = document.getElementById('captcha');
    captcha.value = CreateCaptcha();

}

function check() {
    var val = document.getElementById('captcha').value + "";
    var cur = document.getElementById('tt').value;

    if (cur == val) {
        alert("Код введен правильно, но прокомментировать данный сайт невозможно (пока что) =)");
    } else {
        alert("Код введен неправильно =(");
    }

}