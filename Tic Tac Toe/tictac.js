// Tic Tac Toe game functions
function checkRows(array) 
    {
    for (var i = 0; i < 9; i += 3) {
        if (array[i] != 0 && array[i] == array[i+1] && array[i] == array[i+2])             {
                return array[i];
            }
        }
        return 0;
    
    
}

function checkColumns(array) {
    for (var i = 0; i < 3; i++) {
        if (array[i] != 0 && array[i] == array[(i+3)] && array[i] == array[(i+6)]) {
            return array[i];
        }
        }
    return 0;
    

}

function checkDiagonals(array){
    if (array[0] != 0 && array[0] == array[4] && array[0] == array[8]) {
        return array[0];
    }
    if (array[2] != 0 && array[2] == array[4] && array[2] == array[6]) {
        return array[2];
    }
    return 0;
    
}

function getFirstEmptyMove(array) {
    for (var i = 0; i < 9; i++) {
        if (array[i] == 0) {
            return i;
        }
    }
    return -1;
    
}
