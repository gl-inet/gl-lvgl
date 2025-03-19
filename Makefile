include $(TOPDIR)/rules.mk

PKG_NAME:=gl-lvgl
PKG_SOURCE_DATE:=2025-2-7
PKG_SOURCE_VERSION:=c924e24c7aa55317521bcd9dd75ce9337508f5a5
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/lvgl/lv_port_linux.git

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/gl-lvgl
  SECTION:=base
  TITLE:=lcd functions
  DEPENDS:=+libdrm +libstdcpp +libpthread
endef

define Package/gl-lvgl/description
 glinet lcd lvgl demo
endef

define Package/gl-lvgl/install
	$(INSTALL_DIR) $(1)/usr/bin/
	$(CP) $(PKG_BUILD_DIR)/bin/main $(1)/usr/bin/gl_lvgl
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/gl_lvgl.init $(1)/etc/init.d/gl_lvgl
endef


$(eval $(call BuildPackage,gl-lvgl))
