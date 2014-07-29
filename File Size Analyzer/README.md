
Welcome! Here is a File Size Analyzer project I built on LearnStreet's Code Garage using python.
===============================================================================================================

Project description
-------------------------

In this exercise, we will write code to go through a list of file names and sizes, and add them up by extensions. So in a folder full of mp3s, jpgs, ppts and what not, this code will show you the total size taken by the mp3s, the jpgs in descending order – so the largest sizes first.<br>
<br>
In writing this function, we will use several Python string functions to help us write concise and clear code. Unlike some of the word splitting exercises which involved understanding the logic and technique underlying parsing strings and so on, in this exercise, we will learn how to use some of the in-built Python functions to make our task simpler.<br>
<br>
The exercise has the following flow. First, a string 's', entered in the textbox in your browser, is passed to the run() function. We expect this string to be a “;” separated list of file names and file sizes as follows:<br>
<br>
“gotye.mp3, 5609; oscar.jpg, 675; profile_photo.jpg, 890; concert.avi, 131012; …..”<br>
The listing for each file is in the format : &lt;file name&gt;.&lt;file extn&gt;, &lt;file size&gt;<br>
And the listings are separated by a “;”<br>
<br>
This string is passed on to (1) extractFields() to extract the various file extensions and sizes from this string and pass it on to the next function. The sceond function, (2) cumulativeSizes() reads the list of extensions and sizes and adds them up for each category of extensions and passes it on. The final function, (3) printSortedTable() reads this list of extensions categories and total sizes, sorts it in a descending order and prepares a string for displaying the result in a pretty HTML table. This string is returned to the LearnStreet server and we display it below the text box where you enter the file list.<br>
<br>
With that outline, let's get down to writing individual functions! <br>

Try it out!
--------------

Want to see my project for yourself? [Click here](http://www.learnstreet.com//profile/52b0ae3076b99c0379003557?page_name=project)

Check out out more coding projects you can do in LearnStreet's Code Garage
		