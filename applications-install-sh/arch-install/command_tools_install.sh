#/bin/bash
#GNOME Keyring is a collection of components in GNOME that store secrets, passwords, keys, certificates and make them available to applications.
[[ ! $(command -v gnome-keyring) ]] && $install_command || echo "gnome-keyring"
######## terminal tools #########
#file Manager
[[ ! $(command -v ranger) ]] && $install_command ranger || echo "ranger exist!"
#image viewer
[[ ! $(command -v ucollage) ]] && $install_command ucollage || echo "ucollage exist!"
#say something
[[ ! $(command -v cowsay) ]] && $install_command cowsay || echo "cowsay exist!"
#replace top
[[ ! $(command -v htop) ]] && $install_command htop || echo "htop exist!"
#scan disk and calculate size
[[ ! $(command -v ncdu) ]] && $install_command ncdu || echo "ncdu exist!"
#System restore tool for Linux. Creates filesystem snapshots using rsync+hardlinks, or BTRFS snapshots. Supports scheduled snapshots, multiple backup levels, and exclude filters. Snapshots can be restored while system is running or from Live CD/USB. 
[[ ! $(command -v timeshift) ]] && $install_command ncdu || echo "ncdu exist!"


[[ ! $(command -v lftp) ]] && $install_command lftp || echo "lftp exist!"
[[ ! $(command -v mutt) ]] && $install_command mutt || echo "mutt exist!"
[[ ! $(command -v wget) ]] && $install_command wget || echo "wget exist!"
# Sony 的 PlayStation2, SEGA 的 DreamCast, Nintendo 的 N64，Namco 的街机
# 原来 UNIX 用户早就有非常方便的 troff, LaTeX, SGML 等东西可以处理文档