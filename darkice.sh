#!/bin/bash
test() {
	tail -n1 /var/log/icecast2/error.log |\
	grep "keks now" 
	if [ $? = 0 ]
	then
		echo "$(date) - Beobachte errorlog auf 0 listener"
		sh darkice-stop.sh
	else
		echo "$(date) - Probleme im beim Start"
		killall darkice
	fi
}
tail -Fn0 /var/log/icecast2/access.log |\
	while read line ; do
		echo "$line" | grep "404"
		if [ $? = 0 ]
		then
			darkice &
			sleep 10s
			test
		fi
	done
