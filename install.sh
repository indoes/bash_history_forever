#!/bin/bash

echo >> .bashrc
echo >> .bashrc
curl https://raw.githubusercontent.com/indoes/bash_history_forever/master/.bashrc >> .bashrc

curl https://raw.githubusercontent.com/indoes/bash_history_forever/master/usr/local/bin/deduplicate-bash-history.sh >> /usr/local/bin/deduplicate-bash-history.sh

chmod 750 /usr/local/bin/deduplicate-bash-history.sh

crontab -l | { cat; printf "\n#------------------\n# bash_hist_dedup\n#------------------\n@reboot /usr/local/bin/deduplicate-bash-history.sh\n"; } | crontab -
