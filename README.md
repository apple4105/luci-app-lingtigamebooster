# luci-app-lingtigamebooster
Luci support of LingTi Game Booster

ipk软件包的编译：
===================================
1. ### 下载并部署对应目标平台的Openwrt-SDK到本地环境：

2. ### 下载插件到SDK目录当中：

```
        cd package
        git clone https://github.com/Droid-MAX/luci-app-lingtigamebooster.git
```

3. ### 从灵缇官网下载对应的可执行文件到插件目录,替换或覆盖其中的lingti文件(插件目录/root/usr/sbin/)

4. ### 修改Makefile文件中的PKGARCH字段为目标机器平台的架构名称(例如:amd64/aarch64/mips/mipsel等)

5. ### 切换回SDK根目录下，执行如下指令编译软件包：

```
        cd ..
        make menuconfig # 选择 LuCI/luci-app-lingtigamebooster
        make package/luci-app-lingtigamebooster/compile V=99
```

### 最终你将会在SDK目录下的bin目录里找到编译好的ipk软件包！
