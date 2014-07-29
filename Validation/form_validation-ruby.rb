#Form Validation method
#Rules:
#Username:
#    1. Username Should be minimum 5 characters long.
#    2. No Space, no Special Characters (i.e., must be alphanumeric).
#Email:
#    1. Valid Email Address.
#        = valid characters + '@' + more valid chars + '.' + yet more valid chars
#Phone:
#    1. Valid US Phone Number(10 digits: 123-454-7890, (123) 454-7890, (123)+454 7890)
#Password:
#    1. Password length should be minimum 6 characters long.
#    2. Password should not be same as Username.
#   

def username_validation(name)
    regex_name = /^[a-zA-Z0-9_]{5,30}$/
    if name.match regex_name then
        return true
    else
        return false
    end
    return false

end

def email_validation(email)
    regex_email = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i
    if email.match regex_email then
        return true
    else
        return false
    end
    return false

end

def phone_validation(phone)
    regex_phone = /^\(?([0-9]{3})\)?[-.+ ]?([0-9]{3})[-. ]?([0-9]{4})$/
    if phone.match regex_phone then
        return true
    else
        return false
    end
    return false

end    

def password_validation(password, uname)
    regex_password = /^[a-zA-Z0-9@#?*%]{6,30}$/
    if password == uname then
        return false
    end
    if password.match regex_password then
        return true
    else
        return false
    end
    return false


end
def conpassword_validation(conpass, res)
    if (conpass.length == 0)
        return false
    elsif (conpass != res) 
         return false
    else
        return true
    end

end 
