
#!/bin/bash
sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -N -T -m "[1:3].0, [2:4].1"  -s 0:/home/jethros/traces/p2p-small-re.pcap
# sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -N -T -m "[1:3].0, [2:4].1"  -s 0:/home/jethros/traces/rdr-trace-re.pcap
# sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -N -T -m "[1:3].0, [2:4].1"  -s 0:/home/jethros/traces/video_trace_2_re.pcap
# sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -N -T -m "[1:3].0, [2:4].1"  -s 0:/home/jethros/traces/tls_handshake_trace.pcap


# ===================================================================================================
# sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -N -T -m "[1:3].0, [2:4].1"  -s 0:/home/jethros/traces/rdr-browsing-re.pcap


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

# Only TCP packet
# sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -N -T -m "[1:3].0, [2:4].1"  -s 0:large-traces/huge-trace-only-tcp-2.pcap
# sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -N -T -m "[1:3].0, [2:4].1"  -s 0:~/traces/tls_handshake_trace.pcap
# sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -N -T -m "[1:3].0, [2:4].1"  -s 0:/home/jethros/traces/p2p-small.pcap

# sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -N -T -m "[1:3].0, [2:4].1"  -s 0:/home/jethros/traces/net-2009-11-23-16:54-re.pcap
# sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -N -T -m "[1:3].0, [2:4].1"  -s 0:/home/jethros/traces/net-2009-12-07-11:59-re.pcap
# sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -N -T -m "[1:3].0, [2:4].1"  -s 0:/home/jethros/traces/net-2009-12-08-11:59-re.pcap
# sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -N -T -m "[1:3].0, [2:4].1"  -s 0:/home/jethros/traces/ictf2010-0-re.pcap
# sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -N -T -m "[1:3].0, [2:4].1"  -s 0:/home/jethros/traces/ictf2010-1-re.pcap
# sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -N -T -m "[1:3].0, [2:4].1"  -s 0:/home/jethros/traces/ictf2010-10-re.pcap
# sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -N -T -m "[1:3].0, [2:4].1"  -s 0:/home/jethros/traces/ictf2010-11-re.pcap
# sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -N -T -m "[1:3].0, [2:4].1"  -s 0:/home/jethros/traces/ictf2010-12-re.pcap
# sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -P -N -T -m "[1:3].0, [2:4].1"  -s 0:/home/jethros/traces/ictf2010-13-re.pcap



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
