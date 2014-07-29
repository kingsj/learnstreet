# This def takes a string as input, separates up the values found between the commas and returns an array of those values.
def separate_comma_values(text)
    txt_len = text.length
    if txt_len == 0
        return [""]
    end
    addrCount = 1
    addr = [""]
    for i in 0...txt_len
        ch = text[i].chr
        if ch == ","
            if addr[addrCount-1].length > 0
                addrCount += 1
                addr.push("")
            end
        else
            addr[(addrCount-1)] += ch
        end
    end
    return addr
    
end

# This def extracts local and domain portions of an email address
def extract_local_domain(text)
    text = text.each_char.to_a
    str_len = text.length
    local = ""
    d = ""
    if str_len >= 7
        # We skip the spaces
        pos = 0
        
        while text[pos] == " " do
            pos =+ 1
        end
        
        # Now we expect the local part
        while pos < str_len do
            if text[pos] == "@"
                pos += 1
                break
            end
            local += text[pos]
            pos += 1
        end
            
        # Now @
        if (pos < str_len and text[pos-1] == "@")
            # Now we expect the domain part
            while (pos < str_len ) do
                if text[pos] != " "
                    d += text[pos]
                    pos += 1
                end
            end
        end
            
    end
    return local, d
    
end

# This def checks if the local portion of an email is valid
def is_valid_local(text)
    text = text.each_char.to_a
    str_len = text.length
    if str_len > 0
        # Can't start with a dot or an underscore
        if (text[0] != '.' and text[0] != '_' )
            # Everything else should be alphabet, number or '.' or '_'
            ctr = 0
            while (ctr < str_len and ( (text[ctr] >= 'A' and text[ctr] <= 'Z') or (text[ctr] >= 'a' and text[ctr] <= 'z') or ( text[ctr] >= '0' and text[ctr] <= '9') or text[ctr] == '.' or text[ctr] == '_' )) do
                ctr += 1
            end
            
            if ctr == str_len:
                return true
            end
        end
    end
    return false
	
end

# This def checks if the local portion of an email is valid
def is_valid_domain(text)
    text = text.each_char.to_a
    flag = 0
    str_len = text.length
    if str_len > 0
        # Can't start with a dot or an underscore
        if (text[0] != '.' and text[0] != '_' and text[str_len-1] != '.')
            # Everything else should be alphabet, number or '.' or '_'
            ctr = 0
            while (ctr < str_len and ( (text[ctr] >= 'A' and text[ctr] <= 'Z') or (text[ctr] >= 'a' and text[ctr] <= 'z') or text[ctr] == '.' or text[ctr] == '-' )) do
                if text[ctr] == '.'
                    flag += 1 
                end
                ctr += 1
            end
                    
            if ctr == str_len and flag == 1:
                return true
            end
        end
    end
    return false
	
end

def run(input_val)
    result = []
    local = ""
    emails = separate_comma_values(input_val)
    for i in 0...emails.length
        local, domain = extract_local_domain(emails[i])
        if is_valid_local(local) and domain != '' and is_valid_domain(domain)
            result.push([local, domain])
        end
    end
    return result
end