from random import randint
def populate():

    matrix = [[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0]]
    for i in range(0, 10):
        j = 0
        while j < 2:
            x = randint(0, 4)
            y = randint(0, 3)
            if matrix[y][x] == 0:
                matrix[y][x] = (i + 1)
                j = j + 1
    return matrix

def select_card(x, y):
    card = {}
    card['x'] = x
    card['y'] = y
    return card

def is_match(selected_card1, selected_card2, matrix):
    if selected_card1['x'] != selected_card2['x'] or selected_card1['y'] != selected_card2['y']:
        if matrix[selected_card1['x']][selected_card1['y']] == matrix[selected_card2['x']][selected_card2['y']]:
            return True
        return False