# Connect Four
def init_matrix()
    matrix =  []
    for i in 0...6
        row = []
        for j in 0...7
            row.push(0)
        end
        matrix.push(row)
    end
    return matrix
end
    
def get_drop_position(matrix, columnPosition)
    rowPosition = 5
    while rowPosition >= 0
        if matrix[rowPosition][columnPosition] == 0
            return rowPosition
        end
        rowPosition = rowPosition - 1
    end
    return -1
end
    
def set_drop_value(matrix, rowPosition, columnPosition, human)
    if human
        matrix[rowPosition][columnPosition] = 1
    else
        matrix[rowPosition][columnPosition] = 2
    end
    return matrix
end

def get_row_win(matrix)
    winPositions = [[-1, -1], [-1, -1], [-1, -1], [-1, -1]]
    row = 5
    while row >= 0
        col = 0
        while col <= 3
            if matrix[row][col] != 0
                val = matrix[row][col]
                if matrix[row][col + 1] == val && matrix[row][col + 2] == val && matrix[row][col + 3] == val
                    winPositions = [[row, col], [row, col + 1], [row, col + 2], [row, col + 3]]
                    return winPositions
                end
            end
            col = col + 1
        end
        row = row - 1
    end
    return winPositions
end
    
def get_column_win(matrix)
    winPositions = [[-1, -1], [-1, -1], [-1, -1], [-1, -1]]
    col = 0
    while col <= 6
        row = 5
        while row >= 3
            if matrix[row][col] != 0
                val = matrix[row][col]
                if matrix[row - 1][col] == val && matrix[row - 2][col] == val && matrix[row - 3][col] == val
                    winPositions = [[row, col], [row - 1, col], [row - 2, col], [row - 3, col]]
                    return winPositions
                end
            end
            row = row - 1
        end
        col = col + 1
    end
    return winPositions
end
    
def get_diagonal_left_to_right_win(matrix)
    winPositions = [[-1, -1], [-1, -1], [-1, -1], [-1, -1]]
    row = 5
    while row >= 3
        col = 0
        while col <= 3
            if matrix[row][col] != 0
                val = matrix[row][col]
                if matrix[row - 1][col + 1] == val && matrix[row - 2][col + 2] == val && matrix[row - 3][col + 3] ==val
                    winPositions = [[row, col], [row - 1, col + 1], [row - 2, col + 2], [row - 3, col + 3]]
                    return winPositions
                end
            end
            col = col + 1
        end
        row = row - 1
    end
    return winPositions
end
    
def get_diagonal_right_to_left_win(matrix)
    winPositions = [[-1, -1], [-1, -1], [-1, -1], [-1, -1]]
    row = 5
    col = 6
    while row >= 3
        while col >= 3
            if matrix[row][col] != 0
                val = matrix[row][col]
                if matrix[row - 1][col - 1] == val && matrix[row - 2][col - 2] == val && matrix[row - 3][col - 3] == val
                    winPositions = [[row, col], [row - 1, col - 1], [row - 2, col - 2], [row - 3, col - 3]]
                    return winPositions
                end
            end
            col = col - 1
        end
        col = 6
        row = row - 1
    end
    return winPositions
end
    
def is_game_over(matrix)
    for i in 0...matrix.length
        for j in 0...matrix[i].length
            if matrix[i][j] == 0
                return false
            end
        end
    end
    return true
end