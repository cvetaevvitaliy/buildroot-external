################################################################################
#
# QLauncher BR2_PACKAGE_QLAUNCHER
#
################################################################################

QLAUNCHER_VERSION = 1.0
QLAUNCHER_SITE = $(BR2_EXTERNAL_ST_PATH)/app/QLauncher
QLAUNCHER_SITE_METHOD = local
QLAUNCHER_DEPENDENCIES = weston qt5base qt5wayland

define QLAUNCHER_CONFIGURE_CMDS
	(cd $(@D); $(TARGET_MAKE_ENV) $(HOST_DIR)/usr/bin/qmake)
	$(HOST_DIR)/usr/bin/qmake -o Makefile -v $(@D)/QLauncher.pro
endef

define QLAUNCHER_BUILD_CMDS
    $(MAKE) -C $(@D)
endef

define QLAUNCHER_INSTALL_TARGET_CMDS
   	$(INSTALL) -D -m 0755 $(@D)/$(project)QLauncher $(TARGET_DIR)/usr/bin/QLauncher
   	$(INSTALL) -D -m 0755 $(@D)/$(project)S50launcher $(TARGET_DIR)/etc/init.d/S50launcher
endef


$(eval $(generic-package))
