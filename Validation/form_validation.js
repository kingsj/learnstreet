//Form Validation method
/* Rules:
Username:
    1. Username Should be minimum 5 characters long.
    2. No Space, no Special Characters (i.e., must be alphanumeric).
Email:
    1. Valid Email Address.
        = valid characters + '@' + more valid chars + '.' + yet more valid chars
Phone:
    1. Valid US Phone Number(10 digits: 123-454-7890, (123) 454-7890, (123)+454 7890)
Password:
    1. Password length should be minimum 6 characters long.
    2. Password should not be same as Username.
    
*/
function username_validation(name){
    var valid_name=/^[a-zA-Z0-9_]{5,30}$/;
        if(!valid_name.test(name))
        {
            return false;
        }
        else
        {
            return true;
        }
    
}
function email_validation(email){
var valid_email = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
if(!valid_email.test(email))
{
    return false;
}
else
{
    return true;
}
    
}
function phone_validation(phone){
	var valid_phone = /^\(?([0-9]{3})\)?[-.+ ]?([0-9]{3})[-. ]?([0-9]{4})$/;
if(!valid_phone.test(phone))
{
    return false;
}
    else
    {
        return true;
    }
}
function password_validation(pass, uname){
var valid_pass=/^[a-zA-Z0-9@#?*%]{6,30}$/;
    if(pass==uname)
{
    return false;
}
    else if(!valid_pass.test(pass))
{
    return false;
}
else
{
    return true;
}
}

function conpassword_validation(conpass, res){
if(conpass.length==0)
{    return false;
}
else if(conpass !==res)
{
    return false;
}
{
    return true;
}
  
}
