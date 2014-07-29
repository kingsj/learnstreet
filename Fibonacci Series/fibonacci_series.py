# This function accepts two arguments – n, thresh
# It calculates the 'n'th fibonacci number,
#  and the ration between successive fibonacci numbers
# It stops computing fibonacci numbers if the ratio
#  is almost equal to the golden ratio. The required
#  closeness to the golden ratio is 

def fibRatio(n, thresh):
    a, b = 0, 1
    ctr = 2
    goal = 1.6180339887
    ratio = 0.0
    while (ctr < n and abs(goal-ratio)>=thresh):
        ctr +=1
        a, b = b, a + b
        ratio = float(b)/float(a)
    return (ctr, ratio, a, b)

# Glue : this function reads a string from the input text box
#  and parses the string as arguments for running the fibonacci
#  function. Then it prepares for showing the output
# Feel free to change and see what happens! This is not tested!
def run(text):
    outtext = "(Term Number, Ratio, (N-1)th Number, Nth number)<br>"
    for s in text.split(','):
        args = s.strip().split(' ')
        result = fibRatio(int(args[0]), float(args[1]))
        outtext += str(result) + "<br>"
    return outtext