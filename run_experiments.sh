#!/bin/bash

# --------------------------
#
## Make everything in ordr
#
# --------------------------


## Get current date and time

# put current date as yyyy-mm-dd in $date
# -1 -> explicit current date, bash >=4.3 defaults to current time if not provided
# -2 -> start time for shell
# printf -v date '%(%Y-%m-%d)T\n' -1

# put current date as yyyy-mm-dd HH:MM:SS in $date
printf -v date '%(%Y-%m-%d_%H:%M:%S)T\n' -1
echo $date

## Define the traces we will be using

TRACE_NAME="TLS"

if [ "$TRACE_NAME" == "ICTF" ]
then
    RUNNING_TRACE="large-traces/huge-trace.pcap"
elif [ "$TRACE_NAME" == "M57" ]
then
    RUNNING_TRACE="large-traces/huge-trace.pcap"
elif [ "$TRACE_NAME" == "TLS" ]
then
    RUNNING_TRACE="large-traces/huge-trace.pcap"
elif [ "$TRACE_NAME" == "HTTP" ]
then
    RUNNING_TRACE="data/http500-trace.pcap"
elif [ "$TRACE_NAME" == "P2P" ]
then
    RUNNING_TRACE="large-traces/huge-trace.pcap"
else
    echo "We haven't defined the trace"
fi
echo $RUNNING_TRACE

# If we want to define a cmd file: https://pktgen-dpdk.readthedocs.io/en/latest/scripts.html#scripts
CMD_FILE="command"
LOG_DIR=$(printf "results/%s" "$date")
echo $LOG_DIR


## The magic command

for i in {1..2}
do
    echo "This is the $i run"
    LOG_FILE=$(printf "%s--%s_run%s.log" "$LOG_DIR" "$TRACE_NAME" "$i")
    echo $LOG_FILE
    echo $RUNNING_TRACE
    echo  $LOG_FILE

    sudo -E app/x86_64-native-linuxapp-gcc/pktgen \
        -l 0-4 -n 3 -- \
        -P -N -T -m "[1:3].0, [2:4].1" \
        -s 0:$RUNNING_TRACE \
        -l $LOG_FILE

done
