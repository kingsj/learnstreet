# This def takes a string as input, separates up the values found between the commas and returns an array of those values.
def separate_comma_values(text):
    txt_len = text.__len__()
    if txt_len == 0:
        return [""]
    addrCount = 1
    addr = [""]
    for i in range(0, txt_len):
        ch = text[i]
        if ch == ",":
            if len(addr[addrCount-1]) > 0:
                addrCount += 1
                addr.append("")
        else:
            addr[(addrCount-1)] += ch
    return addr
    

# This def extracts local and domain portions of an email address
def extract_local_domain(text):
    str_len = text.__len__()
    l = ""
    d = ""
    if str_len >= 7:
        # We skip the spaces
        pos = 0
        while text[pos] == " ":
            pos =+ 1
        
        # Now we expect the local part
        while pos < str_len:
            if text[pos] == "@":
                pos += 1
                break
            l += text[pos]
            pos += 1
            
        # Now @
        if (pos < str_len and text[pos-1] == "@"):
            # Now we expect the domain part
            while (pos < str_len ):
                if text[pos] != " ":
                    d += text[pos]
                    pos += 1
            
        # Now trailing spaces if any, we don't care
    return l, d
	

# This def checks if the local portion of an email is valid
def is_valid_local(text):
    str_len = text.__len__()
    if str_len > 0:
        # Can't start with a dot or an underscore
        if (text[0] != '.' and text[0] != '_' ):
            # Everything else should be alphabet, number or '.' or '_'
            ctr = 0
            while (ctr < str_len and ( (text[ctr] >= 'A' and text[ctr] <= 'Z') or (text[ctr] >= 'a' and text[ctr] <= 'z') or ( text[ctr] >= '0' and text[ctr] <= '9') or text[ctr] == '.' or text[ctr] == '_' )):
                ctr += 1
                	
            if ctr == str_len:
                return True
    return False
    
# This def checks if the local portion of an email is valid
def is_valid_domain(text):
    flag = 0
    str_len = text.__len__()
    if str_len > 0:
        # Can't start with a dot or an underscore
        if (text[0] != '.' and text[0] != '_' and text[str_len-1] != '.'):
            # Everything else should be alphabet, number or '.' or '_'
            ctr = 0
            while (ctr < str_len and ( (text[ctr] >= 'A' and text[ctr] <= 'Z') or (text[ctr] >= 'a' and text[ctr] <= 'z') or text[ctr] == '.' or text[ctr] == '-' )):
                if text[ctr] == '.':
                    flag += 1 
                ctr += 1
                    
            if ctr == str_len and flag == 1:
                return True
    return False
    
def run(input_val):
    result = []
    emails = separate_comma_values(input_val)
    for i in range(0, len(emails)):
        [local, domain] = extract_local_domain(emails[i])
        if is_valid_local(local) and domain != '' and is_valid_domain(domain):
            result.append([local, domain])
    return result
	