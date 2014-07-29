// This function tests a character to see if it is a separator between words.
// It returns true if the character is a separator, false otherwise.
function isSeparator(ch)
    {
     if ( ch==" " || ch=="," || ch=="." || ch=="!" || ch=="?" )
        {
        return true;
        }
    else
        {
        return false;
        }
    }

// This function tests a character to see if is an alphabet, digit or general things which are parts of words
// It returns true if the character is a typical part of word, false otherwise.
function isPartOfWord(ch)
    {
        if ( (ch >= 'A' && ch <= 'Z') || (ch >= 'a' && ch <= 'z') || (ch >= '0' && ch <= '9') )
        {
        return true;
        }
    else
        {
        return false;
        }
	}
// This function takes a string text as input and returns a collection of words as output. From this collection of words, the number of words are displayed automatically.
function countWords(text)
    {
        var len = text.length;

    var wordCount = 0;

    var words = [];

    var pos = 0;

    var inGap = true;

    while (pos < len)

        {

        var ch = text[pos];

        if (isPartOfWord(ch))

            {

            if (inGap)

                {

                wordCount += 1;

                words.push("");

                }

            inGap = false

            words[(wordCount-1)] += ch;

            }

        else if (isSeparator(ch))

            {

            inGap = true;

            }

        pos += 1;

        }

    return words;
	}
