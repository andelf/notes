<?xml version="1.0" encoding="utf-8"?>
<?xml-stylesheet ekr_test?>
<leo_file>
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5">
	<global_window_position top="298" left="206" height="526" width="800"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="andelf.20090811095526.1230" str_leo_pos="1,0,0,0,1"><vh>@chapters</vh></v>
<v t="andelf.20090811095526.1229"><vh>Python</vh>
<v t="andelf.20090811095526.1231"><vh>Natural Language Processing with Python</vh>
<v t="andelf.20090811130147.1247"><vh>Language Processing and Python</vh>
<v t="andelf.20090811130147.1248"><vh>Computing with Language: Texts and Words</vh>
<v t="andelf.20090811130147.1249"><vh>Getting Started with NLTK</vh></v>
<v t="andelf.20090811130147.1250"><vh>Searching Text</vh></v>
</v>
</v>
</v>
<v t="andelf.20090816181355"><vh>Python 专家编程</vh>
<v t="andelf.20090816181506"><vh>入门</vh>
<v t="andelf.20090816181636"><vh>安装 Python</vh></v>
<v t="andelf.20090816182421"><vh>Python 提示符</vh></v>
<v t="andelf.20090816184012"><vh>安装 setuptools</vh></v>
<v t="andelf.20090816184037"><vh>工作环境</vh>
<v t="andelf.20090816184321"><vh>vim</vh></v>
<v t="andelf.20090816184321.1"><vh>其他</vh></v>
</v>
</v>
<v t="andelf.20090816184516"><vh>语法最佳实践-类之下</vh>
<v t="andelf.20090816184516.1"><vh>List Comprehensions</vh></v>
<v t="andelf.20090816184551"><vh>迭代器和生成器</vh>
<v t="andelf.20090816185830"><vh>典型生成器模板</vh></v>
<v t="andelf.20090816220139"><vh>协程</vh></v>
</v>
</v>
</v>
</v>
<v t="andelf.20090819004359" a="E"><vh>Blender</vh>
<v t="andelf.20090819004359.1" a="TV"><vh>Keyshortcuts</vh></v>
</v>
</vnodes>
<tnodes>
<t tx="andelf.20090811095526.1229"></t>
<t tx="andelf.20090811095526.1230"></t>
<t tx="andelf.20090811095526.1231">Natural Language Processing with Python
自然语言处理

by Steven Bird, Ewan Klein, and Edward Loper

NLP = Natural Language Processing

NLTK
NLTK was originally created in 2001 as part of a computational linguistics course in the Department of Computer and Information Science at the University of Pennsylva-nia. 

Download at http://www.nltk.org/

</t>
<t tx="andelf.20090811130147.1247"></t>
<t tx="andelf.20090811130147.1248"></t>
<t tx="andelf.20090811130147.1249">安装 NLTK 后, 在 Python shell 输入

import nltk
nltk.download()

选择要安装的包. (book)

然后使用
from nltk.book import *
导入该模块, 以及其中数据.

In [17]: from nltk.book import *
*** Introductory Examples for the NLTK Book ***
Loading text1, ..., text9 and sent1, ..., sent9
Type the name of the text or sentence to view it.
Type: 'texts()' or 'sents()' to list the materials.
text1: Moby Dick by Herman Melville 1851
text2: Sense and Sensibility by Jane Austen 1811
text3: The Book of Genesis
text4: Inaugural Address Corpus
text5: Chat Corpus
text6: Monty Python and the Holy Grail
text7: Wall Street Journal
text8: Personals Corpus
text9: The Man Who Was Thursday by G . K . Chesterton 1908</t>
<t tx="andelf.20090811130147.1250">在 Moby Dick 中查找单词 monstrous.

&gt;&gt;&gt; text1.concordance("monstrous")</t>
<t tx="andelf.20090816181355">@language python</t>
<t tx="andelf.20090816181506"></t>
<t tx="andelf.20090816181636">=Python 实现=

 * CPython
 * Jython
 * IronPython
 * PyPy
 * PyS60 (Python 2.2.2)

=Linux 下安装=

