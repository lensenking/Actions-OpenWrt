#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# 1. 添加专门适配 24.10 现代 LuCI 界面的 Turbo ACC 源码
git clone -b 18.06 https://github.com/chenmozhijin/turboacc.git package/turboacc

# 2. 添加最新版 Nikki 官方源码（确保编译出最新版本）
git clone https://github.com/nikkinikki-org/OpenWrt-nikki.git package/luci-app-nikki

# 3. 添加 MosDNS 官方源码
git clone https://github.com/sbwml/luci-app-mosdns.git package/luci-app-mosdns
