function verify() {
    if (
        is_terms()
        && is_email()
        && is_password_confirmed()
        && is_phone()
        ) {
        alert("you have signed in");
        return true;
    }

    else {
        alert("check your details again !");
        return false;
    }
}

function is_terms() {
    return document.getElementById("Agree").checked;
}

function is_email() {
    var email = document.getElementById("Email").value;
    return email.includes("@");
}

function is_password_confirmed() {
    var confirmedPassword = document.getElementById("ConfirmPassword").value;
    var password = document.getElementById("Password").value;
    if (confirmedPassword.localeCompare(password) == 0)
        return true;
    return false;
}

function is_phone() {
    return /^\d+$/.test(document.getElementById("Phone").value);
}

/*$(document).ready(function(){
    
});*/