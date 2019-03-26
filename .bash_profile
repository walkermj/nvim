# added by Anaconda3 5.0.1 installer export PATH="/Users/michaelwalker/anaconda3/bin:$PATH" ## Your previous /Users/michaelwalker/.bash_profile file was backed up as /Users/michaelwalker/.bash_profile.macports-saved_2017-11-23_at_10:29:58 ## MacPorts Installer addition on 2017-11-23_at_10:29:58: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

#-------------------------
#-- FOLDER ALIASES
#-------------------------

#-- alias to go straight to projects folder
alias proj="cd ~/Documents/Projects/"

#-- alias to go straight to scratch folder
alias scratch="cd ~/Documents/Scratch/"

#-- alias to go straight to CAMQ folder
alias camq="cd ~/Documents/Projects/MQ-CA/ca-megaquery/"

#-------------------------
#-- EXECUTABLE ALIASES
#-------------------------
# pgfutter ='~/pgfutter'

# Alias python command so that python 3 is used instead of 2.7
# alias python=python3

# Alias to run Pentaho Kettle from commandline
alias spoon="sh /usr/local/Caskroom/data-integration/8.1.0.0-365/data-integration/spoon.sh"

#alias to run Simons two sets executable
alias 2sets="~/twosets_v1"

#-------------------------
#-- SSH ALIASES
#-------------------------

# Alias to connect directly to ddfref
# alias ddfref="bash ~/ssh_connections/ddfRefConnect/ddfRef_ssh.sh"

#--alias to connect to jumpbox
alias jbx="ssh -L 2224:cln-reference-ddf-etl-01.gel.zone:22 mwalker@10.3.0.50"

#--alias to tunnel to ddf ref environent
alias ref="ssh -L 5434:10.1.24.3:5432 -L 5435:127.0.0.1:5432 -L 2700:127.0.0.1:2700 mwalker@127.0.0.1 -p 2224"

#-- alias to tunnel to dams db copy
alias dams="ssh -L 5438:10.1.24.33:5432 mwalker@10.1.24.38"

#-- alias to tunnel to ddf Prod db copy
alias ddfprod="ssh -L 5439:10.1.24.34:5432 mwalker@10.1.24.38"

#-- alias to tunnel to mis db copy
alias mis="ssh -L 5440:10.1.24.37:5432 mwalker@10.1.24.38"

#-- alias to connect to query dev box
alias qry="ssh mwalker@10.1.24.38"

#-- alias to connect to index dev box
alias index="ssh mwalker@10.1.24.39"

#-- alias to tunnel to index dev box (for when using CDT db locally)
alias cdt_db="ssh -L  5441:localhost:5433 mwalker@10.1.24.39"

alias ngis_uat="ssh -L 5444:10.252.0.155:15432 mwalker@10.5.8.31 "

####################################################################
# -- TO CHANGE ITERM2 COLOUR WHEN CONNECTED VIA SSH TO REMOTE SERVER
####################################################################

function tabc() {
  NAME=$1; if [ -z "$NAME" ]; then NAME="Default"; fi # if you have trouble with this, change
                                                      # "Default" to the name of your default theme
  echo -e "\033]50;SetProfile=$NAME\a"
}

function colorssh() {
  tabc SSH
  ssh $*
  tabc
}

alias ssh="colorssh"
