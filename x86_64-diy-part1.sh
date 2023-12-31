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
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
sed -i '$a src-git opp https://github.com/kenzok8/openwrt-packages.git' feeds.conf.default
sed -i '$a src-git sml https://github.com/kenzok8/small.git' feeds.conf.default
# sed -i '$a src-git pkgs https://github.com/ysx88/openwrt-packages' feeds.conf.default
# sed -i '$a src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main' >> feeds.conf.default

echo 'src-git helloworld https://github.com/fw876/helloworld' >> feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >> feeds.conf.default
echo 'src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git;main' >> feeds.conf.default
echo 'src-git openclash https://github.com/vernesong/OpenClash' >> feeds.conf.default
echo 'src-git ssrplus https://github.com/maxlicheng/luci-app-ssr-plus' >> feeds.conf.default

# Add iStoreOS packages
echo 'src-git istore https://github.com/linkease/istore-packages' >> feeds.conf.default
echo 'src-git nas https://github.com/linkease/nas-packages' >> feeds.conf.default
echo 'src-git nasui https://github.com/linkease/nas-packages-luci' >> feeds.conf.default