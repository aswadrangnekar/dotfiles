DF_HOME=$HOME/dotfiles

# default python to python3
alias python='python3'

# powerline
# ref: https://fedoramagazine.org/add-power-terminal-powerline/
if [ -f `which powerline-daemon` ]; then
  if [ ! -d $HOME/.config/powerline ]; then
    mkdir $HOME/.config/powerline
    if [ ! -f $HOME/.config/powerline/config.json ]; then
      cp $DF_HOME/.config/powerline/config.json $HOME/.config/powerline/config.json
    fi
  fi
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bindings/bash/powerline.sh
fi

# git powerline
#if [ -f $DF_HOME/.bash-powerline.sh ]; then
#  . $DF_HOME/.git-powerline.sh
#fi
