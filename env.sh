export EDITOR="vim"
pathprepend $HOME/bin

if [ ! -d $HOME/bin ]; then
	mkdir $HOME/bin
fi

if [ ! -e $HOME/bin/powerline-shell.py ]; then
	ln -sf $HOME/linux/powerline-shell/powerline-shell.py $HOME/bin
fi

function _update_ps1() {
    PS1="$(powerline-shell $?)"
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi