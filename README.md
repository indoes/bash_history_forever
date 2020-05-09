# bash_history_forever
###### Keep bash history forever on CentOS 7 and up.

1. Append .bashrc to the end of your ~/.bashrc
<br />

2. Install /usr/local/bin/deduplicate-bash-history.sh: 
<pre><code>chmod 750 /usr/local/bin/deduplicate-bash-history.sh</code></pre>
<br />

3. Inside users crontab add:
<pre><code>@reboot /usr/local/bin/deduplicate-bash-history.sh</code></pre>
<br />
