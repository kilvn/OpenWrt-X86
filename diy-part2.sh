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

#移除无用软件包
rm -rf luci-theme-argon_new package/feeds/kenzo
rm -rf luci-app-passwall package/feeds/kenzo
rm -rf luci-app-vssr package/feeds//kenzo
rm -rf luci-theme-argon package/lean

#下载额外软件包
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
