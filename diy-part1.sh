#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 添加feed源
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git kenzok https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
sed -i 'src-git third_party https://github.com/linkease/istore-packages;main' feeds.conf.default
sed -i 'src-git diskman https://github.com/jjm2473/luci-app-diskman;dev' feeds.conf.default
sed -i 'src-git oaf https://github.com/jjm2473/OpenAppFilter;dev4' feeds.conf.default
sed -i 'src-git linkease_nas https://github.com/linkease/nas-packages;master' feeds.conf.default
sed -i 'src-git linkease_nas_luci https://github.com/linkease/nas-packages-luci;main' feeds.conf.default
sed -i 'src-git jjm2473_apps https://github.com/jjm2473/openwrt-apps;main' feeds.conf.default
# 扩充插件包
git clone https://github.com/fw876/helloworld.git package/helloworld
git clone https://github.com/xiaorouji/openwrt-passwall.git package/luci-app-passwall
git clone https://github.com/rosywrt/luci-theme-rosy.git package/luci-theme-rosy
rm -rf package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config
git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman
#aliyun
#svn co https://github.com/messense/aliyundrive-webdav/trunk/openwrt package/luci-app-aliyundrive
