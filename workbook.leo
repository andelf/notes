<?xml version="1.0" encoding="utf-8"?>
<?xml-stylesheet ekr_test?>
<leo_file>
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="andelf.20100313122825.1226"><vh>@chapters</vh></v>
<v t="andelf.20100319235445.1254" a="E"><vh>Notes</vh>
<v t="andelf.20100319235445.1255" a="E"><vh>Linux</vh>
<v t="andelf.20100331192249.1275"><vh>run instead os start</vh></v>
<v t="andelf.20100319235445.1256"><vh>10 个最酷的 Linux 单行命令</vh></v>
</v>
<v t="andelf.20100331192249.1266" a="E"><vh>Ruby</vh>
<v t="andelf.20100331192249.1267"><vh>Misc</vh></v>
</v>
<v t="andelf.20100331192249.1263" a="E"><vh>IronPython</vh>
<v t="andelf.20100331192249.1265"><vh>Shell</vh></v>
<v t="andelf.20100331192249.1268"><vh>Types</vh></v>
<v t="andelf.20100331192249.1269"><vh>BIFs</vh></v>
<v t="andelf.20100331192249.1271"><vh>Modules</vh></v>
<v t="andelf.20100331192249.1272"><vh>.Net Objects</vh></v>
<v t="andelf.20100331192249.1273"><vh>Write Application/Design Pattern</vh></v>
<v t="andelf.20100331192249.1280"><vh>First class function in action</vh></v>
<v t="andelf.20100331192249.1284"><vh>XML Settings</vh></v>
<v t="andelf.20100331192249.1281"><vh>newHeadline</vh></v>
<v t="andelf.20100331192249.1279"><vh>重载方法</vh></v>
<v t="andelf.20100331192249.1276"><vh>异常对应关系</vh></v>
<v t="andelf.20100331192249.1270"><vh>Misc</vh></v>
</v>
<v t="andelf.20100331192249.1283"><vh>golang</vh>
<v t="andelf.20100331192249.1282"><vh>GoLang</vh></v>
</v>
</v>
<v t="andelf.20100313122825.1234" a="E"><vh>service</vh>
<v t="andelf.20100325195808.1258"><vh>Zope/Plone</vh>
<v t="andelf.20100325195808.1259"><vh>Plone</vh>
<v t="andelf.20100325195808.1262"><vh>protal_actions</vh></v>
<v t="andelf.20100325195808.1261"><vh>FAQ</vh></v>
<v t="andelf.20100325195808.1260"><vh>basic_properties</vh></v>
</v>
</v>
<v t="andelf.20100323230925.1257"><vh>Django under Apache</vh></v>
<v t="andelf.20100313122825.1241"><vh>Helix</vh></v>
<v t="andelf.20100313122825.1243"><vh>BitTorrent</vh></v>
<v t="andelf.20100313122825.1242"><vh>MySQL</vh></v>
<v t="andelf.20100313122825.1235"><vh>MoinMoin</vh></v>
</v>
<v t="andelf.20100313122825.1225" a="E"><vh>neup</vh>
<v t="andelf.20100313122825.1236"><vh>202.118.17.187</vh></v>
<v t="andelf.20100313122825.1227" a="E"><vh>202.118.17.188</vh>
<v t="andelf.20100313122825.1231" a="E"><vh>DataBase</vh>
<v t="andelf.20100313122825.1232"><vh>neupwww</vh>
<v t="andelf.20100313122825.1233"><vh>addonarticle</vh></v>
</v>
</v>
<v t="andelf.20100313122825.1228"><vh>phpMyAdmin</vh></v>
<v t="andelf.20100313122825.1229"><vh>www.neu-pioneer.cn</vh></v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="andelf.20100313122825.1225"></t>
<t tx="andelf.20100313122825.1226"></t>
<t tx="andelf.20100313122825.1227">root
&lt;xianfengwang188@neup&gt;</t>
<t tx="andelf.20100313122825.1228">http://www.neu-pioneer.cn/skydongzhu/
web@tech.182</t>
<t tx="andelf.20100313122825.1229">db: neupwww
织梦 CMS, 数据库表前缀 dede_

管理 liuzhaoxing 123456

a = md5.new("xxxx")
a.hexdigest()[5:5+20]</t>
<t tx="andelf.20100313122825.1231"></t>
<t tx="andelf.20100313122825.1232"></t>
<t tx="andelf.20100313122825.1233">aid # article id
typeid # 类型id
body # 新闻主题
redirecturl #  
templet # 
userip # 提交者ip</t>
<t tx="andelf.20100313122825.1234">HBase、Voldemort、MongoDB、MemcacheDB、Redis、Cassandra、HyperTable、 Cassandra

</t>
<t tx="andelf.20100313122825.1235">Setting up a MoinMoin wiki
for historical purposes here is how I got my wiki set up 

all commands were performed as root su - 
Code:
yum install moin
each line executed 
Code:
mkdir /var/www/moin/mywiki 
cp -R /usr/share/moin/data /var/www/moin/mywiki
cp -R /usr/share/moin/underlay /var/www/moin/mywiki
cp -R /usr/share/moin/config/wikiconfig.py /var/www/moin/mywik
set the permissions for the directories 
Code:
chown -R apache:apache /var/www/moin   
chmod -R ug+rwX /var/www/moin    
chmod -R o-rwx /var/www/moin
create a moin.conf in the httpd directory like so... 

Code:
gedit /etc/httpd/conf.d/moin.conf
add the following to the file 

Quote:
Alias /wiki/ "/usr/share/moin/htdocs/"
&lt;Location /mywiki&gt;
SetHandler python-program
# Add the path of your wiki directory
PythonPath "['/var/www/moin/mywiki'] + sys.path"
PythonHandler MoinMoin.request::RequestModPy.run
# Location value must match the Apache Location value!
PythonOption Location /mywiki
&lt;/Location&gt;
Open the Moin configuration file you copied over earlier (wikiconfig.py) and edit it. You only have to modify it in a few places ( in red need to be adjusted to your configuration):

