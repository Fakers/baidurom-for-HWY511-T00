#!/system/bin/sh

result=1

while [ $result != 0 ];
do
	su -c "cp /data/local/tmp/command /cache/recovery/"
	result=$?
	echo "result: $result"
	sleep 3
done
exit 0
