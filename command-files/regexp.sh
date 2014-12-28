//Using Regular Expression

// g/searchTerm/p

g/ = modifier (global) 
p/ = print (output)

//Regexp meta characters 
. = wildcard ( Matches any character except newline.)
\ = backslash (Escape Metacharacters.) e.g. [inde.\.html]
[] = OpenBraces (Match anyone of several characters,but only one character.)
	e.g.
		/[aeiou]/ = Match any character inside [].
		/c[aeiou]t/ = matches cat,cet,cit etc.   

//Character Ranges 
[0-9] = range (Starting at 0 ending at 9)
[a-z],
[A-Za-z],
[a-ek-ou-y]

//Negative character set
^ = Negate a character set. 
	e.g. 
		/[^aeiou]/ = matches any one consonant(not-vowel)
		/see[^mn]/ = marches "seek" and "sees" but not seem. 

//Shorthand Characters 
\d = Digit [0-9]  
\w = Word Characters [a-zA-Z0-9_]
\s = Whitespace  [ \t\r\n]
\D = Not Digit [^0-9]
\W = Not Word Character [^a-zA-Z0-9_]
\S = Not Whitespace [^ \t\r\n]

//Repetition Metacharacters
* =	Preceding item zero or more times  
+ = Preceding item one more more times
? = Preceding item zero or one times 
	e.g. 
		[a-z+\d[a-z]* -> matches abcd9

//Quantified Repetition
{min,max} = curlybraces 
		 e.g.
		 	\d{4,8} Matches numbers with four to eight digit.
		 	\d{4} Matches numbers with exactly four digit (min is max). 
		 	\d{4,} Matches numbers wiht four or more digits (max is infinite).
		 	\d{3}-\d{3}-\d{4} : Matches 703-166-3439 etc.

//Lazy Expression
*?, +? e.g.
		/.*?[0-9]+/ -> Matches Home 2044

//Grouping Metacharacters
() = Created group 
	e.g. 
		/(abc)+/ Matches "abc" and "abcabcabc".
		/(in)?dependent  

//Alternation Metacharacters
| = Matches previous or next character.This is simply "or".

//Start and End Anchors 
^ = Start of string/line
$ = End of string/line
\A = Start of string, never end of line 
\Z End of string, never end of line 
	e.g.

//Word Boundaries 
\b = Word Boundaries (start/end of workd)
\B = Not Boundaries
	e.g. 
		/\b\w+\b/ finds four matches in "This is a test"
		/\b\w+\b/ matches all of "abc_123" but only paert of "top-gun" etc.

	Not a boundary example:
		/\BThis/ does not match "This is a test".

//Backreferences 
- > Captured grouped expressions. 
 	\1 throught \9
 		e.g. 
 			/(apples) tp \1/ matches "apples" to "apples".
 			/(ab)(cd)(ef)\3\2\1/ matches "abdcefefcdab".  
 			/<(i|em)>.+?</\1>/ matches "<i>Hello</i>" and "<em>Hello</em>"


//Backreferencesnces to optional expressions
Null for now .

//Non-Capturing group expressions
	?: = Specify a Non-Capturing group.
	e.g.
		(?:offers) (help) when (needed)\1  -> offers help when needed "help"

//Positive Lookahead Assertions
?= 	
	e.g.
		/sea(?=house)/ -> seahouse matches "sea"

//Negative Lookahead Assertions
?! 
	e.g.
		/online(?!training)/ does not match "online training".

//Lookbehiend Assertions
?<=
?<!

// Common Regular expressiones
 - > Match names
 	 /^[A-Z[A-Za-z.-]+$/ enable multiline Anchors.
 	 ^([A-Z][A-Za-z.\-]+) (?:([A-Z][A-Za-z.\-]+)) ?([A-Z][A-Za-z.\-]+)$ e.g. George W. Bush
 
 - > Zip code 

 - > Email addresses 
 	 /^[\w.%+\-]+@[\w.\-]+\.[A-Za-z]{2,6}$/
 
 - > Matching URLs
 	/^(?:http|https):\/\/[\w.\-]+(?:\.[\w\-]+)+[\w\-.,@?^=%&:;/~\\+#]+$/

- > Matcing decimal numbers or Currency 
	/^(\$|u00A3|u005)?(\d*\.\d+|\d+)$/

- > Matcing ip addresses (* Needs review)
	^(25[0-5]|[02-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)
	\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$

- > Matcing dates
	^\d{4}[-/](0?[1-9]|1[0-2])[-/](0?[1-9]|[12][0-9]|3[01])$
		e.g.
			2001-11-15
			2000-6-9
			2000-06-09

- > Matching Time 
	/^(0?[1-9]|1[0-2]):[0-5][0-9]([aApP][mM])?$/ (Matches all 24h time)
		e.g.
			2:34
			2:34pm
			2:34PM
			02:34
	
	/([01]?[0-9]|2[0-3]):[0-5][0-9](:[0-5][0-9])?( ([A-Z]{3}|GMT [-+]([0-9]|1[0-2])))?$/ (Matches other time format )
		e.g.
			14:34
			14:34:56
			14:34 EST
			14:34 GMT -5

- > Matching HTML tags 
	/^<(?:([A-Za-z][A-Za-z0-9]*)\b[^>]*>(?:.*?)</\1>|[A-Za-z][A-Za-z0-9]*\b[^>]*/>)$/
		e.g.
			<strong>Bold</strong>
			<em>Emphazied</em>
			<b>Bold</b>
			<i>Italics</i>
			<span id="foo" class="bar">some text</span>
			<hr/>

- > Matching Password
	^(?=.*\d)(?=.*[~!@#$%^&*()_\-+=|\\{}[\]:;<>?/])(?=.*[A-Z])(?=.*[a-z])\S{8,15}$
		e.g.
			sword#42Fish 
//Control character
\t = tab
\r, \n, \r\n = line returns 

