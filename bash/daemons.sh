# DAEMONS

start() {
    for arg in $*
    do
        sudo /etc/rc.d/$arg start
    done
}
stop() {
    for arg in $*
    do
        sudo /etc/rc.d/$arg stop
    done
}
restart() {
    for arg in $*
    do
        sudo /etc/rc.d/$arg restart
    done
}
reload() {
    for arg in $*
    do
        sudo /etc/rc.d/$arg reload
    done
}
