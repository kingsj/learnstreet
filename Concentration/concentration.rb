#Memory Concentration Game
def populate() 
    matrix = [[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0]];

    for i in 0..9

        j=0

        while j < 2

            x = rand(5);

            y = rand(4);

            if matrix[y][x] == 0

                matrix[y][x] = (i + 1)

            else

                j=j-1

            end

            j=j+1

        end

    end

    return matrix;

end

def selectCard(x, y)
    card = {}
    card["x"] = x
    card["y"] = y
    return card
    
end

def isMatch(selectedCard1, selectedCard2, matrix) 
    if (selectedCard1['x'] != selectedCard2['x'] || selectedCard1['y'] != selectedCard2['y']) 

                if (matrix[selectedCard1['x']][selectedCard1['y']] == matrix[selectedCard2['x']][selectedCard2['y']])

            return true;

             end

                return false;

    end
    
end