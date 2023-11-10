#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $DISPLAY ]] && shopt -s checkwinsize

#PS1='[\u@\h \W]\$ '
PS1='\[\e[38;5;177m\][\[\e[38;5;38m\]\u\[\e[38;5;105m\]@\[\e[38;5;38m\]\h \[\e[38;5;43m\]\@ \[\e[38;5;214m\]\w\[\e[38;5;177m\]]\[\e[38;5;48m\]\\$ \[\e[0m\]'
export GCM_CREDENTIAL_STORE="secretservice"
case ${TERM} in
  Eterm*|alacritty*|aterm*|foot*|gnome*|konsole*|kterm*|putty*|rxvt*|tmux*|xterm*)
    PROMPT_COMMAND+=('printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"')

    ;;
  screen*)
    PROMPT_COMMAND+=('printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"')
    ;;
esac

if [[ -r /usr/share/bash-completion/bash_completion ]]; then
  . /usr/share/bash-completion/bash_completion
fi
