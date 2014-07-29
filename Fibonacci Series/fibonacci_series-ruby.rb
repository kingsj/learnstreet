# This function accepts two arguments – n, thresh
# It calculates the 'n'th fibonacci number,
# and the ration between successive fibonacci numbers
# It stops computing fibonacci numbers if the ratio
# is almost equal to the golden ratio. The required
# closeness to the golden ratio is 

def fibRatio(n, thresh)
    a, b = 0, 1
    ctr = 2
    goal = 1.6180339887
    ratio = 0.0
    while (ctr < n && ((goal-ratio).abs >= thresh)) do
        ctr += 1
        temp = b
        b= a + b
        a = temp
        ratio =b.to_i / a.to_f
    end
    return [ctr, ratio , a, b]
end

# Glue : this function reads a string from the input text box
#  and parses the string as arguments for running the fibonacci
#  function. Then it prepares for showing the output
# Feel free to change and see what happens! This is not tested!
def  run(text)
    outtext = "(Term Number, Ratio, (N-1)th Number, Nth number)<br>"
    input = text.split(",")
    result =[]
    i = 0
    while i < input.length do
        s = input[i]
        args = s.split(' ')
        result=((fibRatio(args[0].to_i, args[1].to_f)))
        outtext += result[0].to_s + ',' + result[1].to_s + ',' + result[2].to_s  + ',' + result[3].to_s + "<br>"
        i += 1
    end
    return outtext
end