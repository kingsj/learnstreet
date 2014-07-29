#Hangman Project
#RETURN A 'HIDDEN' VERSION OF THE SUPPLIED SECRET WORD
def get_display(word):
    disp=''
    for i in word:
        disp=disp+'-'
    return disp

#FIND IF THE LETTER IS IN THE WORD
def is_letter_in_word(word,letter):
    if (word == None):
        return False
    else:
        if(word.find(letter)!=-1):
            return True
        else:
            return False

#UPDATE GAME DISPLAY IF WE'VE BEEN GIVEN A MATCHING LETTER
def get_letter(word,letter,display):
    if (word == None):
        return False
    else:
        while(word.find(letter)!=-1):
            index=word.find(letter)
            display = display[0:index] + letter + display[index + 1:]
            word = word[0:index] + '-' + word[index + 1:]
    return display;

'''  
    RETURN 'finished' if game has finished 
    RETURN 'lose' if game has lossed 
    RETURN 'continue' if it is not finished
'''
def is_finished(word, display, left):
    if(left!=0):
        if(word==display):
            return 'finished'
        else:
            return 'continue'
    else:
        return 'lose'