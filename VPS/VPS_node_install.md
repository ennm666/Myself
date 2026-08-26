# VPS 节点安装方案 20260825

> **环境满足，建议都安装**

## 代理节点组合

### TCP 直连组合 

**VLESS+TCP+REALITY+VISION**

VLESS+WS+ENC

### UDP "暴力"协议

**Hysteria2**

**Tuic**

### CDN 加速组合

**VLESS+WS+ENC+CDN**

VLESS+WS+ENC+ARGO(TLS)

VLESS+XHTTP+TLS+TCP/UDP

## 一键脚本命令

- **Debian系 一键安装必要环境**

```BASH
  apt update -y
  apt install curl wget -y
```

- 流媒体解锁检测

```BASH
  bash <(curl -L -s check.unlock.media)
```


- **[ArgoSBX小钢炮脚本 by ygkkk](https://yonggekkk.github.io/argosbx/)**

- [3-XUI](https://github.com/MHSanaei/3x-ui)

  ```BASH
  bash <(curl -Ls https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh)
  ```


- [wireproxy 可指定网卡版 by xiahuaijia](https://github.com/xiahuaijia/wireproxy)

- [BBR Max by Joey](https://github.com/byJoey/Actions-bbr-v3)


## 其他

查看IPV4/V6访问优先级

```BASH
curl ip.sb
```

设置IPV4优先

```BASH
sed -i 's/#precedence ::ffff:0:0\/96  100/precedence ::ffff:0:0\/96  100/' /etc/gai.conf
```

修改IPV4/V6优先级

>**增添#注释达到效果**

```BASH
vim /etc/gai.conf

#precedence ::ffff:0:0/96  100
```
 


- [HE TunnelBroker](https://tunnelbroker.net/)

- [获取稀有IP](https://blog.acesheep.com/p/bgplayer-beginner-guide-how-to-get-north-korea-or-antarctica-ip/)

- [Google CoLab 临时白嫖高配机器](https://www.youtube.com/watch?v=Q2HWSZDVe8Q)

- [Github CodeSpace 临时搭建](https://www.youtube.com/watch?v=XyVEBgf40Js)

- [Vmshell清理脚本](https://github.com/FoxBary/smallvps)

 ```BASH
 bash <(curl -sL https://raw.githubusercontent.com/FoxBary/smallvps/main/vmshellvps.sh)
 ```

 - [路由追踪](https://github.com/nxtrace/NTrace-core)

 ```BASH
 curl nxtrace.org/nt | bash
 ```