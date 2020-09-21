which gpg > /dev/null

if [ $? -eq 0 ]; then
    # Enable gpg-agent if it is not running
    export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
    gpgconf --launch gpg-agent

    gpg-connect-agent updatestartuptty /bye > /dev/null
fi

# Editor exports
which emacs > /dev/null

if [ $? -eq 0 ]; then
    export EDITOR=$(which emacs)
fi