#!/bin/bash

instapt=echo "$(which apt)"
instyum=echo "$(which yum)"

if [ -x $instapt ]; then
	apt-get update && apt -y install gawk
fi
if [ -x $instyum ]; then
	yum install -y gawk
fi

echo -e "\n" >> .bashrc
#echo >> .bashrc

echo "Appending bash_history_forever to .bashrc"
curl -s -S https://raw.githubusercontent.com/indoes/bash_history_forever/master/.bashrc >> .bashrc
sleep 2

echo "Installing deduplicate-bash-history.sh to /usr/local/bin/"
curl -s -S https://raw.githubusercontent.com/indoes/bash_history_forever/master/usr/local/bin/deduplicate-bash-history.sh >> /usr/local/bin/deduplicate-bash-history.sh
sleep 2

chmod 755 /usr/local/bin/deduplicate-bash-history.sh
echo "Make /usr/local/bin/deduplicate-bash-history.sh executable"

crontab -l | { cat; printf "\n#------------------\n# bash_hist_dedup\n#------------------\n@reboot /usr/local/bin/deduplicate-bash-history.sh\n"; } | crontab -
echo "Add @reboot /usr/local/bin/deduplicate-bash-history.sh to users crontab"
