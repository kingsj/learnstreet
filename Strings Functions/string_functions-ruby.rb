#string defs project
def revers(str) 
    rev = ""
    chars = str.each_char.to_a
    i = chars.length-1
    while i >= 0 do
        rev = rev + chars[i]
        i = i-1
    end
    return rev
end

def uppercase(str) 
    return str.upcase
end

def palindrome(str) 
    rev = revers(str)
    if rev == str then
       return "is a palindrome"
    else
        return "is not a palindrome"
    end
end