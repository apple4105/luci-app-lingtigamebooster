#
# Copyright (C) 2016 Openwrt.org
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-lingtigamebooster
PKG_VERSION:=20210118
PKG_RELEASE:=3
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Droid-MAX<https://github.com/Droid-MAX/luci-app-lingtigamebooster>

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	SECTION:=luci
	CATEGORY:=LuCI
	SUBMENU:=3. Applications
	TITLE:=LuCI Support for LingTi Game Booster
	MAINTAINER:=Droid-MAX<https://github.com/Droid-MAX/luci-app-lingtigamebooster>
	PKGARCH:=x86_64
	DEPENDS:=+kmod-tun
endef

define Package/$(PKG_NAME)/description
	LuCI Support for LingTi Game Booster.
endef

define Build/Prepare
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_CONF) root/etc/config/lingti $(1)/etc/config/lingti
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) root/etc/init.d/lingti $(1)/etc/init.d/lingti
	$(INSTALL_DIR) $(1)/etc/uci-defaults
	$(INSTALL_CONF) root/etc/uci-defaults/* $(1)/etc/uci-defaults
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) root/usr/sbin/lingti $(1)/usr/sbin/lingti
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci
	cp -pR luasrc/* $(1)/usr/lib/lua/luci/
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/i18n
	po2lmo po/zh-cn/lingti.po $(1)/usr/lib/lua/luci/i18n/lingti.zh-cn.lmo
endef

define Package/$(PKG_NAME)/conffiles
/etc/config/lingti
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
