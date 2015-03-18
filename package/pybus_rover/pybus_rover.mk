
PYBUS_ROVER_VERSION = 0.1
PYBUS_ROVER_SITE = $(call github,bander9289,pybus,master)
PYBUS_ROVER_SETUP_TYPE = setuptools

define PYBUS_ROVER_INSTALL_INIT_SYSV
	$(INSTALL) -D -m 0755 package/pybus_rover/S99pybus $(TARGET_DIR)/etc/init.d/
endef

define PYBUS_ROVER_EXTRACT_CMDS
	cp package/pybus_rover/setup.py $(@D)
	tar -C $(@D) -zxf $(BR2_DL_DIR)/$(PYBUS_ROVER_SOURCE)
	mv $(@D)/pyBus-master $(@D)/pybus
endef

$(eval $(python-package))