# Site name, used by default for wiki name-logo [Unicode]
sitename = u'The title of my new Wiki'

# Where your mutable wiki pages are. You want to make regular
# backups of this directory.
data_dir = '/var/www/moin/mywiki/data/'

# Where read-only system and help page are. You might want to share
# this directory between several wikis. When you update MoinMoin,
# you can safely replace the underlay directory with a new one. This
# directory is part of MoinMoin distribution, you don't have to
# backup it.
data_underlay_dir = '/var/www/moin/mywiki/underlay/' 

finally restart httpd 

Code:
/sbin/service httpd restart
Browse to http://localhost/mywiki 

configure away !!</t>
<t tx="andelf.20100313122825.1236">http://202.118.17.187/nagios/ nagiosadmin a1b2c3d4e</t>
<t tx="andelf.20100313122825.1241">git://github.com/bittorrent/Helix.git

需要 bjam
bjam 包, 一个类似 make 的工具
boost-jam, 需要从 boost 下载
需要下载 boost 源码
然后在目录创建 boost-build.jam

-lcrypto 失败, 解决方法 libcrypto 改为 shared (Jamfile)
可能需要修改 libmysql++ 等地址及 include dir

$ bjam release dnadb=on

### By andelf
mysql_db: btdb
mysql_host: localhost
mysql_user: btuser
mysql_password: lovezcx
mysql_port: 3306

表名字需要察看代码.

总体来说, 很废柴. 就是个垃圾.</t>
<t tx="andelf.20100313122825.1242">建立新表

$ mysql -uroot -pxxxxx
&gt; create database xxxx;
&gt; show databases;
&gt; GRANT ALL ON employees.* TO manish@localhost IDENTIFIED BY "eagle" </t>
<t tx="andelf.20100313122825.1243"></t>
<t tx="andelf.20100319235445.1254">&gt;&gt;&gt; import sys
&gt;&gt;&gt; sys.path
['C:\\IronPython', 'C:\\IronPython\\Lib']
&gt;&gt;&gt; sys.path.append(r'C:\ModuleTestingWithPython\TwoCardPokerLib\bin\  Debug')
&gt;&gt;&gt; sys.path
['C:\\IronPython', 'C:\\IronPython\\Lib', 'C:\\ModuleTestingWithPython\\  TwoCardPokerLib\\bin\\Debug']
&gt;&gt;&gt;
&gt;&gt;&gt; import clr
&gt;&gt;&gt; dir()
['_', '__builtins__', '__doc__', '__name__', 'clr', 'site', 'sys']
&gt;&gt;&gt;
&gt;&gt;&gt; clr.AddReferenceToFile("TwoCardPokerLib.dll")
&gt;&gt;&gt; from TwoCardPokerLib import *
&gt;&gt;&gt; dir()</t>
<t tx="andelf.20100319235445.1255"></t>
<t tx="andelf.20100319235445.1256">$ sudo !!

以 root 帐户执行上一条命令。

$ python -m SimpleHTTPServer

利用 Python 搭建一个简单的 Web 服务器，可通过 http://$HOSTNAME:8000 访问。

:w !sudo tee %

在 Vim 中无需权限保存编辑的文件。

$ cd -

更改到上一次访问的目录。

$ ^foo^bar

将上一条命令中的 foo 替换为 bar，并执行。

$ cp filename{,.bak}

快速备份或复制文件。

$ mtr google.com

traceroute + ping。

$ !whatever:p

搜索命令历史，但不执行。

$ ssh-copy-id user@host

将 ssh keys 复制到 user@host 以启用无密码 SSH 登录。

$ ffmpeg -f x11grab -s wxga -r 25 -i :0.0 -sameq /tmp/out.mpg

把 Linux 桌面录制为视频。</t>
<t tx="andelf.20100323230925.1257"># add to /etc/httpd/conf/httpd.conf
# LoadModule python_module modules/mod_python.so
&lt;Location "/dreams"&gt;
    SetHandler python-program
    PythonHandler django.core.handlers.modpython
    PythonPath "['/var/www/']+sys.path"   # django project 位置
    SetEnv DJANGO_SETTINGS_MODULE dreams.settings
    PythonDebug On  # 发布时关掉
&lt;/Location&gt;
# 需要注意, 数据库文件权限. 模板位置设置等.</t>
<t tx="andelf.20100325195808.1258">一般 Zope 默认为 8080 端口
# 可能需要修改 iptables
# zopectl 命令, 或者 /etc/init.d/zope
需要加入 Zope 管理员用户
# zopectl adduser &lt;username&gt; &lt;pass&gt;

然后启动 Zope
在管理界面添加 Zope 实例. 修改 zope.conf

# ./zopectl -d start
# ./zopectl status　　
如果返回结果显示“program running; pid=****”，则说明实例程序已经正常运行。
# netstat -ln --tcp

配置文件zope.conf中，有一个locale的设置: 
locale zh_CN.UTF8
否则日期等会乱码 </t>
<t tx="andelf.20100325195808.1259">http://fledna.objectis.net/ fledna lovezcx Plone2.5
http://freeplone3.openia.net/maomao admin lovezcx
</t>
<t tx="andelf.20100325195808.1260">
# base_properties
fontBaseSize : 75%
fontSmallSize : 95%

/*设置站点显示宽度为780px,且居中显示;设置背景色和边框*/

#visual-portal-wrapper{
   width: 780px !important; /* max-width */
   background-color: white;
   border: 2px solid #2D70D7;
   margin: 0 auto;
  }


