#Snakes and Ladders Project
#The game consists of a 10x10 playing board of squares.
import random
def create_board_code():
    board=[]
    for i in range(0,100):
        obj = {}
        obj['end'] = i
        board.append(obj)
    # Set Snakes and Ladders, Offset is by 1
    # Ladders
    board[13]['end'] = 47
    board[18]['end'] = 59
    board[54]['end'] = 75
    board[68]['end'] = 89
    board[77]['end'] = 96
    # Snakes
    board[98]['end'] = 28
    board[46]['end'] = 17
    board[24]['end'] = 6
    return board

def get_steps():
    roll = int(random.random() * 6 + 1 or 0)
    return roll


def make_move(playerPos, steps1, steps2):
    playerPos += int(steps1 + steps2)
    playerPos = min(99, playerPos)
    return playerPos
