# CSUST_network_auto_login

长沙理工校园网登陆，用于长沙理工大学校园网登陆

**文末还有一个通用的[校园网自动登录脚本介绍](#xdg-autostart)（可用于 csust-lt 等）。**

# 长沙理工大学校园网自动登陆

使用了**魔仙堡魔法**，可以让同学们在连接学校内**csust-bg公用WiFi，或者在办公区连上有线**网络时候可以使用网络。
因为遭到**赫格沃兹魔法学校**的干扰，账号信息不会公布（公布是不可能公布的，这辈子都不可能公布）

# 使用要求

* 连接上csust-bg 或者办公区有线

# 使用范围

* 能收到csust-bg的地方
* 教学楼
* 图书馆
* 年轮广场

# 使用说明

* 双击
* 等待
* 连接上网络之后自动跳转到百度

# 附录

* [项目地址](https://github.com/linfangzhi/CSUST_network_auto_login/)
* 程序后面有我微信二维码，嘻嘻嘻
* 因为本人技术有限，暂时先放出windows版本

# 欢迎传播23333

# 下载地址

* 地址一：[点我点我点我](https://github.com/linfangzhi/CSUST_network_auto_login/releases/download/1.0/Auto_login.exe)
* 地址二：[百度云](https://pan.baidu.com/s/17iOfHhT0WszBBfXBEdK7Gw)提取码: y834

[![VRVc6K.md.jpg](https://s2.ax1x.com/2019/06/12/VRVc6K.md.jpg)](https://imgchr.com/i/VRVc6K)

# XDG Autostart

> The XDG Autostart specification defines a method for autostarting ordinary desktop entries on desktop environment startup and removable medium mounting, by placing them in specific #Directories.
>
> -- [XDG Autostart - ArchWiki](https://wiki.archlinux.org/title/XDG_Autostart)

使用 Linux 系统重启后校园网登录可能会掉，需要重新登录，所以我以原脚本为基础新建了一个 `login.py`，
删除了原脚本中像二维码信息和打开浏览器这类开机自启不需要的部分。你可以通过编辑 `login.py` 同一目录下的 [account.txt](account.txt)
来使用你的校园网账号，也可以直接硬编码到 `login.py` 里。建议将包含密码的文件设为仅自己可见。

还添加了一个 `csust-network-autologin.desktop` 的自启项，通过它来执行校园网自动登录的脚本。使用 `make install` 可以自动修改其中的脚本路径，
并安装到 XDG Autostart 的配置目录，这样就实现了每次登录桌面环境自动登录的功能。如果之后不需要了，还可以通过 `make uninstall` 删除自启项。
