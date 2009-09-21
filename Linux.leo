<?xml version="1.0" encoding="utf-8"?>
<?xml-stylesheet ekr_test?>
<leo_file>
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5">
	<global_window_position top="38" left="891" height="600" width="800"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="andelf.20090814081214.1230" str_leo_pos="1,0,3,1"><vh>@chapters</vh></v>
<v t="andelf.20090814081214.1229" a="E"><vh>Linux</vh>
<v t="andelf.20090814081214.1231" a="E"><vh>Arch Linux</vh>
<v t="andelf.20090814081214.1232"><vh>pacman的使用</vh>
<v t="andelf.20090814081214.1238"><vh>简要</vh></v>
<v t="andelf.20090814081214.1234"><vh>其它用法</vh></v>
</v>
<v t="andelf.20090814081214.1235"><vh>进入X无法使用键盘鼠标</vh></v>
<v t="andelf.20090814081214.1236"><vh>ssh 服务器设置</vh></v>
<v t="andelf.20090814081214.1237" a="E"><vh>Openbox + slim + pypanel + thunar</vh>
<v t="andelf.20090814081214.1239"><vh>slim</vh></v>
<v t="andelf.20090814081214.1240"><vh>OpenBox</vh></v>
<v t="andelf.20090814081214.1241"><vh>pypannel</vh></v>
</v>
<v t="andelf.20090814081214.1242"><vh>设置 X</vh>
<v t="andelf.20090814081214.1244"><vh>安装</vh></v>
<v t="andelf.20090814081214.1243"><vh>自动启动</vh></v>
</v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="andelf.20090814081214.1229"></t>
<t tx="andelf.20090814081214.1230"></t>
<t tx="andelf.20090814081214.1231"></t>
<t tx="andelf.20090814081214.1232">pacman的使用

/etc/pacman.conf

1,升级系统
pacman -Syu

pacman -Su
2,从源中安装包
pacman -S package_name

pacman -Sf package_name 重新安装软件包

3,只下载你要的包
pacman -Sw package_name


4,安装下载的包

pacman -U /path/to/package/package_name-version.pkg.tar.gz

5,删除已安装的软件
pacman -R package_name
其中pacman -Rs package_name
卸载相关依赖的包


6,查找你的要的包

pacman -Ss package

pacman -Qi package 显示查找的包的信息
pacman -Ql package 显示你要找的包的文件都安装的位置

pacman 的配置文件为/etc/pacman.conf

7,清空cache 
pacman -Scc 
用pacman 安装的时候,下的包会在/var/cache 这个目录,你会发现这个文件夹很大</t>
<t tx="andelf.20090814081214.1234">其它用法
Pacman是个非常广泛的包管理工具，这里只是它的一些其它主要特性。
下载包而不安装它：
pacman -Sw package_name
安装一个本地包（不从源里）：
pacman -U /path/to/package/package_name-version.pkg.tar.gz
完全清理包缓存(/var/cache/pacman/pkg)：
pacman -Scc
重安装包（那些因为依赖关系问题而无法先删除的包）：
pacman -Sf package_name
要了解更详细的参数开关可以pacman --help或者man pacman。</t>
<t tx="andelf.20090814081214.1235">Option "AllowEmptyInput" "False"
加入到 ServerFlags section 帮助 Debug

cat /var/log/Xorg.0.log | grep WW
查找警告

(WW) Warning, couldn't open module mouse
(WW) Warning, couldn't open module kbd

则确认有以下包
x11-drivers/xf86-input-mouse
x11-drivers/xf86-input-keyboard
</t>
<t tx="andelf.20090814081214.1236">安装 OpenSSH

# pacman -Sy openssh

配置 ssh  /etc/ssh/sshd_config
其中重要配置
Protocol 2
AllowUsers    user1 user2
PermitRootLogin no # (put yes here if you want root login)

可以在 /etc/issue 中添加登陆 BANNER

允许外部访问 /etc/hosts.allow
# let everyone connect to you
sshd: ALL

# OR you can restrict it to a certain ip
sshd: 192.168.0.1

# OR restrict for an IP range
sshd: 10.0.0.0/255.255.255.0

# OR restrict for an IP match
sshd: 192.168.1.


检查 /etc/hosts.deny 文件, 确保有如下一行
ALL: ALL: DENY

启动服务
# /etc/rc.d/sshd restart

设置守护 /etc/rc.conf 修改
DAEMONS=(... ... sshd ... ...)