apt-get install python  # Debian-based
urpmi python # rpm-based
emerge python # Gentoo
pcaman -S python # Arch Linux
....

同时还可能需要

python-dev
 : Python 头文件, 用于编译 C  模块
python-profiler
 : non-GPL modules (for Debian or Ubuntu)
gcc
 : 用于编译 C 代码
....

==从源码编译==

需要 make 以及 gcc 等

=Windows 下安装=

最好安装 Mingw, MSYS

=Mac OS X 下安装=

gcc, MacPorts

</t>
<t tx="andelf.20090816182421">
Ctrl+D 用于在 Linux 和 Mac 下结束 Python 提示符.
Ctrl+Z act the same in Win32

=自定义交互环境=

交互命令行启动时会查找 PYTHONSTARTUP 环境变量, 并执行该文件.
使用 readline 模块提供自动完成.

# python startup file
import readline
import rlcompleter
import atexit
import os
# tab completion
readline.parse_and_bind('tab: complete')
# history file
histfile = os.path.join(os.environ['HOME'], '.pythonhistory')
try:
    readline.read_history_file(histfile)
except IOError:
    pass
atexit.register(readline.write_history_file, histfile)
del os, histfile, readline, rlcompleter 

将改文件保存到用户主目录, 文件名为 .pythonatartup
然后为当前用户加入 PYTHONSTARTUP 环境变量

例如 export PYTHONSTARTUP=~/.pythonstartup

=iPython: 高级交互环境=

 * 动态对象检查
 * 提示符下访问系统 shell
 * 剖析代码性能
 * 调试功能

参考: http://ipython.scipy.org/doc/manual/index.html

</t>
<t tx="andelf.20090816184012">=安装 setuptools=

类似 Perl 的 CPAN 系统.
它基于
 * PyPI (Python Package Index), 前身是 Cheeseshop
 * distutils

Say "setuptools is to Python what apt is to Debian".

安装方法
$ wget http://peak.telecommunity.com/dist/ez_setup.py
$ python ez_setup.py setuptools

如果已经安装需要升级, 则可以使用 -U 参数, 代表升级
$ python ez_setup.py -U setuptools

使用
sudo easy_install py

==使用 MinGW==
在 python-installation-path\lib\distutils  目录创建文件 distutils.cfg, 写入
[build] 
compiler = mingw32

即可设置 distutils 默认 compiler 为 MinGW.</t>
<t tx="andelf.20090816184037">A developer spends most of his or her time doing something else on his computer, other than writing code.

选择合适环境, 编辑器(或 IDE)

</t>
<t tx="andelf.20090816184321">vimrc 文件

set encoding=utf8
set paste
set expandtab
set textwidth=0
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set backspace=indent,eol,start
set incsearch
set ignorecase
set ruler
set wildmenu
set commentstring=\ #\ %s
set foldlevel=0
set clipboard+=unnamed   
syntax on</t>
<t tx="andelf.20090816184321.1"> * eclipse + pydev
 * Wing IDE
 * ...
</t>
<t tx="andelf.20090816184516"></t>
<t tx="andelf.20090816184516.1">列表推导式

&gt;&gt;&gt; [i for i in range(10) if i % 2 == 0]
[0, 2, 4, 6, 8]
</t>
<t tx="andelf.20090816184551">Iterators and Generators

=迭代器=
迭代器是特殊的容器对象, 它基于
 * next, 返回容器下个对象
 * __iter__, 返回迭代器本身

例如

&gt;&gt;&gt; i = iter('abc')
&gt;&gt;&gt; i.next()
'a'
&gt;&gt;&gt; i.next()
'b'
&gt;&gt;&gt; i.next()
'c'
&gt;&gt;&gt; i.next()
Traceback (most recent call last):
  File "&lt;stdin&gt;", line 1, in &lt;module&gt;
StopIteration 

序列耗尽后, 将引发 StopIteration 异常.

自定义

