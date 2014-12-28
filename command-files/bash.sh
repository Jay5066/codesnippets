
// ~ exppansion 
//Go to previous dir 
	~- 

// {brace exppansion} 
touch {apple,banana, etc}

// brace interpolation

touch file_{1..1000}, //Creates 1000 new files. 
touch file_{01..1000}, //Creates 1000 files sort 
touch file_{01..1000..2} //Creates 1000 files with range of 2
touch {apple,banana,cherry,during}_{01..100}{w..d}

//Count number if files in current dir 
ls -l | wc -l 

// Remove multiple files at once. 
find . -type f -name '*[a-z]_[0-9]*' -delete //Find and delete command. 

//Piping commands 
alias | grep --color=auto vagrant
export GREP_OPTIONS='--color=auto'

// grep and awk 
grep -v -i client mysite-error.log | awk {'print $1'}