# This def tests a character to see if it is a separator between words.
# It returns true if the character is a separator, false otherwise.
def is_separator(ch)
    if (ch==" " or ch=="," or ch=="." or ch=="!" or ch=="?" ) then
        return true
    else
        return false
    end

end

# This def tests a character to see if is an alphabet, digit or general things which are parts of words
# It returns true if the character is a typical part of word, false otherwise.
def is_partofword(ch)
     if((ch >= 'A' and ch <= 'Z') or (ch >= 'a' and ch <= 'z') or (ch >= '0' and ch <= '9')) then
        return true
    else
        return false
    end

end	
    
# This def takes a string text as input and returns a collection of words as output. From this collection of words, the number of words are 	displayed automatically.
def count_words(text)
    text = text.each_char.to_a
    length = text.length
    wordCount = 0
    words = []
    pos = 0
    inGap = true
    while (pos < length) do
        ch = text[pos]
        if (is_partofword(ch))
            if (inGap)
                wordCount = wordCount + 1
                words.push("")
            end
            inGap = false
            words[(wordCount-1)] += ch
        elsif (is_separator(ch))
            inGap = true
        end
        pos += 1
    end
    return words
	
end