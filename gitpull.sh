#!/bin/bash
git init
git add .
git commit -m "$(date +"%D %T")"
pass="classicmalkvian321"
/usr/bin/expect <<EOD
spawn git pull
expect "Enter passphrase for key '/home/$USERNAME/.ssh/id_ed25519':"
send "$pass\r"
expect eof
EOD