属性	说明
logoName	logo的名字（通过更改这里的名字，也是定制logo的另外一种方法）
fontFamily	备选字体族
fontBaseSize	基础的字体大小，控制整个Plone的字体
fontColor	字体颜色
fontSmallSize	小字体的大小
backgroundColor	背景颜色
linkColor	链接颜色
linkActiveColor	激活链接颜色
linkVisitedColor	访问过的链接颜色
borderWidth	边框宽
borderStyle	边框风格
borderStyleAnnotations	注释的边框类型
globalBorderColor	全局边框颜色
globalBackgroundColor	全局背景颜色
globalFontColor	全局字体颜色
headingFontFamily	大标题备选字体族
headingFontBaseSize	大标题基础大小
contentViewBorderColor	内容上方标签的边框颜色
contentViewBackgroundColor	内容上方标签的背景颜色
contentViewFontColor	内容上方标签的字体颜色
inputFontColor	输入框字体的颜色
textTransform	文本转换方法
evenRowBackgroundColor	偶数行的背景颜色
oddRowBackgroundColor	奇数行的背景颜色
notifyBorderColor	通知的边框颜色
notifyBackgroundColor	通知的背景颜色
discreetColor	离散区的颜色
helpBackgroundColor	提示的背景颜色
portalMinWidth	网站最小宽度
columnOneWidth	左边面板的宽
columnTwoWidth	右边面板的宽</t>
<t tx="andelf.20100325195808.1261">缓存加速
: CacheFu

目录 RSS 聚合 Tab 开启
: In the ZMI, go to portal_actions / object / syndication and then tick the Visible checkbox and click on the Save Changes button.

Wiki 行为开启
: 网站设置 -&gt; 标记 -&gt; Wiki behavior. Wiki 链接使用 ((XXxxx))

用户选项链接
: portal_actions / user and for 'preferences' and 'undo', click on each and select Visible and then click the "Save Changes" button.

居中, 限制宽度
#visual-portal-wrapper {
    margin: 2em auto 0 auto;
    width: 710px;
  }

锁定内容删除
: 找到被锁内容, url 后加入 /edit, 保存, 然后删除


</t>
<t tx="andelf.20100325195808.1262">包含站点链接, 用户登录后链接, Tab 等

portal_actions/portal_tabs/
可添加顶部 Tab 链接</t>
<t tx="andelf.20100331192249.1263">Enum 中, 带 s 的可 |

System
System.Data
System.Drawing
System.Management (WMI)
System.Environment
System.Diagnostics
System.XML
System.Web
System.IO
Microsoft.Win32
System.Threading
System.Text
System.Windows.Forms
System.Windows (WPF base)
System.ServiceModel</t>
<t tx="andelf.20100331192249.1265">ipy.exe -D -X:TabCompletion -X:ColorfulConsole

# assembly =&gt; compiled code
# when use, must add reference to assembly!(except System, mscorlib, which already)
&gt;&gt;&gt; import clr
&gt;&gt;&gt; clr.AddReference('System.Drawing')
&gt;&gt;&gt; from System.Drawing import Color, Point
&gt;&gt;&gt; Point(10, 30)
&lt;System.Drawing.Point object at 0x000000000000002B [{X=10,Y=30}]&gt;

# Simple Windows Forms App
clr.AddReference('System.Drawing')
from System.Drawing import Color, Point
clr.AddReference('System.Windows.Forms')
from System.Windows.Forms import Application, Button, Form
form = Form()
form.Text = "Hello World"
button = Button(Text="Click Me")
form.Controls.Add(button)  # Add button to form
x, y = 0, 0
def click(sender, event): # click handler
    global x,y
    button.Location = Point(x,y)
    x+= 5
    y+= 5
button.Click += click
Application.Run(form)  # start app

可以导入 tutorial 目录下的 winforms.py 这样 console 会设置另个线程, GUI 不会 block shell. 可以使用 form.Show()
但是 modal(模态) 的 ShowDialog() 会 Block
</t>
<t tx="andelf.20100331192249.1266">@language ruby</t>
<t tx="andelf.20100331192249.1267">a.class =&gt; class/type of a
a.methods =&gt; dir(a)

Object.methods
</t>
<t tx="andelf.20100331192249.1268">string = 'Hello World'
string.ToUpper()  # Error
import clr # 提供 .Net Runtime 交互
string.ToUppeer()

System.String == str
from __future__ import division # 依然可用
# / //
System.Int32 == int
System.Double == float
System.Object == object
System.Boolean == bool</t>
<t tx="andelf.20100331192249.1269">abs enumerate len isinstance max min open range reversed sorted sum zip

etc.
</t>
<t tx="andelf.20100331192249.1270">python use lexical scoping</t>
<t tx="andelf.20100331192249.1271">import sys
sys.path.append("d:\\python26\\lib")

一些 C 模块使用 C# 内建, re cStringIO, etc</t>
<t tx="andelf.20100331192249.1272">OS -&gt; CLR(Common Language Runtime) -&gt; 
BCL(Basic Class Library) [System, System.Collections, System.Io...] -&gt;
Windows Forms, WIndows Services, ASP.NET

Windows Forms:
    Application, Form class

form = Form(Text="Hello")
Application.Run(form)

所有 GUI 元素都在 System.Windows.Forms 名字空间. 继承自 Control 类(直接或间接)
Text, BackColor, ForeColor, Font, Size, Location, Height, Width 等属性

Control.Controls =&gt; ControlCollection, child controls
.Add(xx) 方法 
len()
.AddRange(Array(xxx)) # can't use list
也可以使用 child.Parent = form, 自动加入 Controls 容器

System.Drawing.Color
Color.Red =&gt; R, G, B, A 属性
Color.FromArgb # 接受多参数或 Int32

边框样式
Form =&gt; FormBorderStyle ,(Enum, 位于 Forms NS) FixedSingle, Fixed3D, FixedToolWindow, FixedDialog, None
Control =&gt; BorderStyle , Fixed3D, FixedSingle, None

