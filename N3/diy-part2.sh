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

echo '定制主机名'
sed -i "s/hostname='OpenWrt'/hostname='Newifi-D2'/g" package/base-files/files/bin/config_generate
cat package/base-files/files/bin/config_generate |grep hostname=
echo '=========Rewrite hostname done!========='

#download apk       
git clone -b luci https://github.com/xiaorouji/openwrt-passwall.git package/lucipc
git clone https://github.com/xiaorouji/openwrt-passwall2.git package/lucipb
