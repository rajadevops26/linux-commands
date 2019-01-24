dest="/root/backup"
files="/root/python"
day=$(date +%A)
hostname=$(hostname -s)
archive_files="$hostname-TEST-$day.tgz"

for i in "${files[@]}"
do
echo  "backing up $i to $dest/$archive_files"
date
echo
tar czf $dest/$archive_files $i  #--absolute-names ----- if it shows any tar: Removing leading `/' from member names
done
echo
echo "backup finished"
