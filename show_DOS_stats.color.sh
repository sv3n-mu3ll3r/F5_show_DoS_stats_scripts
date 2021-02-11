#!/usr/bin/bash

tmctl -c dos_stat -s context_name,vector_name,attack_detected,stats_rate,drops_rate,int_drops_rate,detection,mitigation_curr,ba_stats_rate,ba_drops_rate,detection_ba,mitigation_ba,bd_stats_rate,bd_drops_rate,detection_bd,mitigation_bd,hw_offload | sed -e 's/ /_/g' | column -s, -t | \
awk '{ \
        if ($1 == "context_name") print "\033[1m"$0"\033[0m";
        # Mitigation
        else if (($5>0 || $6>0 || $10> 0 || $14>0)) print "\033[01;31m"$0"\033[0m";
        else if ($3>0) print "\033[01;33m"$0"\033[0m";
        else if ($4>0) print "\033[01;32m"$0"\033[0m";
        else if ($9>0) print "\033[01;32m"$0"\033[0m";
        else if ($13>0) print "\033[01;32m"$0"\033[0m"; }'
