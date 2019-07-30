#!/bin/bash

# short trace
#
#sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -m "[1:3].0, [2:4].1"  -s 0:data/merge-certs.pcap
#sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -m "[1:3].0, [2:4].1"  -s 0:data/merge-fix.pcap
#sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -m "[1:3].0, [2:4].1"  -s 0:data/linux02-cert.pcap
#sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -m "[1:3].0, [2:4].1"  -s 0:data/linux02-slice.pcap
#sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -T -m "[1:3].0, [2:4].1"  -s 0:data/very-small.pcap
#sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -T -m "[1:3].0, [2:4].1"  -s 0:data/very-very-small.pcap

# invalid cert traces
#
#sudo -E app/x86_64-native-linuxapp-gcc/pktgen  -l 0-4 -n 3 -- -P -T -m "[1:3].0, [2:4].1"  -s 0:data/badssl-cap.pcap
#sudo -E app/x86_64-native-linuxapp-gcc/pktgen  -l 0-4 -n 3 -- -P -T -m "[1:3].0, [2:4].1"  -s 0:data/badssl-trace1.pcap
#sudo -E app/x86_64-native-linuxapp-gcc/pktgen  -l 0-4 -n 3 -- -P -T -m "[1:3].0, [2:4].1"  -s 0:data/badssl-trace2.pcap

# large trace
# -----------
#
# all with wrong MTU???
#
#sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -T -m "[1:3].0, [2:4].1"  -s 0:large-traces/top500-trace1.pcap
#sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -T -m "[1:3].0, [2:4].1"  -s 0:large-traces/top500-trace2.pcap # wrong MTU

# Working large trace (first part)
# 382 M
sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -T -m "[1:3].0, [2:4].1"  -s 0:large-traces/huge-trace.pcap
# 131 M
#sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -T -m "[1:3].0, [2:4].1"  -s 0:large-traces/part1-huge-trace.pcap
# 42 M
#sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -T -m "[1:3].0, [2:4].1"  -s 0:large-traces/fiftyk.pcap
