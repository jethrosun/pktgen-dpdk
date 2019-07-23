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
#
sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -T -m "[1:3].0, [2:4].1"  -s 0:large-traces/top500-trace2.pcap
#sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -T -m "[1:3].0, [2:4].1"  -s 0:large-traces/low-frac.pcap
