### Set env variables
export GOPATH="/Users/jheitz200/code/go"
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/git/bin:/usr/local/go/bin:$GOPATH/bin:$HOME/code/go/src/github.com/jheitz200/traffic_control/traffic_ops/app/local/bin:$PATH"
export PERL5LIB=/Users/jheitz200/code/go/src/github.com/jheitz200/misc/traffic_ops_extensions/lib:/Users/jheitz200/code/go/src/github.com/jheitz200/traffic_control/traffic_ops/app/lib:/Users/jheitz200/code/go/src/github.com/jheitz200/traffic_control/traffic_ops/app/local/lib/perl5
export PGDATA=/usr/local/var/postgres

### Set aliases
alias e='subl . &'
alias ls='ls -G'

### Appends to the bash_perm_hist files
function zshaddhistory() {
    TODAYS_MONTH=`expr \`date +%m\` `
    TODAYS_DAY=`expr \`date +%d\` `
    TODAYS_YEAR=`expr \`date +%Y\` `

    TODAYS_HOUR=`expr \`date +%H\` `
    TODAYS_MIN=`expr \`date +%M\` `
    TODAYS_SECS=`expr \`date +%S\` `
    TODAYS_AM_PM=`expr \`date +%p\` `
    TODAYS_TIME="$TODAYS_MONTH $TODAYS_DAY, $TODAYS_YEAR - $TODAYS_HOUR:$TODAYS_MIN:$TODAYS_SECS $TODAYS_AM_PM"

    mkdir -p ~/bash_perm_hist
    HISTORY_LINE="DATE: $TODAYS_TIME $USER $(history | tail -1)"

    HISTORY_FILE="$HOME/bash_perm_hist/`date +%Y-%m-%d`_history"
    touch $HISTORY_FILE
    echo $HISTORY_LINE >> $HISTORY_FILE
}
