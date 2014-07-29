// Connect Four
function initMatrix(){
    var matrix =  [];
    for(var i = 0; i < 6; i++){
        var row = [];
        for(var j = 0; j < 7; j++){
            row.push(0);
        }
        matrix.push(row);
    }
    return matrix;
}
    
function getDropPosition(matrix, columnPosition){
    var rowPosition = 5;
    while(rowPosition >= 0){
        if(matrix[rowPosition][columnPosition] == 0){
            return rowPosition;
        }
        rowPosition = rowPosition - 1;
    }
    return -1;
}
    
function setDropValue(matrix, rowPosition, columnPosition, human){
       if(human){
        matrix[rowPosition][columnPosition] = 1;
    }
    else{
        matrix[rowPosition][columnPosition] = 2;
    }
    return matrix;
}
function getRowWin(matrix){
    var winPositions = [[-1, -1], [-1, -1], [-1, -1], [-1, -1]];
    var row = 5;
    while(row >= 0){
        var col = 0;
        while(col <= 3){
            if(matrix[row][col] != 0){
                val = matrix[row][col];
                if(matrix[row][col + 1] == val && matrix[row][col + 2] == val && matrix[row][col + 3] == val){
                    winPositions = [[row, col], [row, col + 1], [row, col + 2], [row, col + 3]];
                    return winPositions;
                }
            }
            col = col + 1;
        }
        row = row - 1;
    }
    return winPositions;
}    
function getColumnWin(matrix){
    var winPositions = [[-1, -1], [-1, -1], [-1, -1], [-1, -1]];
    var col = 0;
    while(col <= 6){
        var row = 5;
        while(row >= 3){
            if(matrix[row][col] != 0){
                val = matrix[row][col];
                if(matrix[row - 1][col] == val && matrix[row - 2][col] == val && matrix[row - 3][col] == val){
                    winPositions = [[row, col], [row - 1, col], [row - 2, col], [row - 3, col]];
                    return winPositions;
                }
            }
            row = row - 1;
        }
        col = col + 1;
    }
    return winPositions;
}    
function getDiagonalLeftToRightWin(matrix){
    var winPositions = [[-1, -1], [-1, -1], [-1, -1], [-1, -1]];
    var row = 5;
    while(row >= 3){
        var col = 0;
        while(col <= 3){
            if(matrix[row][col] != 0){
                val = matrix[row][col];
                if(matrix[row - 1][col + 1] == val && matrix[row - 2][col + 2] == val && matrix[row - 3][col + 3] == val){
                    winPositions = [[row, col], [row - 1, col + 1], [row - 2, col + 2], [row - 3, col + 3]];
                    return winPositions;
                }
            }
            col = col + 1;
        }
        row = row - 1;
    }
    return winPositions;
}    
function getDiagonalRightToLeftWin(matrix){
    var winPositions = [[-1, -1], [-1, -1], [-1, -1], [-1, -1]];
    var row = 5;
    var col = 6;
    while(row >= 3){
        while(col >= 3){
            if(matrix[row][col] != 0){
                val = matrix[row][col];
                if(matrix[row - 1][col - 1] == val && matrix[row - 2][col - 2] == val && matrix[row - 3][col - 3] == val){
                    winPositions = [[row, col], [row - 1, col - 1], [row - 2, col - 2], [row - 3, col - 3]];
                    return winPositions;
                }
            }
            col = col - 1;
        }
        col = 6;
        row = row - 1;
    }
    return winPositions;

}    
function isGameOver(matrix){
    for(var i = 0; i < matrix.length; i++){
        for(var j = 0; j < matrix[i].length; j++){
            if(matrix[i][j] == 0){
                return false
            }
        }
    }
    return true
}