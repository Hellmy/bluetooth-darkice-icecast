cat /var/log/icecast2/error.log
tail -Fn1 /var/log/icecast2/error.log |\
	while read line ; do
		echo "$line" | grep -e "keks now 0" -e "listeners on /keks released"
		if [ $? = 0 ]
		then
			killall darkice
			break
		fi
	done
