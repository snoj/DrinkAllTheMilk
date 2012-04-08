install: install-support-files install-bin-files install-service-files install-udev-rules

install-support-files:
	mkdir -p /etc/drinkallthemilk;
	cp etc-datm/* /etc/drinkallthemilk;
	
install-bin-files:
	cp sbin/* /usr/sbin
	
install-service-files:
	cp etc-init.d/* /etc/init.d
install-udev-rules:
	cp etc-udev/* /etc/udev/rules.d
uninstall:
	rm -R /etc/drinkallthemilk;
	rm /usr/sbin/datm-ntfy;
	rm /usr/sbin/datm-setup;
	rm /usr/sbin/drinkallthemilkd;
	rm /etc/init.d/drinkallthemilk
	rm /etc/udev/rules.d/1-drinkallthemilk.rules

