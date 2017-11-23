alias h         history 2500
alias j         jobs -l
alias la        ls -a
alias lf        ls -FA
alias ll        ls -lA
# A righteous umask
umask 22
export EDITOR=emacs
export PAGER=less
export BLOCKSIZE=K
export MAKEOBJDIRPREFIX=$HOME/devel/build
#export MAKEOBJDIRPREFIX=$HOME/devel-local/build
	
path=(/sbin /bin $HOME/.bin /usr/sbin /usr/bin /usr/games /usr/local/sbin /usr/local/bin /usr/X11R6/bin $HOME/bin $HOME/.bin /usr/local/openjdk8/bin $HOME/.cargo/bin $HOME/go/bin )


  case $TERM in
      xterm*)
          precmd () {print -Pn "\e]0;%n@%m: %~\a"}
          ;;
  esac
  PS1="%n@%m [%~|%T|%h] "

export EDITOR="emacs -nw"
export XTERM_SHELL=/usr/local/bin/zsh
eval "$(direnv hook zsh)"
