#Basic calculator project
import math
def cube(n):


    return n**3

def squareroot(n):
    if n < 0:
        return "NAN"
    else:
        return math.sqrt(n)

def negate(n):
    return -n

def factorial(n):
    if n ==0:
        return 1
    if n < 0:
        return "NAN"
    return n*factorial(n-1)
