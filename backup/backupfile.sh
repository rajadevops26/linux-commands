
#!/bin/bash
BACKUPTIME='date+%b-%d-%y' #get the current date of an instance
DESTINATION="/root/backup" #creates backup file in this location

SOURCEFOLDER="/root/python" #taking backup of this folder
tar -cpzf $DESTINATION/$BACKUPTIME.tar.gz $SOURCEFOLDER #create backup tar file