字体 System.Drawing NS 下的 Font FontStyle
Font("Verdana", 16, FontStyle.Bold | FontStyle.Italic)

对齐 label.TextAlign = ContentAlignment.MiddleCenter
位置 form.Top, .Left 可设置, Right Bottom 为只读属性
不透明度 form.Opacity = 0.7
.Location = Point(x,x)

基于事件的编程
委派( delegate ): are classes that wrap methods so that they can be called like functions -&gt;
this.panel1.MouseMove += new System.Windows.Forms.MouseEventHandler(this.xxx_handler) 
xxx.MouseMove += handler
在 Python 中使用
def onMouseMove(sender, event):
    prinnt event.X, event.Y
form.MouseMove += onMouseMove

随机数 System.Random([int seed]). r.Next([maxV, minV]), NextBytes, NextDouble() -&gt; (0,1)

继承 .Net 类型
class MainForm(Form):
    def __init__(self):
        # Controls 不必都命名到 self.
        self.AutoSize = True
        ....
mainForm = MainForm()
Application.Run(mainForm)

        </t>
<t tx="andelf.20100331192249.1273">.Net 使用 interface, IList, IDictionary
Python 使用 protocol, magic methods
x = s[key], s.__getitem__(key)
s[key] = x, s.__setitem__(key, x)
del s[key], s.__delitem__(key)

MVC 模式
model: OO representation of data
view: layout of app, gui
controller: change model, mediate between view and model

View Layer: user interface
多 Tab UI 使用 TabControl 控件, 其中页面使用 TagPage 控件

子 control 在父 control 布局使用 .Dock 和 .Anchor 控制, 值为 Enum
DockStyle.Bottom, Fill(填充可用空间), Left, None, Top(比如菜单栏,工具栏)
AnchorStyles.Bottom, Left, None, Right, Top # 注意 s

Form.MinimumSize= Size(x,y) #  最小
Application.EnableVisualStyles() # 启用主题

command pattern, 如 QAction

ShowDialog() -&gt; DialogResult.'Abort', 'Cancel', 'Ignore', 'No', 'None', 'OK', 'Retry', 'Yes'

# 路径
System.IO.Path - os.path
&gt;&gt;&gt; from System.IO import Path
&gt;&gt;&gt; Path.GetDirectoryName("c:\\boot.ini")
'c:\\'
&gt;&gt;&gt; Path.GetFileName("c:\\boot.ini")
'boot.ini'
Application.ExecutablePath # =&gt; 执行文件名
Path.Combile(Path, relative_path)

文件对话框使用
# SavaFileDialog 继承自 FileDialog
a = SaveFileDialog()
a.ShowDialog() # =&gt; System.Windows.Forms.DialogResult.OK
a.FileName # =&gt; 'D:\\IronPython-2.6\\License.html'
# 其他 .InitialDirectory(str), .Filter(str), .Title

写入文件
System.IO.StreamWriter .StreamReader
writer = StreamWriite('filename.txt')
writer.Write("Some text")
writer.Close()
# IO.File 方法: .ReadAllText WriteAllText etc. 需要提供 FileAccess
IO.File.Exists IO.Directory.Exists 可判断文件或目录

消息框
Forms 下: MessageBox, MessageBoxButtons, MessageBoxIcon
MessageBox.Show(.....) # 多重载 =&gt; DialogResult
MessageBox.Show("Hello World", "!!", MessageBoxButtons.AbortRetryIgnore)
MessageBox.Show("Hello World", "!!", MessageBoxButtons.AbortRetryIgnore, MessageBoxIcon.Asterisk)

菜单项目
.Dock = DockStyle.Top
顶层菜单 MenuStrip, 菜单条目 ToolStripMenuItem
saveItem = ToolStripMenuItem()
saveItem.Text = '&amp;Save...'
saveItem.ShortcutKeys = Keys.S | Keys.Control
# 使用 lambda: item.Click += lambda sender, event: command.execute()
fileMenu = ToolStripMenuItem()
fileMenu.Text = '&amp;File'
fileMenu.DropDownItems.Add(saveItem)
# 顶层
menuStrip = MenuStrip()
menuStrip.Items.Add(fileMenu)
# 工具栏使用 ToolStrip, 不建议使用过时的 ToolBar
# 单个按钮使用 ToolStripButton, 工具栏图标可以使用 .Image=Bitmap(..) [System.Drawing, 可以使用文件路径初始化]
# 然后设置 .DisplayStyle 为 ToolStripItemDisplayStyle.Image
###Bitmap 可用于  PictureBox 控件. 可以使用方法: .Save(filename, ImageFormat.??) .GetPixel(X,Y) .SetPixel(..)
button.TransparentColor = Color.Magenta # 一般设置法?? 没这个属性
button.ToolTipText = 'Save'
toolbar= ToolStrip()
toolbar.Items.Add(button)
toolbar.Dock = DockStyle.Top # 默认
toolbar.GripStyle = ToolStripGripStyle.Hidden # 去掉位置调整 handle
</t>
<t tx="andelf.20100331192249.1275">Recent versions of ubuntu ship with upstart, which is the least modern of the modern system facilities, but at least does allow you to specify that you want to run an application instead of just start it.

Here’s an example upstart script I wrote for a twisted app that I needed to keep running on an ubuntu box:

"""
description	"useful description"
author		"Dustin Sallings &lt;dustin@spy.net&gt;"

start on runlevel 2
start on runlevel 3

stop on runlevel 0
stop on runlevel 1
stop on runlevel 4
stop on runlevel 5
stop on runlevel 6

chdir /path/to/project/directory
exec /usr/bin/twistd --uid=daemonuser --syslog -ny project.tac
respawn
"""
Note that this relies on twistd to change the uid since it’s more straightforward than using su or sudo to change the userid before invoking the start script.

#####################################3

