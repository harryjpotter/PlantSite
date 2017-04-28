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
        alert("you have signed in");
        return true;
    }

    else {
        alert("check your details again !");
        return false;
    }
}

function is_full_name() {
    var fullname = document.getElementById("Fullname").value;
    if (fullname.length > 0)
        return true;
    return false;
}

function is_terms() {
    return document.getElementById("Agree").checked;
}

function is_email() {
    var email = document.getElementById("Email").value;
    return email.includes("@");
}

function is_password() {
    var password = document.getElementById("Password").value;
    if (password.length > 0)
        return true;
    return false;
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

function is_username() {
    var username = document.getElementById("Username").value;
    if (username.length > 0)
        return true;
    return false;
}