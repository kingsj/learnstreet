//Memory Concentration Game
function populate(){ 
    matrix = [[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0]];
    for(var i = 0; i < 10; i++){
        var j = 0;
        while(j < 2){
            var x = Math.floor((Math.random()*5));
            var y = Math.floor((Math.random()*4));
            if(matrix[y][x] == 0){
                console.log(i+1)
                matrix[y][x] = i+1
                j = j + 1;
            }
        }
    }
    return matrix;
}
function selectCard(x, y){
    card = {}
    card["x"] = x
    card["y"] = y
    return card
}
function isMatch(selectedCard1, selectedCard2, matrix){
    if((selectedCard1['x'] != selectedCard2['x']) || (selectedCard1['y'] != selectedCard2['y'])){
        if(matrix[selectedCard1['x']][selectedCard1['y']] == matrix[selectedCard2['x']][selectedCard2['y']]){
            return true;
        }
        return false;
    }
}    