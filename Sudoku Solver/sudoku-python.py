# Sudoku Solver Project
'''
      ******************************************************
    DO NOT CHANGE THIS FUNCTION!

    It is provided for your convenience to be used in the 
	is_possible_number() function.
    ******************************************************
'''
def get_cell_block(row,col) :
    block_row = row / 3
    block_col = col / 3
    block = block_row*3 + block_col
    return block

def is_possible_row(sudoku, row, number):
    for col in range(0,9):
        if sudoku[row][col] == number:
            return False
    return True
    
def is_possible_column(sudoku, col, number) :
    for row in range(0, 9):
        if sudoku[row][col] == number:
            return False
    return True
    
def is_possible_block(sudoku, block, number) :
    start_row = (block / 3) * 3
    start_col = (block % 3) * 3
    for x in range(0,9):
        if(sudoku[start_row + (x / 3)][start_col + (x % 3)] == number):
            return False
    return True
    
def is_possible_number(sudoku, row, col, number) :
    block = get_cell_block(row, col)
    return is_possible_row(sudoku, row, number) and is_possible_column(sudoku, col, number) and is_possible_block(sudoku, block, number)
    
def is_correct_row(sudoku, row) :
    sub = sudoku[row]
    sub.sort()
    for x in range(1,10):
        if sub[x - 1] != x:
            return False
    return True
    
def is_correct_column(sudoku, col) :
    sub = []
    for x in range(0, 9):
        sub.append(sudoku[x][col])
    sub.sort()
    for x in range(1, 10):
        if sub[x - 1] != x:
            return False
    return True
    
def is_correct_block(sudoku, block) :
    sub = []
    start_row = (block / 3) * 3
    start_col = (block % 3) * 3
    for x in range(0, 9):
        sub.append(sudoku[start_row + (x / 3)][start_col + (x % 3)])
    sub.sort()
    for x in range(1, 10):
        if sub[x - 1] != x:
            return False
    return True
    
def is_solved(sudoku) :
    for x in range(0, 9):
          if not (is_correct_row(sudoku, x) and is_correct_row(sudoku, x) and is_correct_row(sudoku, x)):
            return False
    return True