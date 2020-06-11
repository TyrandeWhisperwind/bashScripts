#cron eg: 
#0 8 * * * sh /data01/scripts/cleanDBSS.sh
-------------------------------------------------
#space check eg
#!/bin/bash
var="`df -k /data01`"
part=`echo $var| awk '{print $12}'`
part=$(expr "$part" : "\(.*\)%")

yest=$(date --date="yesterday" +"20%y%m%d")

if [ $part  -gt 75 ]
then
	cd /data01/data/DBSS
	pwd
fi
##################################################
#clean with getting the name of files 
yest=$(date --date="yesterday" +"20%y%m%d")
cd /data01/data/DBSS
pwd
rm -rf *$yest*
 