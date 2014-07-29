#string defs project
def revers(str):
    rev = ""
    str_length = str.__len__() -1
    for i in range(str_length, -1, -1):
        rev = rev + str[i]
    return rev

def uppercase(str):
    res = str.upper()
    return res

def palindrome(str):
    rev = revers(str)
    if (rev==str):
        return "is a palindrome"
    else:
        return "is not a palindrome"