.PHONY: install uninstall

entry := csust-network-autologin.desktop
autostart_entry := ${HOME}/.config/autostart/${entry}

install: ${entry}
	sed "s#/path/to#$${PWD}#" ${entry} > ${autostart_entry}

uninstall:
	-rm ${autostart_entry}
