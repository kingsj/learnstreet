# Give a string containing
#  "gaga.mp3, 4500; photo1.jpg, 309; lata.mp3, 9400; photo4.jpg, 384;
#   windows.swp, 13100"
#  It should split the string at ',' and ';' and return a collection
#  of extensions and file-sizen like:
#  [ ('mp3', ' 4500'), ('jpg, ' 309'), ('mp3', ' 9400') .... ]
def extractFields(text):
    s = []
    for f in text.split(";"):
        [fname, size] = f.split(",")
        size = int(size)
        ext = fname.split(".")[1]
        s.append((ext, size))
    return s

# Given the collection returned from the above function, this function
#  returns a dictionary with extensions as the key and total cumulative
#  file sizes as the value
def cumulativeSizes(fls):
    lst = {}
    for fl in fls:
        if fl[0] in lst:
            lst[fl[0]] += int(fl[1])
        else:
            lst[fl[0]] = int(fl[1])
    return lst
    
# Given a dictionary with extensions as the key and total sizes as value
#  this function sorts them in descending order and returns a string with
#  HTML tags. The format for HTML tags is
#  <table><tr><td>EXTENSION</td><td>SIZE</td></tr></table>
def printSortedTable(lst):
    outstring = ""
    for w in sorted(lst, key=lst.get, reverse=True):
        outstring += w + ": => " + str(lst[w]) + "<br>"
    return outstring
    
# This function manages the entire flow of execution
#  It recieves a string and returns another string containing an HTML
#  formatted 2-column table with the file extensions and file sizes,
#  sorted in descending order.
def run(s):
    return printSortedTable(cumulativeSizes(extractFields(s)))