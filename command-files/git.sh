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
# Number of files chanaged 
git diff --stat  

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

## Track new branch upstream. 
git push -u origin dev
# Checkout and track branch from repo e.g. dev/prod etc 
git checkout -b dev origin/dev

## Working with untracked branches ##
git branch --set-upstrem dev origin/dev

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
