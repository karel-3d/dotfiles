export PS1="m | \t | \w\$ ";

myHistory() {
    history 1 | awk '($2 !~ "^[mr]?cd[0-9a-z]?$") {$1="_T="strftime("%Y%m%d_%H:%M:%S_") PROCINFO["ppid"] "_PWD="  ENVIRON["PWD"] "\t"; $2=gensub("^_T=[-_0-9:]*[ \t]* *", "", 1, $2); $2=gensub("^_P=[^ \t]* *", "", 1, $2); print;}' >> ~/.complex_bash_history
}
export PROMPT_COMMAND="myHistory"
alias ahis='less ~/.complex_bash_history'
alias lhis='grep "_PWD=$PWD\s" ~/.complex_bash_history | less'

if [ -d ~/asidecrypt/bezi ]  ; then
    echo "Encryption running"
else
    echo "run encfs --standard --extpass=/Users/karel/dev/python-trezor/tools/encfs_aes_getpass.py ~/Dropbox/encrypt ~/asidecrypt/"
fi


alias srv='http-server -p'
alias srvs='http-server -S -C ~/cert.pem -K ~/key.pem -p'

PATH="$PATH:/home/peepee/flow/flow/bin"
alias tb="nc termbin.com 9999"

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH="$PATH:$GOROOT/bin:$GOPATH/bin:$HOME/gcc-arm-none-eabi-7-2017-q4-major/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ -s "/Users/karel/.gvm/scripts/gvm" ]] && source "/Users/karel/.gvm/scripts/gvm"
