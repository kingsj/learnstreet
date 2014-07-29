#Hangman Project
#RETURN A 'HIDDEN' VERSION OF THE SUPPLIED SECRET WORD
def get_display(word)
    disp=''
    for i in 0...word.length
        disp=disp+'-'
    end
    return disp
end

#FIND IF THE LETTER IS IN THE WORD
def is_letter_in_word(word,letter)
    if (word == nil)
        return false
    else
        if(word.index(letter)!=nil)
            return true
        else
            return false
        end
    end
end

#UPDATE GAME DISPLAY IF WE'VE BEEN GIVEN A MATCHING LETTER
def get_letter(word,letter,display)
    if (word == nil)
        return
    else
        while(word.index(letter)!=nil):
            index=word.index(letter)
            display = display[0,index] + letter + display[index + 1,display.length]
            word = word[0,index] + '-' + word[index + 1, word.length]
        end
    end
    return display;
end

#    *RETURN 'finished' if game has finished 
#    *RETURN 'lose' if game has lossed 
#    *RETURN 'continue' if it is not finished
def is_finished(word, display, left)
    if(left!=0)
        if(word==display)
            return 'finished'
        else
            return 'continue'
        end
    else
        return 'lose'
    end
end