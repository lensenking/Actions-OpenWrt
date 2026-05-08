#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# 1. 修改默认的后台登录 IP 为 192.168.16.16
sed -i 's/192.168.1.1/192.168.16.16/g' package/base-files/files/bin/config_generate

# 2. 强行将固件的默认网络队列算法设为 fq，拥塞控制设为 bbr (高性能 N100 标配)
echo "net.core.default_qdisc=fq" >> package/base-files/files/etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr" >> package/base-files/files/etc/sysctl.conf
