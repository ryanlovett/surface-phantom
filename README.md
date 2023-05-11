Block phantom Surface touchscreen events
========================================

Configuration to disable events coming from a Surface's damaged touchscreen,
to block phantom movements.

 - /etc/modprobe.d/disable-multitouch.conf
   Prevent the multitouch driver from loading.

 - /etc/udev/rules.d/99-disable-touchscreen.rules
   Identify which device is associated with the touchscreen. The value
   was determined by inspecting /proc/bus/input/devices.

 - /usr/local/sbin/remove-dev.sh
   Deletes the input device matched by the udev rule.
