// Sudoku Solver Project
function isPossibleRow(sudoku, row, number) {
      for(var col = 0; col < 9; col++) {
        if(sudoku[row][col] === number) {
            return false;
        }
    }
    return true;
    
}

function isPossibleColumn(sudoku, col, number) {
    for(var row = 0; row < 9; row++) {
        if(sudoku[row][col] === number) {
            return false;
        }
    }
    return true;
    
}

function isPossibleBlock(sudoku, block, number) {
       var start_row = Math.floor(block/3)*3;
    var start_col = Math.floor(block%3)*3;
    for(var x = 0; x < 9; x++) {
        if(sudoku[start_row+Math.floor(x/3)][start_col+Math.floor(x%3)] === number) {
            return false;
        }
    }
    return true;
    
}

function isPossibleNumber(sudoku, row, col, number) {
     var block = getCellBlock(row, col);
    return isPossibleRow(sudoku, row, number) && isPossibleColumn(sudoku, col, number) && isPossibleBlock(sudoku, block, number);
    
}
function isCorrectRow(sudoku, row) {
    var sub = sudoku[row].slice(0);
    sub.sort();
    for(var x = 1; x <= 9; x++) {
        if(sub[x-1] !== x) {
            return false;
        }
    }
    return true;
    
}

function isCorrectColumn(sudoku, col) {
   var sub = new Array();
    for(var x = 0; x < 9; x++) {
        sub.push(sudoku[x][col]);
    }
    sub.sort();
    for(var x = 1; x <= 9; x++) {
        if(sub[x-1] !== x) {
            return false;
        }
    }
    return true;

    
}

function isCorrectBlock(sudoku, block) {
     var sub = new Array();
    var start_row = Math.floor(block/3)*3;
    var start_col = Math.floor(block%3)*3;
    for(var x = 0; x < 9; x++) {
        sub.push(sudoku[start_row+Math.floor(x/3)][start_col+Math.floor(x%3)]);
    }
    sub.sort();
    for(var x = 1; x <= 9; x++) {
        if(sub[x-1] !== x) {
            return false;
        }
    }
    return true;
    
}

function isSolved(sudoku) {
    for(var x = 0; x < 9; x++) {
        if(!isCorrectRow(sudoku, x) || !isCorrectColumn(sudoku, x) || !isCorrectBlock(sudoku, x)) {
            return false;
        }
    }
    return true;
    
}

/***********************************************************
	DO NOT CHANGE THIS FUNCTION!

	It is provided for your convenience to be used in the 
	isPossibleNumber() function.
***********************************************************/
function getCellBlock(row,col) {
	var block_row = Math.floor(row/3);
	var block_col = Math.floor(col/3);
	var block = block_row*3+block_col;
	return block;
}