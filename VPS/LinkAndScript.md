## SSH工具

**Windterm:** https://github.com/kingToolbox/WindTerm

**WebSSH**:https://webssh.anyfastcloud.com

## 脚本工具

**NodeSeek网友VPS脚本集合** [自用VPS一键脚本工具箱，一个脚本搞定大部分需求](https://www.nodeseek.com/post-58421-1)

`
curl -fsSL https://raw.githubusercontent.com/eooce/ssh_tool/main/ssh_tool.sh -o ssh_tool.sh && chmod +x ssh_tool.sh && ./ssh_tool.sh
`

**WARP部署工具:**[fscarmen / warp · GitLab](https://gitlab.com/fscarmen/warp)


```
wget -N https://gitlab.com/fscarmen/warp/-/raw/main/menu.sh && bash menu.sh [option] [lisence/url/token] 
```

**Youtube勇哥WARP:**[yonggekkk/warp-yg: warp多功能一键脚本，支持warp-go与wgcf切换，无限生成warp配置文件，支持升级warp+、warp团队账户，查看VPS本地IP、netflix、chatgpt解锁状态 (github.com)](https://github.com/yonggekkk/warp-yg)
```
bash <(wget -qO- https://gitlab.com/rwkgyg/CFwarp/raw/main/CFwarp.sh 2> /dev/null)
```

**Youtube勇哥X-UI:**[yonggekkk/x-ui-yg: x-ui精简修改版脚本，集成argo隧道功能，支持多节点聚合订阅、sing-box订阅、clash-meta订阅的配置输出，xray配置已添加支持warp-socks5与wireguard warp出站分流，实现多IP出站分流共存 (github.com)](https://github.com/yonggekkk/x-ui-yg)
```
bash <(curl -Ls https://raw.githubusercontent.com/yonggekkk/x-ui-yg/main/install.sh)
```

**Youtube勇哥-Singbox**[sing-box精装桶脚本【Hysteria2、Tuic5、Vless-reality、Vmess-ws/argo】：自签/acme双证书切换、Argo固定临时双隧道（可共存）、Psiphon赛风VPN（30个国家）分流功能。Serv00三合一代理脚本【部署保活融为一体】](https://github.com/yonggekkk/sing-box-yg)

```
bash <(curl -Ls https://raw.githubusercontent.com/yonggekkk/sing-box-yg/main/sb.sh)
```

**Hysteria2一键安装脚本**
```
wget -N --no-check-certificate https://raw.githubusercontent.com/Misaka-blog/hysteria-install/main/hy2/hysteria.sh && bash hysteria.sh
```
**流媒体检测:**[lmc999/RegionRestrictionCheck: A bash script to check the status of your IP on various geo-restricted services. (github.com)](https://github.com/lmc999/RegionRestrictionCheck)

```
bash <(curl -L -s check.unlock.media)
```

**路由追踪:**[nxtrace/NTrace-core: NextTrace, an open source visual route tracking CLI tool (github.com)](https://github.com/nxtrace/NTrace-core)
```
curl nxtrace.org/nt | bash
```

**查看IPV4/V6访问优先级:**
```
curl ip.sb
```
**设置IPV4优先:**

```
sed -i 's/#precedence ::ffff:0:0\/96  100/precedence ::ffff:0:0\/96  100/' /etc/gai.conf
```

**修改IPV4/V6优先级:**
```
vim /etc/gai.conf
```
```
#precedence ::ffff:0:0/96  100
```

**增添#注释达到效果**

