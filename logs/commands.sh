1) find 2mb or 50 mb files in machine
# find / -xdev -type f -size +50M
# find / -xdev -type f -size +2M
2) find large files on a perticular folder
# find /usr -type f -printf "%s %p\n" | sort -rn | head -n 10
or
ls -lh
ls -lhtr
ls -lhtr /var/log
du -hsx * | sort -rh | head -10
3) last 3days deleted files
find /root -mtime -3
4)deleteing 5 days older log files
find . -mtime +5 -print
find /root -mtime +5 -print
find /var/log/dir -type f -name "*.log" -mtime +5 | xargs rm -f
5)deleting current log files in a perticular folder
find /var/log/dir -type f -name "*.log" | xargs rm -f
or
find . -type f -name "*.log" -exec rm -f {} \;