Generic Linux
On any vanilla Linux system (that is, systems that don’t use a modern init as well as other systems with similar init mechanisms), you can do something similar to the above with /etc/inittab, although it has no implicit argument, so you can directly invoke sshd.

For example, the following works on my RedHat 5.4 box:

sshd:2345:respawn:/usr/sbin/sshd -DAfter adding this entry (and, of course, making sure you don’t already have an sshd server running), you can run /sbin/telinit q to get it to reload.

#########################################

FreeBSD
FreeBSD, and most BSDs for that matter have an init that will supervise processes defined in /etc/ttys. This is about as primitive as it can get, but it works fine.

For example, if you wanted to run sshd on a FreeBSD box and make sure that it can never die, you could add the following to /etc/ttys:

sshd "/usr/local/etc/sshd_tty" unknown onThe script, /usr/local/etc/sshd_tty exists primarily to eat the implicit argument init passes to the program it runs. For this, I used the following script:

#!/bin/sh
exec /usr/sbin/sshd -D
/etc/ttys basically exists for getty type services, but it’s suitable for any other process that needs to be supervised.

After any modification to /etc/ttys, you must run init q for your changes to take effect.

</t>
<t tx="andelf.20100331192249.1276"># ?? 使用前面的 Python exception 即可
Exception System.Exception
StandardError SystemException
IOError IOException
UnicodeEncodeError EncoderFallbackException
UnicodeDecodeError DecoderFallbackException
MemoryError OutOfMemoryException
Warning WarningException
StopIteration InvalidOperationException subtype
WindowsError Win32Exception
EOFError EndOfStreamException
NotImplementedError  NotImplementedException
AttributeError MissingMemberException
IndexError IndexOutOfRangeException
KeyError System.Collections.Generic.KeyNotFoundException
ArithmeticError ArithmeticException
OverflowError OverflowException
ZeroDivisionError DivideByZeroException
TypeError ArgumentTypeException</t>
<t tx="andelf.20100331192249.1279">Bitmap 继承自 Image

# also MenuStrip
&gt;&gt;&gt; help(toolbar.Items.Add)
Help on built-in function Add

 |  Add(...)
 |          ToolStripItem Add(self, str text, Image image, EventHandler onClick)
 |          int Add(self, ToolStripItem value)
 |          ToolStripItem Add(self, str text, Image image)
 |          ToolStripItem Add(self, str text)
 |          ToolStripItem Add(self, Image image)

&gt;&gt;&gt; help(imglist.Images.Add)
Help on built-in function Add

 |  Add(...)
 |          Add(self, Image value)
 |          int Add(self, Image value, Color transparentColor)
 |          Add(self, Icon value)
 |          Add(self, str key, Image image)
 |          Add(self, str key, Icon icon)
 </t>
<t tx="andelf.20100331192249.1280">Python 函数修饰符
def wrapper(function):
    def inner(*args):
        if None in args:
            print "Warnning: None in arguments"
        print "From Wrapper"
        return function(*args)
    return inner
wrapped = wrapper(somefunction)
@wrapper
def xxx():
    pass

##############################
.Net 中 XML 相关 ns
System.XML  XMLReader, XMLWriter
System.XML.Schema  xsd
System.XML.Serialization
System.XML.XPath  XQuery 1.0, XPath 2.0
System.XML.Xsl

</t>
<t tx="andelf.20100331192249.1281"></t>
<t tx="andelf.20100331192249.1282">Google Go：初级读本
Tags: Go, golang, google 
from http://www.infoq.com/cn/articles/google-go-primer

作者 Samuel Tesla 译者 黄璜 发布于 2010年4月2日 上午12时5分

Google最近发布新型的编程语言，Go。它被设计为将现代编程语言的先进 性带入到目前仍由C语言占统治地位的系统层面。然而，这一语言仍在试验阶段并在不断演变。

Go语言的设计者计划设计一门简单、高效、安全和 并发的语言。这门语言简单到甚至不需要有一个符号表来进行词法分析。它可以快速地编译；整个工程的编译时间在秒以下的情况是常事。它具备垃圾回收功能，因 此从内存的角度是安全的。它进行静态类型检查，并且不允许强制类型转换，因而对于类型而言是安全的。同时语言还内建了强大的并发实现机制。

阅读Go
Go的语法传承了与C一样的风格。程序由函数组成，而函数体是一系列的语句序列。一段代码块用花括号括起来。这门语言保留有限的关键字。表达式使用 同样的中缀运算符。语法上并无 太多出奇之处。

Go语言的作者在设计这一语言时坚持一个单一的指导原则：简单明了至上。一些新的语法构件提供了简明地表达一些约定俗成的概 念的方式，相较之下用C表达显得冗长。而其他方面则是针对几十年的使用所呈现出来的一些不合理的语言选择作出了改进。

变量声明
变量是如下声明的：

var sum int // 简单声明var total int = 42 // 声明并初始化最值得注意的是，这些声明里的类型跟在变量名的后面。乍一看有点怪，但这更清晰明了。比如，以下面这个C片段来说：

int* a, b;它并明了，但这里实际的意思是a是一个指针，但b不是。如果要将两者都声明为指针，必须要重复星号。然后在Go语言里，通过如下方式可以将两者都 声明为指针：

var a, b *int如果一个变量初始化了，编译器通常能推断它的类型，所以程序员不必显式的敲出来：

var label = "name"然而，在这种情况下var几乎显得是多余了。因此，Go的作者引入了一个新的运算符来 声明和初始化一个新的变量：

name := "Samuel"条件语句
Go语言当中的条件句与C当中所熟知的if-else构造一样，但条件不需要被打包在括号内。这样可以减少阅读代码时的视觉上的混乱。

括号并不是唯一被移去的视觉干扰。在条件之间可以包括一个简单的语句，所以如下的代码：

