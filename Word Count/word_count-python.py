# This def tests a character to see if it is a separator between words.
# It returns true if the character is a separator, false otherwise.
def is_separator(ch):
    if (ch==" " or ch=="," or ch=="." or ch=="!" or ch=="?" ):
        return True
    else:
        return False


# This def tests a character to see if is an alphabet, digit or general things which are parts of words
# It returns true if the character is a typical part of word, false otherwise.
def is_partofword(ch):
    if ( (ch >= 'A' and ch <= 'Z') or (ch >= 'a' and ch <= 'z') or (ch >= '0' and ch <= '9') ):
        return True
    else:
        return False
	
    
# This def takes a string text as input and returns a collection of words as output. From this collection of words, the number of words are 	displayed automatically.
def count_words(text):
    length = text.__len__()
    wordCount = 0
    words = []
    pos = 0
    inGap = True
    while (pos < length):
        ch = text[pos]
        if (is_partofword(ch)):
            if (inGap):
                wordCount += 1
                words.append("")
            inGap = False
            words[(wordCount-1)] += ch
        elif (is_separator(ch)):
            inGap = True
        pos += 1
    return words
	
