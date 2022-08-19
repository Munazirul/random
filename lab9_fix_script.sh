#!/bin/bash

file=/root/server-check.sh

#change the oparator symbole
sed "s/smbclient \-U student \/\/localhost\/student Password01/smbclient \-U student%Password01 \/\/localhost\/student/g" $file > sch.sh

#Replace to orginal file and give right permission
#mv sch.sh $file
#chmod 755 $file
chmod 755 sch.sh

#Run the server-check script

bash sch.sh -s -l 9 $1 $2 $3
rm sch.sh
