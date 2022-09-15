
let password;
function isUpperandNumber(str) {
    return !/[a-z]/.test(str) && /[A-Z]/.test(str)  && /\d/.test(str);
}

function checkUserName(){
    error = document.getElementById("error-span");
    userNameInput = document.querySelector('#usr-name').value;
    if(!isUpperandNumber(userNameInput)){
        console.log("Not right");
        error.textContent = "Invalid Username";
        error.style.color = "red";
    }
    else 
    {
        console.log("Valid");
        error.textContent = "";
    }
    
}

function storePass(){
    password = document.getElementById('server-pass').value;
}

function confirmPass(){
    let newPassword = document.getElementById('conf-pass').value;
    if(newPassword != password){
        alert("Passwords Mismatch");
    }
}

function check(){
    a = document.getElementById('m-name'); 
    b = document.getElementById('email-add');
    c = document.getElementById('usr-name');
    d = document.getElementById('server-pass');
    e = document.getElementById('conf-pass');
    if(a.checkValidity() && b.checkValidity() && c.checkValidity() && d.checkValidity() && e.checkValidity()){
        alert("First 5 items are valid");
    }
}