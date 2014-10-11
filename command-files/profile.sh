
## update path variable 
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"

## setup common command alias 
alias ll="ls -lahG"
alias home="cd ~"
alias up="cd .."
alias h="history"
alias src="source"
alias opens="open -a Sublime\ Text.app"

# make comman commands interactive with '-i flag' 
alias mv="mv -i"
alias cp="cp -i"
alias rm="rm -i"
alias df="df -i"
alias du="du -i"
alias mkdir="mkdir -p"

##Titanium commands 
alias tbi='ti build --platform iphone --target device --deploy-type development'
alias tib='ti build -p ios -D development  --sim-64bit '
## server alias 
alias k12jump='ssh jachand@10.40.9.78'
alias aws_prod='ssh -p 2600 jachand@54.243.142.220'
alias aws_dev='ssh -p 2600 jachand@54.221.207.112'
alias acquia_dev='ssh k12sites@staging-2083.prod.hosting.acquia.com'
alias acquia_prod='ssh k12sites@ded-2873.prod.hosting.acquia.com'
alias cdevbox="ssh jachand@c-dev-mrkt1.k12.com"
alias cbups="ssh jachand@c-dev-mrkt1.k12.com"

## Rsync 
alias mod-rsync='rsync -a ~/Documents/sites/dev/mod-build/ ~/Documents/sites/dev/mod'
  
#local work dir alias. 
alias sand="cd ~/Documents/sites/sandbox "
alias dev="cd ~/Documents/sites/dev"
alias vsand="cd ~/Documents/sites/vsand"
alias snip="cd ~/Documents/sites/sandbox/refrences/doc/codesnippets/command-files"

#Vagrant commands  
alias v="vagrant" 
alias vs="vagrant status"
alias vu="vagrant up"
alias vd="vagrant destroy -f"
alias vgs="vagrant global-status"
source ~/.git-prompt.sh

# Configure prompt
#PS1='$(__git_ps1 "(%s)") \u\$ > '
PS1='\u\[\e[33m\]$(__git_ps1 "(%s)")\[\e[0m\]\[\e[32m\][\W]\[\e[0m\]$ ' 
# load Git auto-completion script 
if [ -f ~/.git-completion.bash ]
then
   #echo " This is working " 
   source ~/.git-completion.bash 	
fi
 




