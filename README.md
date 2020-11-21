# luci-app-lingtigameacc
Luci support of LingTi Game Accelerator

ipk软件包的编译：
===================================
### 将Openwrt-SDK下载到本地并部署完毕后进入SDK目录，然后执行如下命令：
```
        cd package
        git clone https://github.com/Droid-MAX/luci-app-lingtigameacc.git
        cd ..
        make menuconfig # 选择 LuCI/luci-app-lingtigameacc
        make package/luci-app-lingtigameacc/compile V=99
```
### 最终你将会在SDK目录下的bin目录里找到编译好的ipk软件包！