result := someFunc();if result &gt; 0 {	/* Do something */} else {	/* Handle error */}可以被精简成：

if result := someFunc(); result &gt; 0 { 	/* Do something */} else {	/* Handle error */}然而，在后面这个例子当中，result只在条件块内部有效&amp;mdash;&amp;mdash;而前者 中，它在整个包含它的上下文中都是可存取的。

分支语句
分支语句同样是似曾相识，但也有增强。像条件语句一样，它允许一个简单的语句位于分支的表达式之前。然而，他们相对于在C语言中的分支而言走得更远。

首先，为了让分支跳转更简明，作了两个修改。情况可以是逗号分隔的列表，而fall-throuth也不再是默认的行为。

因此，如下的C代码：

int result;switch (byte) { case 'a': case 'b':   {     result = 1     break   } default:   result = 0}在Go里就变成了这样：

var result intswitch byte {case 'a', 'b':  result = 1default:  result = 0}第二点，Go的分支跳转可以匹配比整数和字符更多的内容，任何有效的表达式都可以作为跳转语句值。只要它与分支条件的类型是一样的。

因此如下的C代码：

int result = calculate();if (result &lt; 0) {  /* negative */} else if (result &gt; 0) {  /* positive */} else {  /* zero */}在Go里可以这样表达：

switch result := calculate(); true {case result &lt; 0:  /* negative */case result &gt; 0:  /* positive */default:  /* zero */}这些都是公共的约定俗成，比如如果分支值省略了，就是默认为真，所以上面的代码可以这样写：

switch result := calculate(); {case result &lt; 0:  /* negative */case result &gt; 0:  /* positive */default:  /* zero */}循环
Go只有一个关键字用于引入循环。但它提供了除do-while外C语言当中所有可用的循环方式。

条件
for a &gt; b { /* ... */ }初始，条件和步进
for i := 0; i &lt; 10; i++ { /* ... */ }范围
range语句右边的表达式必须是array，slice，string或者map， 或是指向array的指针，也可以是channel。

for i := range "hello" { /* ... */ }无限循环
for { /* ever */ }函数
声明函数的语法与C不同。就像变量声明一样，类型是在它们所描述的术语之后声明的。在C语言中：

int add(int a, b) { return a + b }在Go里面是这样描述的：

func add(a, b int) int { return a + b }多返回值
在C语言当中常见的做法是保留一个返回值来表示错误(比如，read()返回0)，或 者保留返回值来通知状态，并将传递存储结果的内存地址的指针。这容易产生了不安全的编程实践，因此在像Go语言这样有良好管理的语言中是不可行的。

认识到这一问题的影响已超出了函数结果与错误通讯的简单需求的范畴，Go的作者们在语言中内建了函数返回多个值的能力。

作为例子，这个函数将返回整数除法的两个部分：

func divide(a, b int) (int, int) {  quotient := a / b  remainder := a % b  return quotient, remainder}有了多个返回值，有良好的代码文档会更好&amp;mdash;&amp;mdash;而Go允许你给返回值命名，就像参数一样。你可以对这些返回的变量赋值，就像其它的变量一样。所以我们可以重写divide：

func divide(a, b int) (quotient, remainder int) {  quotient = a / b  remainder = a % b  return}多返回值的出现促进了"comma-ok"的模式。有可能失败的函数可以返回第二个布尔结果来表示成功。作为替代，也可以返回一个错误对象，因此像下面这样的代码也就不见怪了：

if result, ok := moreMagic(); ok {  /* Do something with result */}匿名函数
有了垃圾收集器意味着为许多不同的特性敞开了大门&amp;mdash;&amp;mdash;其中就包括匿名函数。Go为声明匿名函数提供了简单的语法。像许多动态语言一样，这些函数在它们被定义的范围内创建了词法闭包。

考虑如下的程序：

