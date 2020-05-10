#!/bin/bash

echo >> .bashrc
echo >> .bashrc
curl -s -S https://raw.githubusercontent.com/indoes/bash_history_forever/master/.bashrc >> .bashrc
echo "Appended bash_history_forever to .bashrc"

curl -s -S https://raw.githubusercontent.com/indoes/bash_history_forever/master/usr/local/bin/deduplicate-bash-history.sh >> /usr/local/bin/deduplicate-bash-history.sh
echo "Installed /usr/local/bin/deduplicate-bash-history.sh"

chmod 750 /usr/local/bin/deduplicate-bash-history.sh
echo "Make /usr/local/bin/deduplicate-bash-history.sh executable"

crontab -l | { cat; printf "\n#------------------\n# bash_hist_dedup\n#------------------\n@reboot /usr/local/bin/deduplicate-bash-history.sh\n"; } | crontab -
echo "Add @reboot /usr/local/bin/deduplicate-bash-history.sh to users crontab"
