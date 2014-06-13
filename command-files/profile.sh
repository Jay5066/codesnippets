#--------------------------------------------------------------------------------------- 

### BASH RELATED CODE ###
# setup .bash_profile
## update path variable 
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
 
## setup common command alias 
alias ll="ls -lahG"
alias home="cd ~"
alias up="cd .."
alias h="history" 

# make comman commands interactive with '-i flag' 
alias mv="mv -i"
alias cp="cp -i"
alias rm="rm -i"
alias df="df -i"
alias du="du -i"
alias mkdir="mkdir -p"
 
# server alias 
alias k12jump='ssh jachand@10.40.9.78'
alias aws='ssh -p 2600 jachand@54.243.142.220'

#local work dir alias. 
alias sand="cd ~/Documents/sites/sandbox "
alias dev="cd ~/Documents/sites/dev"
alias vsand="cd ~/Documents/sites/vsand"

#Vagrant commands  
alias v="vagrant"
alias vs="vagrant status"
alias vu="vagrant up"
alias vd="vagrant destroy -f"

source ~/.git-prompt.sh

# Configure prompt
#PS1='$(__git_ps1 "(%s)") \u\$ > '
PS1='\u\[\e[33m\]$(__git_ps1 "(%s)")\[\e[0m\]\[\e[32m\][\W]\[\e[0m\]$ '

# Configure prompt
PS1="\u$ "

# load Git auto-completion script 
if [ -f ~/.git-completion.bash ]
then
   #echo " This is working " 
   source ~/.git-completion.bash
fi
