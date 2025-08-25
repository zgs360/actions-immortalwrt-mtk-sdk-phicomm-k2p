#!/bin/bash
# 精简默认配置
sed -i 's/192.168.1.1/192.168.1.2/g' package/base-files/files/bin/config_generate
sed -i 's/root::0:0:99999:7:::/root:$1$5CBDkDyR$C3fBYnrHlI.0DnzY8BpLU1:20215:0:99999:7:::/g' package/base-files/files/etc/shadow

# 禁用非必要功能
sed -i 's/CONFIG_PACKAGE_luci-app-arpbind=y/# CONFIG_PACKAGE_luci-app-arpbind is not set/g' .config
sed -i 's/CONFIG_PACKAGE_luci-app-ddns=y/# CONFIG_PACKAGE_luci-app-ddns is not set/g' .config
sed -i 's/CONFIG_PACKAGE_luci-app-turboacc=y/# CONFIG_PACKAGE_luci-app-turboacc is not set/g' .config
sed -i 's/CONFIG_PACKAGE_luci-app-upnp=y/# CONFIG_PACKAGE_luci-app-upnp is not set/g' .config
