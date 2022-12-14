#!/sbin/sh
echo "Setupwizard Bypass Script"
echo "Made by @asrieldashie"
sleep 1

# Check if /data is mounted
DATAMNT=$(grep '/data' /proc/mounts)
if [ -z "$DATAMNT" ]; then
    echo "Mounting /data as it wasn't mounted..."
    mount -o rw '/data'
else
    echo "/data is mounted, continuing..."
    sleep 1
fi

# Define value for settings_global.xml
FILE1="/data/system/users/0/settings_global.xml"

# Define value for settings_secure.xml
FILE2="/data/system/users/0/settings_secure.xml"

# Check if the files exist
if [[ ! -f $FILE1 ]];  then
    echo "Files not found. Please boot at least once before using this script."
    echo "Aborting..."
    exit
elif [[ ! -f $FILE2 ]];  then
    echo "Files not found. Please boot at least once before using this script."
    echo "Aborting..."
    exit
fi

# Defining line number
REP1=$(grep -n device_provisioned $FILE1 | cut -f1 -d":<")s
REP2=$(grep -n user_setup_complete $FILE2 | cut -f1 -d":<")s

# Check whether the files are writable or not
if [[ "$REP1" == Binary* ]] || [[ -z "$REP1" ]]; then
    echo "settings_global.xml may be corrupted or encrypted by system."
    echo "Aborting..."
    exit
elif [[ "$REP2" == Binary* ]] || [[ -z "$REP2" ]]; then
    echo "settings_secure.xml may be corrupted or encrypted by system."
    echo "Aborting..."
    exit
fi

echo "Files found and writable, the process will begin..."
sleep 2

# Editing the strings
echo "Editing strings..."
sed -i "$REP1/0/1/g" $FILE1
sed -i "$REP2/0/1/g" $FILE2

echo "Done!"
echo "You may now reboot and see if it works."