#!/bin/bash
for ((i = 1; i <= 60; i++))
do
	TIMESTAMP=$( date +%s )
	echo -e "su\ncd /data/smem\n ./android-smemcap>data-$TIMESTAMP.tar\nexit\nexit" | adb shell
done
echo "DATA COLLECTION FINISHED, GENERATING TGZ DATA FILE..."
echo -e "su\ncd /data/smem\n tar czf data.tgz *.tar\nrm *.tar\nexit\nexit" | adb shell

