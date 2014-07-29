# Connect Four
def initMatrix():
    matrix =  []
    for row in range(0, 6):
        row = []
        for col in range(0, 7):
            row.append(0)
        matrix.append(row)
    return matrix
    
def getDropPosition(matrix, columnPosition):
    rowPosition = 5
    while rowPosition >= 0:
        if matrix[rowPosition][columnPosition] == 0:
            return rowPosition
        rowPosition = rowPosition - 1
    return -1
    
def setDropValue(matrix, rowPosition, columnPosition, human):
    if human:
        matrix[rowPosition][columnPosition] = 1
    else:
        matrix[rowPosition][columnPosition] = 2
    return matrix

def getRowWin(matrix):
    winPositions = [[-1, -1], [-1, -1], [-1, -1], [-1, -1]]
    row = 5
    while row >= 0:
        col=0
        while col <= 3:
            if matrix[row][col] != 0:
                if matrix[row][col] == matrix[row][col + 1] == matrix[row][col + 2] == matrix[row][col + 3]:
                    winPositions = [[row, col], [row, col + 1], [row, col + 2], [row, col + 3]]
                    return winPositions
            col = col + 1
        row = row - 1
    return winPositions
    
def getColumnWin(matrix):
    winPositions = [[-1, -1], [-1, -1], [-1, -1], [-1, -1]]
    col = 0
    while col <= 6:
        row = 5
        while row >= 3:
            if matrix[row][col] != 0:
                if matrix[row][col] == matrix[row - 1][col] == matrix[row - 2][col] == matrix[row - 3][col]:
                    winPositions = [[row, col], [row - 1, col], [row - 2, col], [row - 3, col]]
                    return winPositions
            row = row - 1
        col = col + 1
    return winPositions
    
def getDiagonalLeftToRightWin(matrix):
    winPositions = [[-1, -1], [-1, -1], [-1, -1], [-1, -1]]
    row = 5
    col = 0
    while row >= 3:
        while col <= 3:
            if matrix[row][col] != 0:
                if matrix[row][col] == matrix[row - 1][col + 1] == matrix[row - 2][col + 2] == matrix[row - 3][col + 3]:
                    winPositions = [[row, col], [row - 1, col + 1], [row - 2, col + 2], [row - 3, col + 3]]
                    return winPositions
            col = col + 1
        col = 0
        row = row - 1
    return winPositions
    
def getDiagonalRightToLeftWin(matrix):
    winPositions = [[-1, -1], [-1, -1], [-1, -1], [-1, -1]]
    row = 5
    col = 6
    while row >= 3:
        while col >= 3:
            if matrix[row][col] != 0:
                if matrix[row][col] == matrix[row - 1][col - 1] == matrix[row - 2][col - 2] == matrix[row - 3][col - 3]:
                    winPositions = [[row, col], [row - 1, col - 1], [row - 2, col - 2], [row - 3, col - 3]]
                    return winPositions
            col = col - 1
        col = 6
        row = row - 1
    return winPositions
    
def isGameOver(matrix):
    for row in matrix:
        for cell in row:
            if cell is 0:
                return False
    return True
    