命令
# /etc/rc.d/sshd {start|stop|restart}
</t>
<t tx="andelf.20090814081214.1237"></t>
<t tx="andelf.20090814081214.1238">1、更新系统

在 Arch Linux 中，使用一条命令即可对整个系统进行更新：

pacman -Syu

如果你已经使用 pacman -Sy 将本地的包数据库与远程的仓库进行了同步，也可以只执行：

pacman -Su

2、安装包

pacman -S 包名 例如，执行 pacman -S firefox 将安装 Firefox。你也可以同时安装多个包，只需以空格分隔包名即可。
pacman -Sy 包名 与上面命令不同的是，该命令将在同步包数据库后再执行安装。
pacman -Sv 包名 在显示一些操作信息后执行安装。
pacman -U 安装本地包，其扩展名为 pkg.tar.gz。
3、删除包

pacman -R 包名 该命令将只删除包，不包含该包的依赖。
pacman -Rs 包名 在删除包的同时，也将删除其依赖。
pacman -Rd 包名 在删除包时不检查依赖。
4、搜索包

pacman -Ss 关键字 这将搜索含关键字的包。
pacman -Qi 包名 查看有关包的信息。
pacman -Ql 包名 列出该包的文件。
5、其他用法

pacman -Sw 包名 只下载包，不安装。
pacman -Sc Pacman 下载的包文件位于 /var/cache/pacman/pkg/ 目录。该命令将清理未安装的包文件。
pacman -Scc 清理所有的缓存文件。</t>
<t tx="andelf.20090814081214.1239">slime slim-themes 

换一下slim的主题
slim -p /usr/share/slim/themes/&lt;你所需要的主题名&gt;
来看，选好后，打开/etc/slim.conf
找到
current_theme default

安装完成后将/etc/rc.conf中
DISPLAYMANAGER="gdm"
XSESSION="Gnome"
改为
DISPLAYMANAGER="slim"
XSESSION="Openbox"
就成了

技巧
slim还有一个方便的地方:
在登录界面username中输入下列关键字产生的功能
console ----- 启动终端登录
exit ----------- 进入字符界面登录
halt ----------- 关机需输入root密码
reboot ------- 重启需输入root密码</t>
<t tx="andelf.20090814081214.1240">openbox obconf menumaker feh

2)安装完成后，需要进行配置
2-1)修改菜单,首先为了防止主菜单被以后升级覆盖，应该复制到自己的目录下。
/etc/xdg/openbox/autostart.sh, rc.xml 
cp /etc/xdg/openbox/menu.xml ~/.config/openbox
...

autostart.sh 可写入
# SCIM support (for typing non-english characters)
export LC_CTYPE=ja_JP.utf8
export XMODIFIERS=@im=SCIM
export GTK_IM_MODULE=scim
export QT_IM_MODULE=scim
scim -d &amp;
# Programs that will run after Openbox has started
(sleep 2 &amp;&amp; fbpanel) &amp;

gdesklets --no-tray-icon &amp;
feh --bg-tile /home/suxue/.tupian/bz/sky1.jpg &amp; #添加壁纸的命令

menumaker 自动生成菜单

当选择了slim做为dm,.xprofile不在管用。直接将fcitx加入到autostart.sh就可以了



</t>
<t tx="andelf.20090814081214.1241">nel默认不支持中。修改方法为:
vi ~/.pypanelrc
找到FONT = "bitstream vera sans-8"
改为
FONT = "wenquanyi bitmap song-8"
就支持中文了

在~/.pypanelrc中找到
CLOCK_COLOR = "0x000000"</t>
<t tx="andelf.20090814081214.1242"></t>
<t tx="andelf.20090814081214.1243">方法1, 设置 /etc/inittab

id:3:initdefault:

修改为

id:5:initdefault:
    
方法2, 设置 display manager 
(kdm, gdm, xdm, or slim) 之一

DAEMONS=(syslog-ng network hal fam gdm)</t>
<t tx="andelf.20090814081214.1244"># pacman -S xorg
缺省的vesa显示驱动仅仅是一个fallback（没有加速并且不支持很多分辨率）
因此你还需要一个合适的驱动。你可以打入以下命令获取显示驱动列表：
# pacman -Ss xf86-video

生成配置文件

# Xorg -configure

或者使用 cat /var/log/Xorg.0.log 中获取</t>
</tnodes>
</leo_file>
