
#Applications/MAMP/Library/bin/mysql --host=localhost -uroot -proot 
## Drush Commands ## 

#To turn on JS Aggregation
    drush vset preprocess_js 1 --yes

#To clear all Cache
    drush cc all

#To disable JS Aggregation
   drush vset preprocess_js 0 --yes

#To clear cache of JS and CSS only
   drush cc css+js

#To enable CSS Aggregation
   drush vset preprocess_css 1 --yes

#To disable CSS Aggregation
   drush vset preprocess_css 0 --yes

#---------------------------------------------------------------------------------------

### BASH RELATED CODE ###
# setup .bash_profile 

#This is global install path setup command 
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"

# Setup alias command 	
alias aws='ssh -p 2600 jachand@IP'
alias ll="ls -al"
alias dsw="cd ~/Documents/sites/dev/wys/ "

# Setup user as a starting point on prompt 
PS1="\u$ " #this will give you $username when terminal opens. 

# Add this after installing .git-completeion.bash script from github.
 if [ -f ~/.git-completion.bash ]
 	then
 		#echo " This is working " 
		source ~/.git-completion.bash
  fi

#--------------------------------------------------------------------------------------- 
## VI/VIM RELATED CODE ###

# Configure Vi/Vim for use 
create : cd ~/ vi .vimrc

# Setup vi/VIM for use. 
syntax on
colorscheme desert
:set nu

# Vi
j #move down
k #move up 

#---------------------------------------------------------------------------------------

### GIT RELATED CODE ###

# Setup git for work.    
git config --global #run command  
user.name= Jay Chand 
user.email= jchand5066@gmail.com 
core.editor= vim 
color.ui=true  


# Unstage file 
git reset HEAD index.php

# Git diff staged file 
git diff --staged 

# Git changes/amend receltly committed message or file. only works is this was the last file changed. 
git commit --amend -m "Changed commit message "

#If we need to checkout from older commit use#id 
git checkout 7873920842 filename.php

# git reset back to commit#id 
git reset --soft [commit#id] #this is the safest way to reset.  
git reset --mixed [commit#id] #this is also safe. 
git reset --hard [commit#id] #this is not safe be carefule. 

# clean tracked files ( * This removes all untracked files from our dir USE -n then -f with this command ) 
git clean -n [test] or:w
git clean -f [force]

# Setup global gitignore file. [--global, ]
git config --global core.excludesfile ~/.gitignore_global

# Resource for what should be ignored 
https://github.com/github/gitignore
 
# Reference Commits using ^^ or ~ treeish option ( Tree )
# List all files and folders for given treeish
git ls-tree HEAD
git ls-tree master
git ls-tree HEAD^ folders/ 
git ls-tree HEAD~2 folder/file.txt

# If we need to change current branch name to something else.
gut branch -m oneBranchName newBranchname  

# Delete branch command 
git branch -d thisBranch 
# See which branches have been merged with current git branch
git branch --merged
# List all remote branches 
git branch -r 

# Always display branch you are currently working on. 
__git_ps1 (function)

# Merge chagnes from one branch into another. 
git chekout (branch that we will be merging INTO) e.g. 
git checkout master
git merge newBranch 


# Other Merge Type (Fast-forward, true merge)
### Resolve merge conflict or Abort## 
#Abort 
git merge --abort

## Git stash ##
git stash save "Just stashing this change"
#List list of stash changes. 
git stash list
#Show as a patch. 
git stash show -p stash@{0}
#Apply stashed changes and remove from stash 
git stash pop
#Apply stashed changes and leave as is within stash.  
git stash apply
#Clear all stashed changes. 
git stash clear

## Working Remotely ##
## Use hub to create repo and more .. 
## Install hub if you have Home-brew installed 

#run brew install hub 

# hub init 
# hub create 
# else }

## Create new repo ## 
git remote add origin <git-repo>
git commit -u origin/master etc. 

## Collaborate ## 
git clone <Path to git-repo>

## Working with untracked branches ##
git branch --set-upstrem dev origin/dev
## Track new branch upstream. 
git push -u origin dev
# Checkout and track branch from repo e.g. dev/prod etc 
git checkout -b dev origin/dev
# Deleting branch from remote * not from local *
git push orign :dev 
or 
git push --delete dev 


## Fetch changes from remote. 
git fetch 
git merge

## Create git alies 
git config --global alias.st "status"
git config --global alias.log "log --graph --decorate --oneline --abbrev-commit --all"

# Caching git user and password 
# or 
# use ssh-key

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




