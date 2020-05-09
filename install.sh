#!/bin/bash
#tmpfile=$(mktemp /tmp/install-script.XXXXXX)

echo >> .bashrc
echo >> .bashrc
curl https://raw.githubusercontent.com/indoes/bash_history_forever/master/.bashrc >> .bashrc

curl https://raw.githubusercontent.com/indoes/bash_history_forever/master/usr/local/bin/deduplicate-bash-history.sh >> /usr/local/bin/deduplicate-bash-history.sh

chmod 750 /usr/local/bin/deduplicate-bash-history.sh

#crontab -l > "$tmpfile"
#echo "@reboot /usr/local/bin/deduplicate-bash-history.sh" >> "$tmpfile"
#crontab "$tmpfile"
#rm -f "$tmpfile"
crontab -l | { cat; printf "#------------------\n# bash_hist_dedup\n#------------------\n@reboot /usr/local/bin/deduplicate-bash-history.sh\n"; } | crontab -
