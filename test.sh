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

# For TLS certificate validator (DO NOT TOUCH)
# Working large trace (first part)
# 382 M
# sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -N -T -m "[1:3].0, [2:4].1"  -s 0:large-traces/huge-trace.pcap
# sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -N -T -m "[1:3].0, [2:4].1"  -s 0:large-traces/huge-trace-only-tcp.pcap
# 131 M
# sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -T -m "[1:3].0, [2:4].1"  -s 0:large-traces/part1-huge-trace.pcap
# 42 M
#sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -T -m "[1:3].0, [2:4].1"  -s 0:large-traces/fiftyk.pcap


# For RDR proxy
#
## Working trace
# sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -T -m "[1:3].0, [2:4].1"  -s 0:data/http500-trace.pcap
# broken trace
# sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -T -m "[1:3].0, [2:4].1"  -s 0:data/test-trace.pcap

sudo -E app/x86_64-native-linuxapp-gcc/pktgen -c 0xff -n 4 -- -P -m "[1:2].0, [3:4].1" -T
rc=$?; if [[ $rc == 0 ]]; then reset; fi
