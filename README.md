# bash_history_forever
###### Keep bash history forever on CentOS 7 and up.

1. Append .bashrc to the end of your ~/.bashrc


2. Install /usr/local/bin/deduplicate-bash-history.sh:
`chmod 750 /usr/local/bin/deduplicate-bash-history.sh`


3. Inside users crontab add:
`@reboot /usr/local/bin/deduplicate-bash-history.sh`
