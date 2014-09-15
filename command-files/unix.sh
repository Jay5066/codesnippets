#---------------------------------------------------------------------------------------

### UNIX COMMANDS ###

$PATH #Path to executables
$HOME #Users home dir.

# Make multy layer file forlder. command line
mkdir -p myProject/{src,doc/{api,system},tools,db}

# Set prompt (PS1) to display time/dir on load & more.
export PS1 = "Whatevet you want to see on prompt" 
#Move everything from current dir to up ../
mv * .[^.]* ../  

## Create hard link (don't break if the file is delited.[another ref to the same file storage.])
ln name-of-file link-name

## Untar command 
tar -xvzf filename.tar.gz

## Create Hard link 
ln -s name-of-file link-name

## Find files (man file for more...) 
find path expression
find ~/Documetns -name "someimage.jpg"
find ~/Documents/sites/ -name "index.html"

## Wildcard chars * , ? , [] 
find ~/Documents/sites/ -name "index.???"
find ~/Documents/sites/ -name "*.htm"
find ~/Documents/sites/ -name "index[123].html"

## Change file owner 
chown user:group filename 

## Change file modes or Access Control Lists
chmod (u{user},g{group},o{owner}), (r{read},w{write},x{execute}) 
chmod u=wrx,g=rx,o=x finalename.txt 
chmod a=rwx #(all u,g,o)

## Unix Sudo & Sudoers file.
sudo -u root whoami (switch user) 
sudo cat /etc/Sudoers #sudo config file location 

# Find more about the given command. 
whereis echo #Program-name
which echo  #Program-name
whatis ls  #program-name

# Display info about this machine.
uname -ap

# Current Disck info e.g. df=>disk-free 
df 
df -h #humanise. 
df -H #give you actual HD size.

# Current Disck uses. du=>disk-uses
du path-to-file 
du -h path-to-file #human readable option
du -ah path-to-file #all files | human readable option
du -hd 1 path-to-file # Go only one level down 

## Current bg running process command ps=>process-status 
 
# Display list of all current processes 
ps aux 
# List top processes realtime. 
top 
#number of process 
top -n 10 #shows number of current running processes
top -n 20 -o cpu -s 3 -U jay # Disply top 20 process by jay filter by option CPU every 3 sec. 

#Kill any process 
kill process-ID
kill -9 process-ID #force kill any-process.

#Word cound out=>line, word , chars  
wc file.txt 

## Working with text file. 
sort filename.txt
uniq filename.txt 


## Inpout & output
echo "Hello" > index.php ## Instade of outputting to screen write to index.php 

## join two files
oldfile.txt newfile.txt > joined.txt ## Join two files together 
mysql -uroot -proot dbname.sql > mysql.sql

## Appand to existing file (To the end)
oldfile.txt newfile.txt >> joined.txt ## to appand use >> end of the line. 

## To pass content into 'command' use '<'
wc < passthis.txt;

# Both inut,output
bc < math.txt > outputmath.txt ## command < inputfile > outputfile. 

# Piping commands together
cat file.txt | sort | uniq 
# Pipe; chain commands together & output to file 
cat file.txt | sort | uniq > outputfile.txt  


### POWER UNIX COMMANDS ###

## Searching Grep (find) 
Grep sting filename. 

## Translate
tr 

## SED (search and replace etc) 
echo "upstream" | sed 's/up/down/'

## Cut command '-c -> chars' 
cut -c 2-10 filename.txt

## Diff 
diff file-one.txt file-two.txt

## xargs
xargs ## command


## MAC ONLY COMMAND FOR UNIX 

# open file,applicaltion,url etc 
open -a applcation-name
open http://google.com
open thisfile.txt #set default text-editor 

# copy and past (clipboard=find,)
pbcopy < filename.txt #addds to clipboard 
pbpaste > filename.txt #past to filename.txt

## Switch clipboard to juggle data. 
echo "First" | pbcopy -pboard general 
echo "Second" | pbcopy -pboard find 

## Screen-capture command 
screencapture #command 
screencapture ~/Desktop/screencapture.png

## Shutdown, sleep and reboot (-h,-r,-s) in time 
sudo shutdown -h now # shotdown now 
sudo shutdown -r +45 # reboot in 45m
sudo shutdown -r # reboot in given date e.g. yymmddhhmm 

## Text to speech command 
say "Unix is awesome."
say "Unix is awesome" -v Zarvox 

## Find file metadata using mdfind 
mdfind "metadata-tearm"
mdfind -onlyin FILEPATH "metadata-tearm" # Find 'metadate-tearm in given FILEPATH
mdfind -onlyin FILEPATH -interpret "metadata-tearm -new" # exclude tearn'new' 

# Metadata listing (Peek into the files metadata.)
mdls FILENAME # View FILE metadata 
 
## Apple scripts and unix (filename.scpt) 
osascript -e 'set volume output muted true' # Set volume to mute 
osascript -e 'set volume output muted false' # to false
osascript -e 'tell application "Finder" to display dialog "Hello"' # Command appalications to do things. 

## Read/Write System config files (filename.plist) command:defaults
defaults read <domain> <key> # read only path=usr/Library/Preference/
defaults write <domain> <key> <value> 

#SCP 
scp -P 2600 -r jachand@54.243.142.220:/home/cdietz/jay-private-work-files .





