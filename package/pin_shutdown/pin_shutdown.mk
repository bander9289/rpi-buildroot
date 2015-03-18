
PIN_SHUTDOWN_VERSION = 1.0
PIN_SHUTDOWN_SITE = $(call github,bander9289,pin_shutdown,master)
PIN_SHUTDOWN_SETUP_TYPE = setuptools

define PIN_SHUTDOWN_INSTALL_INIT_SYSV
	$(INSTALL) -D -m 0755 package/pin_shutdown/S50pin_shutdown $(TARGET_DIR)/etc/init.d/
endef

$(eval $(python-package))
