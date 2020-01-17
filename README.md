This script do display some DoS stats from F5 BIG-IP.

A line will appear in green when traffic hits a vector without beeing in 'detection' or 'mitigation' mode.
When a line appears in yellow, then this vector is in 'detect' mode.
Turns the line into red, then is indicates that the vector is dropping packets.

# usage: watch -c ./show_DOS_stats.color.sh

show_DOS_stats.color.sh - will show all vectors with traffic
show_DOS_stats_attacked.color.sh - will show only vectors under attack (detect or mitigate)

