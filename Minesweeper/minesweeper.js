// Minesweeper game
var MINE_COUNT = 10;
var MINEFIELD_HEIGHT = 9;
var MINEFIELD_WIDTH = 9;
function generateMines(mines) {
    // Generate the minefield using arrays and for loops.
    // The game board (or minefield) is 9x9 and is passed in as a
    // two-dimensional array ("mines"). Your job is to randomly
    // generate the 10 mines for the rows 0-8 and columns 0-8,
    // returning the 9x9 mines array with the array element
    // values set to the character "m" to indicate a mine location.
    for (var i = 0; i < MINE_COUNT; i++) {
        var x = Math.random() * MINEFIELD_WIDTH | 0;
        var y = Math.random() * MINEFIELD_HEIGHT | 0;
        if (mines[x][y] != 'm') {
            mines[x][y] = 'm';
        } else {
            i--;
        }
    }
    return mines
    
}

function getNumNeighbors(mines,i,j) {
    // This method returns the total number of mines adjacent to a given square.
    // The inputs are the minefield array ("mines") and the x & y coordinates of
    // the square on the grid ("i" & "j") -- for position mines[i][j].
    // Remember that mines are marked with the value "m" in generateMines() above.
    var ret = 0;
    for (var x = Math.max(0, i - 1); x <= Math.min(8, i + 1); x++) {
        for (var y = Math.max(0, j - 1); y <= Math.min(8, j + 1); y++) {
            if (mines[x][y] == 'm') {
                ret++;
            }
        }
    }
    return ret;

}

function generateNumbers(mines) {
    // This method produces the visual output of the minesweeper game board,
    // which shows the 9x9 grid with digits representing the number of adjacent
    // mines for each square. Here you will use the getNumNeighbors() method
    // from above: iterate through all the squares of the two-dimensional game
    // board array ("mines") and call getNumNeighbors() for each square.
    // Return a 9x9 game board array containing all the digits representing
    // these values for each square.
    //REPLACE THIS WITH YOUR CODE
    
    for (var i = 0; i < MINEFIELD_WIDTH; i++) {
        for (var j = 0; j < MINEFIELD_HEIGHT; j++) {
            if (mines[i][j] == 'm') {
                continue;
            }
            mines[i][j] = String.fromCharCode(this.getNumNeighbors(mines,i, j) + 0x30);
        }
    }
    return mines;

}