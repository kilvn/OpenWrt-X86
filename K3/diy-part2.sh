#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

echo '定制编译K3'
sed -i '421,453d' target/linux/bcm53xx/image/Makefile
sed -i '140,412d' target/linux/bcm53xx/image/Makefile
cat target/linux/bcm53xx/image/Makefile |grep DEVICE_PACKAGES
echo '========special for K3!========'

#download apk
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone -b 18.06 https://github.com/kiddin9/luci-theme-edge.git package/luci-theme-edge
git clone https://github.com/xnxy2012/k3screenctrl_build.git package/k3screenctrl_build
git clone https://github.com/lwz322/k3screenctrl.git package/k3screenctrl
git clone https://github.com/lwz322/luci-app-k3screenctrl.git package/luci-app-k3screenctrl
git clone -b luci https://github.com/xiaorouji/openwrt-passwall.git package/lucipc
#git clone https://github.com/xiaorouji/openwrt-passwall.git
#git clone https://github.com/tossp/k3screenctrl_sh.git package/k3screenctrl_sh
#git clone https://github.com/Hill-98/luci-app-k3screenctrl.git package/luci-app-k3screenctrl
#git clone https://github.com/Hill-98/openwrt-k3screenctrl.git package/openwrt-k3screenctrl
#git clone https://github.com/lwz322/k3screenctrl_build.git package/k3screenctrl_build
