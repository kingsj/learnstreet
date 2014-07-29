# Give a string containing
# "gaga.mp3, 4500; photo1.jpg, 309; lata.mp3, 9400; photo4.jpg, 384;
# windows.swp, 13100"
# It should split the string at ',' and ';' and return a collection
# of extensions and file-sizen like:
# [ ('mp3', ' 4500'), ('jpg, ' 309'), ('mp3', ' 9400') .... ]
def extract_fields(text)
    s = []
    s = []
    for f in text.split(";")
        fname = f.split(",")
        ext = fname[0].split(".").pop()
        size = fname[1].to_i
        s.push([ext, size])
    end
    return s
end

# Given the collection returned from the above function, this function
#  returns a dictionary with extensions as the key and total cumulative
#  file sizes as the value
def cumulative_sizes(fls)
    lst = {}
    lst = {}
    for fl in fls
        if lst.has_key?(fl[0])
            lst[fl[0]] += fl[1]
        else
            lst[fl[0]] = fl[1]
        end
    end
	return lst
end
    
# Given a dictionary with extensions as the key and total sizes as value
#  this function sorts them in descending order and returns a string with
#  HTML tags. The format for HTML tags is
#  <table><tr><td>EXTENSION</td><td>SIZE</td></tr></table>
def print_sorted_table(lst)
	outstring = ""
    outstring = ""
    lst = lst.sort_by {|_key, value| value}.reverse
    for l in lst
        outstring += l[0] + ": => " + l[1].to_s + "<br>"
    end
	return outstring
end
    
# This function manages the entire flow of execution
#  It recieves a string and returns another string containing an HTML
#  formatted 2-column table with the file extensions and file sizes,
#  sorted in descending order.
def run(s)
    return print_sorted_table(cumulative_sizes(extract_fields(s)))
end