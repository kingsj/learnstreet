#ROT-13 Project
def string_rot13(str)
   rot13 = ""
    lower_case   = "abcdefghijklmnopqrstuvwxyz"
    upper_case = lower_case.upcase
    lower_case = lower_case.each_char.to_a
    upper_case = upper_case.each_char.to_a
    char = str.each_char.to_a
    for i in 0...char.length
        if char[i] == ' '
            rot13 += ' '           
        elsif (char[i] == char[i].upcase)
            loc = upper_case.index(char[i])
            idx = (loc+13)%26
            rot13 += upper_case[idx]
        else
            loc = lower_case.index(char[i])
            idx = (loc+13)%26
            rot13 += lower_case[idx]
        end
    end
    return rot13
    
end