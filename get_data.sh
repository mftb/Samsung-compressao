#!/bin/bash
for ((i = 1; i <= 60; i++))
do
	TIMESTAMP=$( date +%s )
	echo -e "su\ncd /data/smem\n ./android-smemcap>data-$TIMESTAMP.tar\nexit\nexit" | adb shell
done
echo "EXECUTION FINISHED"
