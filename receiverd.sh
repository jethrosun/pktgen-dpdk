#!/bin/bash

set -euo pipefail

PKTGEN_DIR=~/dev/pktgen-dpdk/

CMD=${1:-}


function app_echo
{
    local msg=${1:-}
    echo "RECEIVERD.SH: $msg"
}


function print_usage_then_die
{
    app_echo "Usage: $0 <start|stop|restart>"
    exit 1
}


[[ -z "$CMD" ]] && print_usage_then_die


cd $PKTGEN_DIR


function stop_receiverd
{
    (test -e /var/run/pktgen.pid && kill -INT $(cat /var/run/pktgen.pid) && app_echo "Old job is killed") || app_echo "WARN: no running receiverd"
    rm -f /var/run/pktgen.pid
}


function start_receiverd
{
    spawn ./app/x86_64-native-linuxapp-gcc/pktgen -c 0x0e -- -c config -f rx > /var/log/pktgen_rx.log 2>&1 & \
        echo -n $! > /var/run/pktgen.pid
    app_echo "Sleep for 10s to wait for receiverd becoming ready" && sleep 10
    app_echo "New job is running by pid $(cat /var/run/pktgen.pid)"
}

case $CMD in
    start)
        start_receiverd
        ;;
    stop)
        stop_receiverd
        ;;
    restart)
        stop_receiverd
        start_receiverd
        ;;
    *)
        print_usage_then_die
        ;;
esac

exit 0
