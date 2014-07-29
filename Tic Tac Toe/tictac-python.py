#Tic Tac Toe game defs
def check_rows(array):
    for i in range(0, 9, 3): 
        if (array[i] != 0 and array[i] == array[i+1] and array[i] == array[i+2]):
            return array[i]
    return 0
    
    
def check_columns(array):
    for i in range(0, 3): 
        if (array[i] != 0 and array[i] == array[(i+3)] and array[i] == array[(i+6)]): 
            return array[i]
    return 0 
    


def check_diagonals(array):
    if (array[0] != 0 and array[0] == array[4] and array[0] == array[8]) :
        return array[0]
    
    if (array[2] != 0 and array[2] == array[4] and array[2] == array[6]) :
        return array[2]
    
    return 0
    

def get_first_empty_move(array):
    for i in range(0, 9): 
        if (array[i] == 0):
            return i
    return -1
    