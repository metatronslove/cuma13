#!/bin/bash
artancuma() {
	testthis="$(date -d "$1" +"%Y-%m-%d")"
	testdate="$(getDate $testthis)"
	if [[ ${testdate:0:1} == "0" ]]; then
		testdate=${testdate:1:1}
	fi
	if [[ $((testdate)) -gt 13 ]]; then
		testthis="$(changemonth $testthis 1)"
	fi
	datethis="$(date -d "$testthis" +"%Y")-$(date -d "$testthis" +"%m")-13"
	testthis="$(date -d "$datethis" +"%Y-%m-%d")"
	testday="$(getDay $testthis)"
	while [[ $((testday)) -ne 5 ]]; do
		testthis="$(changemonth $testthis 1)"
		testday="$(getDay $testthis)"
	done
	echo $testthis
}
azalancuma() {
	testthis="$(date -d "$1" +"%Y-%m-%d")"
	testdate="$(getDate $testthis)"
	if [[ ${testdate:0:1} == "0" ]]; then
		testdate=${testdate:1:1}
	fi
	if [[ $((testdate)) -lt 13 ]]; then
		testthis="$(changemonth $testthis -1)"
	fi
	datethis="$(date -d "$testthis" +"%Y")-$(date -d "$testthis" +"%m")-13"
	testthis="$(date -d "$datethis" +"%Y-%m-%d")"
	testday="$(getDay $testthis)"
	while [[ $((testday)) -ne 5 ]]; do
		testthis="$(changemonth $testthis -1)"
		testday="$(getDay $testthis)"
	done
	echo $testthis
}
getDay() {
	daytoget="$(date -d "$1" +"%w")"
	echo $((daytoget))
}
getDate() {
	datetoget="$(date -d "$1" +"%d")"
	echo $((datetoget))
}
changemonth() {
	datetochange="$(date -d "$1" +"%Y-%m-%d")"
	monthofdate="$(date -d "$datetochange" +"%m")"
	yearofdate="$(date -d "$datetochange" +"%Y")"
	job=$2
	if [[ ${monthofdate:0:1} == "0" ]]; then
		monthofdate=${monthofdate:1:1}
	fi
	if [[ $((job)) -eq -1 ]]; then
		if (( $((monthofdate)) > 1 )); then
			newmonth="$((monthofdate-1))"
			newyear="$((yearofdate))"
		else
			newyear="$((yearofdate-1))"
			newmonth="12"
		fi
	else
		if (( $((monthofdate)) < 12 )); then
			newmonth="$((monthofdate+1))"
			newyear="$((yearofdate))"
		else
			newyear="$((yearofdate+1))"
			newmonth="1"
		fi
	fi
	datethis="$newyear-$newmonth-$(date -d "$datetochange" +"%d")"
	echo "$(date -d "$datethis" +"%Y-%m-%d")"
}
today="$(date +"%Y-%m-%d")"
nextfriday="$(artancuma $today)"
dnext="$(date -d "$nextfriday" +"%s")"
dthis="$(date -d "$today" +"%s")"
difference=$((dnext-dthis))
secondstodays=$((60*60*24))
daysleft=$((difference/secondstodays))
if (( $((daysleft)) > 0 )); then
	echo "
$daysleft gün sonra $(date -d "$nextfriday" +"%d %B %Y Cuma")
	"
else
	echo "
Bugün $(date -d "$nextfriday" +"%d %B %Y Cuma")
	"
fi
