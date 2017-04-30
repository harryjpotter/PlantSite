function verify() {
    if (
        is_full_name() 
        && is_username()
        && is_password()
        && is_password_confirmed()
        && is_email()
        && is_phone()
        && is_terms()
        ) {
        //alert("you have signed in");
        return true;
    }

    else {
        return false;
    }
}

function is_full_name() {
    var fullname = document.getElementById("Fullname").value;
    if (fullname.length > 0)
        return true;
    alert("please write your full name.");
    return false;
}

function is_terms() {
    if (document.getElementById("Agree").checked)
        return true;
    alert("you must agree to the terms of use");
    return false;
}

function is_email() {
    var email = document.getElementById("Email").value;
    if (email.includes("@"))
        return true;
    alert("please check your email");
    return false;
}

function is_password() {
    var password = document.getElementById("Password").value;
    if (password.length > 0)
        return true;
    alert("please check your password");
    return false;
}

function is_password_confirmed() {
    var confirmedPassword = document.getElementById("ConfirmPassword").value;
    var password = document.getElementById("Password").value;
    if (confirmedPassword.localeCompare(password) == 0)
        return true;
    alert("the passwords do not match");
    return false;
}

function is_phone() {
    if (/^\d+$/.test(document.getElementById("phone").value))
        return true;
    alert("please check your phone number");
    return false;
}

function is_username() {
    var username = document.getElementById("Username").value;
    if (username.length > 0)
        return true;
    alert("please check your username");
    return false;
}