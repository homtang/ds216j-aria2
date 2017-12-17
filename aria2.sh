#!/bin/sh
#
# Put this file in /usr/local/etc/rc.d/aria2.sh
 
case "$1" in
 
stop)
    echo "Stop Aria2..."
    kill "`pidof aria2c`"
    kill "`pidof aria2c`"
    ;;
start)
    /opt/bin/aria2c --conf-path=/opt/etc/aria2/aria2.conf -D
    ;;
restart)
    $0 stop
    sleep 1
    $0 start
    ;;  
status)
    ps | grep aria2c | grep -v grep
    return $?
    ;;
*)
    echo "usage: $0 { start | stop | restart | status}" >&2
        exit 1
        ;;
esac