&gt;&gt;&gt; class MyIterator(object):
...     def __init__(self, step):
...         self.step = step
...     def next(self):
...         """Returns the next element."""
...         if self.step == 0:
...             raise StopIteration
...         self.step -= 1
...         return self.step
...     def __iter__(self):
...         """Returns the iterator itself."""
...         return self
...
&gt;&gt;&gt; for el in MyIterator(4):
...     print el
...
3
2
1
0

=生成器=

来自 PEP 的例子

&gt;&gt;&gt; def fibonacci():
...     a, b = 0, 1
...     while True:
...         yield b
...         a, b = b, a + b
...
&gt;&gt;&gt; fib = fibonacci()
&gt;&gt;&gt; fib.next()
1
&gt;&gt;&gt; fib.next()
1
&gt;&gt;&gt; fib.next()
2
&gt;&gt;&gt; [fib.next() for i in range(10)] 
[3, 5, 8, 13, 21, 34, 55, 89, 144, 233]

函数返回一个生成器对象(一个特殊的迭代器, 知道如何保存它自己的执行上下文)

关键
generators should be considered every time you deal with a function that returns a sequence or works in a loop.

例如

Python 代码 tokenizer

&gt;&gt;&gt; import tokenize
&gt;&gt;&gt; reader = open('amina.py').next
&gt;&gt;&gt; tokens = tokenize.generate_tokens(reader)
&gt;&gt;&gt; tokens.next()
(1, 'from', (1, 0), (1, 4), 'from amina.quality import  
                                                    similarities\n')
&gt;&gt;&gt; tokens.next()
(1, 'amina', (1, 5), (1, 10), 'from amina.quality import  
                                                    similarities\n')
&gt;&gt;&gt; tokens.next()

=yield 语句=
&gt;&gt;&gt; def psychologist():
...     print 'Please tell me your problems'
...     while True:
...         answer = (yield)
...         if answer is not None:
...             if answer.endswith('?'):
...                 print ("Don't ask yourself
...                        "too much questions")
...             elif 'good' in answer:
...                 print "A that's good, go on"
...             elif 'bad' in answer:
...                 print "Don't be so negative"
...
&gt;&gt;&gt; free = psychologist()
&gt;&gt;&gt; free.next()
Please tell me your problems
&gt;&gt;&gt; free.send('I feel bad')
Don't be so negative
&gt;&gt;&gt; free.send("Why I shouldn't ?")
Don't ask yourself too much questions
&gt;&gt;&gt; free.send("ok then i should find what is good for me")
A that's good, go on

send
 : 类似 next, 但会让 yield 返回所传递的值
throw
 : 发送任意异常
close
 : 类似 throw, 但只引发 GeneratorExit 异常, 其后对 next 的调用将引发 StopIteration 异常</t>
<t tx="andelf.20090816185830">&gt;&gt;&gt; def my_generator():
...     try:
...         yield 'something' 
...     except ValueError:
...         yield 'dealing with the exception'
...     finally:
...         print "ok let's clean"
...
&gt;&gt;&gt; gen = my_generator()
&gt;&gt;&gt; gen.next()
'something'
&gt;&gt;&gt; gen.throw(ValueError('mean mean mean'))
'dealing with the exception'
&gt;&gt;&gt; gen.close()
ok let's clean
&gt;&gt;&gt; gen.next()
Traceback (most recent call last):
  File "&lt;stdin&gt;", line 1, in &lt;module&gt;
StopIteration

说明
生成器中不可处理 GeneratorExit 异常, 因为编译器用它来确保 close 调用后生成器干净地退出.
finally 代码块用来任何未被捕获的 close 和 throw 调用, 推荐使用.
</t>
<t tx="andelf.20090816220139">Coroutines

协程是一个可以被挂起和恢复的函数, 可以有多个进入点. Lua 和 Io 原生支持协程</t>
<t tx="andelf.20090819004359"></t>
<t tx="andelf.20090819004359.1">小键盘
3d view 转换

Ctrl+左/右, Screen 切换

空格, 或点鼠标不放. 菜单.

shift-A: add

选择物体后, M, 图层选择

F12 Render 后可用 F3 保存

Edit mode:
    鼠标左键, confirm
    鼠标右键, select</t>
</tnodes>
</leo_file>