func makeAdder(x int) (func(int) int) {  return func(y int) int { return x + y }}func main() {  add5 := makeAdder(5)  add36 := makeAdder(36)  fmt.Println("The answer:", add5(add36(1))) //=&gt; The answer: 42}基本类型
像C语言一样，Go提供了一系列的基本类型，常见的布尔，整数和浮点数类型都具备。它有一个Unicode的字符串类型和数组类型。同时该语言还引入了两 种新的类型：slice 和map。

数组和切片
Go语言当中的数组不是像C语言那样动态的。它们的大小是类型的一部分，在编译时就决定了。数组的索引还是使用的熟悉的C语法(如 a[i])，并且与C一样，索引是由0开始的。编译器提供了内建的功能在编译时求得一个数组的长度 (如 len(a))。如果试图超过数组界限写入，会产生一个运行时错误。

Go还提供了切片（slices），作为数组的变形。一个切片(slice)表示一个数组内的连续分段，支持程序员指定底层存储的明确部分。构建一个切片 的语法与访问一个数组元素类似：

/* Construct a slice on ary that starts at s and is len elements long */s1 := ary[s:len]/* Omit the length to create a slice to the end of ary */s2 := ary[s:]/* Slices behave just like arrays */s[0] == ary[s] //=&gt; true// Changing the value in a slice changes it in the arrayary[s] = 1s[0] = 42ary[s] == 42 //=&gt; true该切片所引用的数组分段可以通过将新的切片赋值给同一变量来更改：

/* Move the start of the slice forward by one, but do not move the end */s2 = s2[1:]/* Slices can only move forward */s2 = s2[-1:] // this is a compile error切片的长度可以更改，只要不超出切片的容量。切片s的容量是数组从s[0]到数组尾端的大小，并由内建的cap()函数返回。一个切片的长度永远不能超出它的容量。

这里有一个展示长度和容量交互的例子：

a := [...]int{1,2,3,4,5} // The ... means "whatever length the initializer has"len(a) //=&gt; 5/* Slice from the middle */s := a[2:4] //=&gt; [3 4]len(s), cap(s) //=&gt; 2, 3/* Grow the slice */s = s[0:3] //=&gt; [3 4 5]len(s), cap(s) //=&gt; 3, 3/* Cannot grow it past its capacity */s = s[0:4] // this is a compile error通常，一个切片就是一个程序所需要的全部了，在这种情况下，程序员根本用不着一个数组，Go有两种方式直接创建切片而不用引用底层存储：

/* literal */s1 := []int{1,2,3,4,5}/* empty (all zero values) */s2 := make([]int, 10) // cap(s2) == len(s2) == 10Map类型
几乎每个现在流行的动态语言都有的数据类型，但在C中不具备的，就是dictionary。Go提供了一个基本的dictionary类型叫做map。下 面的例子展示了如何创建和使用Go map：

m := make(map[string] int) // A mapping of strings to ints/* Store some values */m["foo"] = 42m["bar"] = 30/* Read, and exit program with a runtime error if key is not present. */x := m["foo"]/* Read, with comma-ok check; ok will be false if key was not present. */x, ok := m["bar"]/* Check for presence of key, _ means "I don't care about this value." */_, ok := m["baz"] // ok == false/* Assign zero as a valid value */m["foo"] = 0;_, ok := m["foo"] // ok == true/* Delete a key */m["bar"] = 0, false_, ok := m["bar"] // ok == false面向对象
Go语言支持类似于C语言中使用的面向对象风格。数据被组织成structs，然后定义操作这些structs的函数。类似于Python，Go语言提供 了定义函数并调用它们的方式，因此语法并不会笨拙。

Struct类型
定义一个新的struct类型很简单：

type Point struct {  x, y float64}现在这一类型的值可以通过内建的函数new来分配，这将返回一个指针，指向一块内存单元，其所占内存槽初始化为零。

var p *Point = new(Point)p.x = 3p.y = 4这显得很冗长，而Go语言的一个目标是尽可能的简明扼要。所以提供了一个同时分配和初始化struct的语法：

var p1 Point = Point{3,4}  // Valuevar p2 *Point = &amp;Point{3,4} // Pointer方法
一旦声明了类型，就可以将该类型显式的作为第一个参数来声明函数：

func (self Point) Length() float {  return math.Sqrt(self.x*self.x + self.y*self.y);}这些函数之后可作为struct的方法而被调用：

p := Point{3,4}d := p.Length() //=&gt; 5方法实际上既可以声明为值也可以声明为指针类型。Go将会适当的处理引用或解引用对象，所以既可以对类型T，也可以对类型*T声明方式，并合理地使用它们。

让我们为Point扩展一个变换器：

/* Note the receiver is *Point */func (self *Point) Scale(factor float64) {  self.x = self.x * factor  self.y = self.y * factor}然后我们可以像这样调用：

p.Scale(2);d = p.Length() //=&gt; 10很重要的一点是理解传递给MoveToXY的self和其它的参数一样，并且是值传递，而不是引用传递。如果它被声明为Point，那么在方法内修改的struct就不再跟调用方的一样&amp;mdash;&amp;mdash;值在它们传递给方法的时候被 拷贝，并在调用结束后被丢弃。

接口
像Ruby这样的动态语言所强调面向对象编程的风格认为对象的行为比哪种对象是动态类型（duck typing）更为重要。Go所 带来的一个最强大的特性之一就是提供了可以在编程时运用动态类型的思想而把行为定义的合法性检查的工作推到编译时。这一行为的名字被称作接口。

定义一个接口很简单：

type Writer interface {  Write(p []byte) (n int, err os.Error)}这里定义了一个接口和一个写字节缓冲的方法。任何实现了这一方法的对象也实现了这一接口。不需要像Java一样进行声明，编译器能推断出来。这既给予了动态类型的表达能力又保留了静态类型检查的安全。

Go当中接口的运作方式支持开发者在编写程序的时候发现程序的类型。如果几个对象间存在公共行为，而开发者想要抽象这种行为，那么它就可以创建一个接口并使用它。

考虑如下的代码：

// Somewhere in some code:type Widget struct {}func (Widget) Frob() { /* do something */ }// Somewhere else in the code:type Sprocket struct {}func (Sprocket) Frob() { /* do something else */ }/* New code, and we want to take both Widgets and Sprockets and Frob them */type Frobber interface {  Frob()}func frobtastic(f Frobber) { f.Frob() }需要特别指出的很重要的一点就是所有的对象都实现了这个空接口：

interface {}继承
Go语言不支持继承，至少与大多数语言的继承不一样。并不存在类型的层次结构。相较于继承，Go鼓励使用组合和委派，并为此提供了相应的语法甜点使其更容易接受。

有了这样的定义：

type Engine interface {  Start()  Stop()}type Car struct {  Engine}于是我可以像下面这样编写：

func GoToWorkIn(c Car) {  /* get in car */  c.Start();  /* drive to work */  c.Stop();  /* get out of car */}当我声明Car这个struct的时候，我定义了一个匿名成员。这是一 个只能被其类型识别的成员。匿名成员与其它的成员一样，并有着和类型一样的名字。因此我还可以写成c.Engine.Start()。 如果Car并没有其自身方法可以满足调用的话,编译器自动的会将在Car上的调用委派给它的Engine上面的方法。

由匿名成员提供的分离方法的规则是保守的。如果为一个类型定义了一个方法，就使用它。如果不是，就使用为匿名成员定义的方法。如果有两个匿名成员都提供一 个方法，编译器将会报错，但只在该方法被调用的情况下。

这种组合是通过委派来实现的，而不是继承。一旦匿名成员的方法被调用，控制流整个都被委派给了该方法。所以你无法做到和下面的例子一样来模拟类型层次：

type Base struct {}func (Base) Magic() { fmt.Print("base magic") }func (self Base) MoreMagic() {   self.Magic()  self.Magic()}type Foo struct {  Base}func (Foo) Magic() { fmt.Print("foo magic") }当你创建一个Foo对象时，它将会影响Base的两个方法。然而，当你调用MoreMagic时， 你将得不到期望的结果：

f := new(Foo)f.Magic() //=&gt; foo magicf.MoreMagic() //=&gt; base magic base magic并发
Go的作者选择了消息传递模型来作为推荐的并发编程方法。该语言同样支持共享内存，然后作者自有道理：

不要通过共享内存来通信，相反，通过通信来共享内存。该语言提供了两个基本的构件来支持这一范型：goroutines和channels。

Go例程
Goroutine是轻量级的并行程序执行路径，与线程，coroutine或者进程类似。然而，它们彼此相当不同，因此Go作者决定给它一个新的名字并 放弃其它术语可能隐含的意义。

创建一个goroutine来运行名为DoThis的函数十分简单：

go DoThis() // but do not wait for it to complete匿名的函数可以这样使用：

go func() {  for { /* do something forever */ }}() // Note that the function must be invoked这些goroutine将会通过Go运行时而映射到适当的操作系统原语（比如，POSIX线程）。

通道类型
有了goroutine，代码的并行执行就容易了。然而，它们之间仍然需要通讯机制。Channel提供一个FIFO通信队列刚好能达到这一目的。

以下是使用channel的语法：

/* Creating a channel uses make(), not new - it was also used for map creation */ch := make(chan int)/* Sending a value blocks until the value is read */ch &lt;- 4/* Reading a value blocks until a value is available */i := &lt;-ch举例来说，如果我们想要进行长时间运行的数值计算，我们可以这样做：

ch := make(chan int)go func() {  result := 0  for i := 0; i &lt; 100000000; i++ {    result = result + i  }  ch &lt;- result}()/* Do something for a while */sum := &lt;-ch // This will block if the calculation is not done yetfmt.Println("The sum is:", sum)channel的阻塞行为并非永远是最佳的。该语言提供了两种对其进行定制的方式：

程序员可以指定缓冲大小&amp;mdash;&amp;mdash;想缓冲的channel发送消息不会阻塞，除非缓冲已满，同样从缓冲的channel读取也不会阻塞，除非缓冲是空的。 
该语言同时还提供了不会被阻塞的发送和接收的能力，而操作成功是仍然要报告。 
/* Create a channel with buffer size 5 */ch := make(chan int, 5)/* Send without blocking, ok will be true if value was buffered */ok := ch &lt;- 42/* Read without blocking, ok will be true if a value was read */val, ok := &lt;-ch包
Go提供了一种简单的机制来组织代码：包。每个文件开头都会声明它属于哪一个包，每个文件也可以引入它所用到的包。任何首字母大写的名字是由包导出的，并可以被其它的包所使用。

以下是一个完整的源文件：

package geometryimport "math"/* Point is capitalized, so it is visible outside the package. */type Point struct {  /* the fields are not capitalized, so they are not visible     outside of the package */  x, y float64 }/* These functions are visible outside of the package */func (self Point) Length() float64 {  /* This uses a function in the math package */  return math.Sqrt(self.x*self.x + self.y*self.y)}func (self *Point) Scale(factor float64) {  self.setX(self.x * factor)  self.setY(self.y * factor)}/* These functions are not visible outside of the package, but can be   used inside the package */func (self *Point) setX(x float64) { self.x = x }func (self *Point) setY(y float64) { self.y = y }缺失
Go语言的作者试图将代码的清晰明确作为设计该语言作出所有决定的指导思想。第二个目标是生产一个编译速度很快的语言。有了这两个标准作为方向，来 自其它语言的许多特性就不那么适合了。许多程序员会发现他们最爱的语言特性在Go当中不存在，确实，有很多人也许会觉得Go语言由于缺乏其它语言所共有的 一些特性，还不太可用。

这当中两个缺失的特性就是异常和泛型，两者在其它语言当中都是非常有用的。而它们目前都不是Go的一分子。但因为该 语言仍处于试验阶段，它们有可能最终会加入到语言里。然而，如果将Go与其它语言作比较的话，我们应当记住Go是打算在系统编程层面作为C语言的替代。明 白这一点的话，那么缺失的这许多特性倒也不是很大的问题了。

最后，因为这一语言才刚刚发布，因此它没有什么类库或工具可以用，也没有Go语 言的集成编程环境。Go语言标准库有些有用的代码，但这与更为成熟的语言比 起来仍还是很少的。

查看英文原文：Google Go: A Primer。


--------------------------------------------------------------------------------

感谢马国耀对本文的审校。
</t>
<t tx="andelf.20100331192249.1283">@language c</t>
<t tx="andelf.20100331192249.1284">XMLWriterSettings 属性
CheckCharacters True
CloseOutput False
ConformanceLevel Document
Encoding Encoding.UTF8 (Encoding lives in the 
System.Text namespace, and is a useful class.)
Indent False
IndentChars Two spaces
NewLineChars \r\n (carriage return, new line)
NewLineHandling Replace
NewLineOnAttributes False
OmitXmlDeclaration False

clr.AddReference('System.Xml')
from System.Xml import XmlWriter, XmlWriterSettings
 
settings = XmlWriterSettings()
settings.Indent = True
settings.IndentChars = '    ' # four spaces


###  The properties of XmlReaderSettings and the default values

CheckCharacters True
ConformanceLevel ConformanceLevel.Document
IgnoreComments False
IgnoreProcessingInstructions False
IgnoreWhitespace False
LineNumberOffset 0
LinePositionOffset 0
NameTable None
ProhibitDtd True
Schemas An empty XmlSchemaSet object
ValidationFlags ProcessIdentityConstraints enabled
ValidationType ValidationType.None
XmlResolver A new XmlUrlResolver object</t>
</tnodes>
</leo_file>
