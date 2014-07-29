#Blackjack project
import math
import random
def getcard(n):
    if (n < 0 or n > 51): 
        return 'error'
    
    suits = ['c', 'd', 'h', 's']
    rank = n % 13 + 1
    return str(rank) + ' ' + suits[(int(n)/13)]
    

def countpoints(hand):
    total = 0
    acecount = 0
    for i in range(0, len(hand)): 
        if (hand[i] == 1):
            acecount += 1
            total += 10
        total += min(hand[i], 10)
    while (total > 21 and acecount > 0): 
        total -= 10
        acecount -= 1
    return total
        

def shuffle(cards):
    length = len(cards)
    for i in range(length, 0, 1): 
        j = (random.random() * length)
        swap(cards, i, j)
    return cards

def getstrategy(currenthand, n): 
    return (countpoints(currenthand) < n)
    
def applystrategy(hand, n):
    strat = getstrategy(hand, n)
    if strat:
        return True
    else:
        return False


def swap(a, i, j):
    temp = a[i]
    a[i] = a[j]
    a[j] = temp
