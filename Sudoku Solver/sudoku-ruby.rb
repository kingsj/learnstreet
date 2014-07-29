# Sudoku Solver Project
#    ******************************************************
#    DO NOT CHANGE THIS FUNCTION!
#
#	It is provided for your convenience to be used in the 
#	is_possible_number() function.
#   ******************************************************
#
def get_cell_block(row,col)
    block_row = row / 3
    block_col = col / 3
    block = block_row * 3 + block_col
    return block
end

def is_possible_row(sudoku, row, number)
    for col in 0...9
        if sudoku[row][col] == number
            return false
        end
    end
    return true
end
    
def is_possible_column(sudoku, col, number)
    for row in 0...9
        if sudoku[row][col] == number
            return false
        end
    end
    return true
end
    
def is_possible_block(sudoku, block, number)
    start_row = (block / 3) * 3
    start_col = (block % 3) * 3
    for x in 0...9
        if(sudoku[start_row + (x / 3)][start_col + (x % 3)] == number)
            return false
        end
    end
    return true
end
    
def is_possible_number(sudoku, row, col, number)
    block = get_cell_block(row, col)
    return is_possible_row(sudoku, row, number) && is_possible_column(sudoku, col, number) && is_possible_block(sudoku, block, number)
end
    
def is_correct_row(sudoku, row)
    sub = sudoku[row]
    sub = sub.sort()
    for x in 1...10
        if sub[x - 1] != x
            return false
        end
    end
    return true
end
    
def is_correct_column(sudoku, col)
    sub = []
    for x in 0...9
        sub.push(sudoku[x][col])
    end
    sub = sub.sort()
    for x in 1...10
        if sub[x - 1] != x
            return false
        end
    end
    return true
end
    
def is_correct_block(sudoku, block)
    sub = []
    start_row = (block / 3) * 3
    start_col = (block % 3) * 3
    for x in 0...9
        sub.push(sudoku[start_row + (x / 3)][start_col + (x % 3)])
    end
    sub = sub.sort()
    for x in 1...10
        if sub[x - 1] != x
            return false
        end
    end
    return true
end
    
def is_solved(sudoku)
    for x in 0...9
        if ! (is_correct_row(sudoku, x) && is_correct_row(sudoku, x) && is_correct_row(sudoku, x))
            return false
        end
    end   
    return true
end
