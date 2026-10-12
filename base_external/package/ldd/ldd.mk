
##############################################################
#
# LDD
#
##############################################################

#Fill up the contents below in order to reference your assignment 7 git contents
LDD_VERSION = 8a4b662a429a121b9127f8a4cf72339459991ac5

# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-rumo3998.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

# Create the directory /usr/bin and populate it with the req'd files
LDD_MODULE_SUBDIRS = misc-modules scull

define LDD_INSTALL_TARGET_CMDS
	#Install the module mgt scripts into usr/bin/*
	$(INSTALL) -D -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin/scull_load
	$(INSTALL) -D -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin/scull_unload
	$(INSTALL) -D -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin/faulty_load
	$(INSTALL) -D -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin/faulty_unload

endef

$(eval $(kernel-module))
$(eval $(generic-package))
