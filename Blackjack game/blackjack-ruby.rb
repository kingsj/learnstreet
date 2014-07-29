#Blackjack project
def getcard(n)
    if (n < 0 or n > 51)
        return 'error'
    end
    suits = ['c', 'd', 'h', 's']
    rank = n % 13 + 1
    return rank.to_s + ' ' + suits[(n.to_i/13)]
    
end

def countpoints(hand)
    hand = hand.to_a
    total = 0
    acecount = 0
    for i in 0...hand.length
        if (hand[i] == 1)
            acecount += 1
            total += 10
        end
        total += min(hand[i], 10)
    end
    while (total > 21 and acecount > 0) do
        total -= 10
        acecount -= 1
    end
    return total

end
        

def shuffle(cards)
    length = cards.length
    for i in length..0
        j = (Random.random() * length)
        swap(cards, i, j)
    end
    return cards

end

def getstrategy(currenthand, n)
    n = n.to_i
    val = countpoints(currenthand)
    return (val < n)

end
    
def applystrategy(hand, n)
    strat = getstrategy(hand, n)
    if strat:
        return true
    else
        return false
    end
end

def swap(a, i, j)
    temp = a[i]
    a[i] = a[j]
    a[j] = temp
end

def min(a,b)
    a < b ? a : b
end