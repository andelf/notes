<?xml version="1.0" encoding="utf-8"?>
<?xml-stylesheet ekr_test?>
<leo_file>
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5">
	<global_window_position top="144" left="89" height="600" width="800"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="andelf.20080102181023"><vh>@chapters</vh></v>
<v t="andelf.20080102181112" a="TV"><vh>Learning GNU Emacs 笔记</vh>
<v t="andelf.20080102222611" a="E"><vh>Preface</vh></v>
<v t="andelf.20080102222611.1" a="M"><vh>Emacs 基础</vh>
<v t="andelf.20080103223308"><vh>打开文件</vh></v>
<v t="andelf.20080103223910"><vh>保存文件</vh></v>
<v t="andelf.20080103224057"><vh>退出 Emacs</vh></v>
<v t="andelf.20080103224137"><vh>获得帮助</vh></v>
<v t="andelf.20080104065042" a="M"><vh>总结</vh></v>
</v>
<v t="andelf.20080104065042.1" a="EM"><vh>编辑</vh>
<v t="andelf.20080104070513"><vh>移动光标</vh></v>
</v>
</v>
<v t="andelf.20090803150046"><vh>Emacs Notes</vh>
<v t="andelf.20090803150046.1"><vh>function</vh>
<v t="andelf.20090803150236.1"><vh>message function</vh></v>
<v t="andelf.20090803150236.2"><vh>set function</vh></v>
<v t="andelf.20090803150741"><vh>Write Functions</vh></v>
<v t="andelf.20090803150741.1"><vh>defun special form</vh></v>
</v>
<v t="andelf.20090803150236"><vh>maker</vh></v>
<v t="andelf.20090803150236.3"><vh>summary</vh></v>
<v t="andelf.20090803150301"><vh>eval</vh></v>
<v t="andelf.20090803150320"><vh>buffer name</vh></v>
<v t="andelf.20090803150741.2"><vh>get the buffer</vh></v>
<v t="andelf.20090803150741.3"><vh>switch buffer</vh></v>
<v t="andelf.20090803150741.4"><vh>buffer size</vh></v>
</v>
</vnodes>
<tnodes>
<t tx="andelf.20080102181023"></t>
<t tx="andelf.20080102181112">@all</t>
<t tx="andelf.20080102222611">Meta : Alt 或 Apple 键

C-n         next-line 移动到下一行
C-x C-f     find-file 打开指定文件
C-p         previous-line</t>
<t tx="andelf.20080102222611.1">把文件读入 buffer , 只有在保存时 buffer 内容才会写入文件
buffer 名和文件名一般是相同的 但有些例外
比如 *scratch* 涂写版
*Help* 显示帮助信息

----------------------------------

模式

Mode    Function

Fundamental mode 基本模式
 The default mode (Chapter 6)

Text mode 文本模式
 For writing text (Chapter 2)

View mode 察看模式
 For viewing files but not editing (Chapter 4)

Shell mode 
 For running a shell within Emacs (Chapter 5)

Outline mode 概要模式
 For writing outlines (Chapter 7)

Indented text mode 缩进文本模式
 For indenting text automatically (Chapter 7)

Paragraph indent text mode 段落缩进文本模式
 For indenting the first line of each paragraph (Chapter 7)

Picture mode 图像模式
 For creating ASCII drawings using the keyboard (Chapter 7)

HTML mode 
 For writing HTML (Chapter 8)

SGML mode 
 For writing SGML and XML (Chapter 8)

LaTeX mode
 For formatting files for TEX and LATEX (Chapter 8)

Compilation mode 复杂模式
 For compiling programs (Chapter 9)

cc mode
 For writing C, C++, and Java programs (Chapter 9)

Java mode 
 For writing Java programs (Chapter 9)

Perl mode and Cperl mode 
 For writing Perl programs (Chapter 9)

SQL mode
 For interacting with databases using SQL (Chapter 9)

Emacs Lisp mode
 For writing Emacs Lisp functions (Chapter 9 and Chapter 11)

Lisp mode
 For writing Lisp programs (Chapter 9 and Chapter 11)

Lisp interaction mode
 For writing and evaluating Lisp expressions (Chapter 9 andChapter 11)


编辑文件时, Emacs 会尝试使用合适的模式, 否则使用基本模式

次要模式

Auto-fill mode
 Enables word wrap (Chapter 2).

Overwrite mode
 Replaces characters as you type instead of inserting them (Chapter 2).

Auto-save mode
 Saves your file automatically every so often in a special auto-save file (Chapter 2).

Isearch mode
 For searching (Chapter 3).

Flyspell mode
 For flyspell spell-checker (Chapter 3).

Flyspell prog mode
 For spell-checking programs with flyspell (Chapter 3).

Abbrev mode
 Allows you to use word abbreviations (Chapter 3).

Paragraph indent text mode
 For indenting the first line of each paragraph (Chapter 7).

Refill mode
 A mode in which Emacs attempts to fill paragraphs as you edit them (a bit experimental; mentioned in Chapter 2).

Artist mode
 For creating ASCII drawings using the mouse (Chapter 7).

Outline mode
 For writing outlines (Chapter 7).

SGML name entity mode
 For inserting special characters in HTML, SGML, and XML documents (Chapter 8).

ISO accents mode
 For inserting accented characters in text files.

Font lock mode
 For highlighting text in colors and fonts to improve readability (separating, for example, comments from code visually) (Chapter 9).

Compilation mode
 For compiling programs (Chapter 9).

Enriched mode
 For saving text attributes (Chapter 10).

VC mode
 For using various version control systems under Emacs (Chapter 12).

Info mode
 A mode for reading Emacs's own documentation (Chapter 14).

-------------------------------------------------

启动 Emacs 自动进入 *scratch* buffer

在 Emacs 窗口中, Ctrl+鼠标右键 弹出 Edit Menu
不支持鼠标时可使用 F10 或 M+` 调用菜单

基于文本的菜单可以使用 *Completions* 中提示的缩写
PgUp 来选择菜单

模式行

倒数第二行
bugger 控制(选择, 拖动, 扩展)
编码
行结束符
是否只读 * 代表可写
是否有修改 * 代表有修改
---------
buffer 名称
当前位置
行号
---------
模式

---------------------------

Emacs 命令

类似 A a 这样的键是 self-insert-command
一般有命令有
C-? 或 M-?
C-x something
C-c 
M-x 输入长命令

也可以自定义</t>
<t tx="andelf.20080103223308">C-x C-f 
    find-file

如果不是你需要读取的文件

C-x C-v
    find-alternate-file
代表读取另个文件

Tab 可以自动补全

C-x i
将文件插入当前文件

M-&gt;
移动到文件末尾

当前默认目录
</t>
<t tx="andelf.20080103223910">C-x C-s

*scratch* 下会提示输入文件名

C-x C-w
    write-file
另存为</t>
<t tx="andelf.20080103224057">C-x C-c</t>
<t tx="andelf.20080103224137">C-h
C-h ?
    describe-function
C-h t
    教程
C-h k
    describe-key
C-h k C-x i
    显示 insert-file 的信息

C-x 1 会使 *Help* buffer 消失  

另外可以使用 Help 菜单</t>
<t tx="andelf.20080104065042">C-x C-fFile  Open File
 find-file
 Find file and read it in a new buffer.

C-x C-v
 find-alternate-file
 Read an alternate file, replacing the one read with C-x C-f.

C-x iFile  Insert File
 insert-file
 Insert file at cursor position.

C-x C-sFile  Save (current buffer)
 save-buffer
 Save file.

C-x C-wFile  Save Buffer As
 write-file
 Write buffer contents to file.

C-x C-cFile  Exit Emacs
 save-buffers-kill-emacs
 Exit Emacs.

C-h
 help-command
 Enter the online help system.

C-h f(Help -&gt; Describe Function)
 describe-function
 Gives online help for a given command name.


C-h k(Help -&gt; Describe Key)
 describe-key
 Gives online help for a given keystroke sequence.

C-h t(Help -&gt; Emacs Tutorial)
 help-with-tutorial
 Start the Emacs tutorial.

C-h i(Help -&gt; Browse Manuals)
 info-goto-emacs-command-node
 Start the Info documentation reader.

</t>
<t tx="andelf.20080104065042.1">可以启动 Refill (minor) 模式 使段落整洁
默认关闭
使用
M-x refill-mode

auto-fill 模式
M-x auto-fill-mode
在输入段落的时候自动格式化, 而在编辑的时候不会
这时候使用 M-q 即 fill-paragraph 命令

refill 模式和 auto-fill 模式可以同时打开

误操作时可以使用
C-_ 或 C-x u 
即 undo 命令

在  paragraph indent text 模式下, 以任何空字符开始的行被认为是一个新的段落
M-x paragraph-indent-text-mode   (Parindent)

有些特殊的模式, 例如 HTML LaTeX 重新定义了段落, 所以 fill-paragraph 会正常工作

M-x fill-region 
格式化指定区域

(none)
 refill-mode
 Toggle refill mode, in which Emacs automatically reformats text.

(none)(Options -&gt; Word Wrap in Text Modes)
 auto-fill-mode
 Toggle auto-fill mode, in which Emacs formats paragraphs as you type them.

M-q
 fill-paragraph
 Reformat paragraph.

(none)(Edit -&gt; Fill)
 fill-region
 Reformat individual 



</t>
<t tx="andelf.20080104070513">向前移动 C-f
向后移动 C-b
previous-line C-p
next-line     C-n

其他方法

M-f 向前移动一个单词
M-b

C-a 行开始
C-e 行结束

M-a 向前移动一个句子
M-e

M-} 向前移动一段
M-{

对段和句的定义
必须有两个空格, 除非是在行末</t>
<t tx="andelf.20090803150046">
@language lisp</t>
<t tx="andelf.20090803150046.1">(concat "abc" "def")
(substring "The quick brown fox jumped." 1 19)
(number-to-string 23.98) ;; all good
(int-to-string 234.32) ;; all good


可变参数 Variable number of arguments
(+)	 =&gt; 0
(*)	 =&gt; 1
(+ 3)	 =&gt; 3
(* 3)	 =&gt;3
(+ 3 4 5)</t>
<t tx="andelf.20090803150236">In Emacs, locations in a buffer are recorded as markers.  When the
mark is set with the `C-@' or `C-&lt;SPC&gt;' command, its position is kept
as a marker.  The mark can be considered a number--the number of
characters the location is from the beginning of the buffer.


(quote xxx) &lt;=&gt; `xxx

p 代表 predicate 返回 nil/t
(listp `(32 23 23 23))
(number-or-marker-p 3)
(integerp 100)</t>
<t tx="andelf.20090803150236.1">(message "This message appears in the echo area!")

(message "This %d %s %d" 34 (buffer-name) fill-column)</t>
<t tx="andelf.20090803150236.2">(set 'flowers '(rose violet daisy buttercup))
return '(rose violet daisy buttercup)

need to quote both arguments of it
force no eval

setq
(set 'xxx 'xxxx) &lt;=&gt; (setq xxx 'xxxx)

set two values at one time
(setq trees '(pine fir oak maple)
      herbivores '(gazelle antelope zebra))

increasement
(serq counter (+ counter 1))
</t>
<t tx="andelf.20090803150236.3">   * Lisp programs are made up of expressions, which are lists or
     single atoms.

   * Lists are made up of zero or more atoms or inner lists, separated
     by whitespace and surrounded by parentheses.  A list can be empty.

   * Atoms are multi-character symbols, like `forward-paragraph', single
     character symbols like `+', strings of characters between double
     quotation marks, or numbers.

   * A number evaluates to itself.

   * A string between double quotes also evaluates to itself.

   * When you evaluate a symbol by itself, its value is returned.

   * When you evaluate a list, the Lisp interpreter looks at the first
     symbol in the list and then at the function definition bound to
     that symbol.  Then the instructions in the function definition are
     carried out.

   * A single quotation mark, ' , tells the Lisp interpreter that it
     should return the following expression as written, and not
     evaluate it as it would if the quote were not there.

   * Arguments are the information passed to a function.  The arguments
     to a function are computed by evaluating the rest of the elements
     of the list of which the function is the first element.

   * A function always returns a value when it is evaluated (unless it
     gets an error); in addition, it may also carry out some action
     called a "side effect".  In many cases, a function's primary
     purpose is to create a side effect.
</t>
<t tx="andelf.20090803150301">(self-insert-command 2)
inserts the character you typed.

The functions you evaluate by typing keystrokes are called
"interactive" functions, or "commands"</t>
<t tx="andelf.20090803150320">The two functions, `buffer-name' and `buffer-file-name'
(buffer-name)
(buffer-file-name) ; return full path

distingwish between buffer and file.

nil -- latin word = nothing, in lisp = false = () ; emptyt list

buffer: a cushion that deadens the force of a collision.
In early computers, a buffer cushioned the interaction between files 
and the computer's central processing unit.

not all buffers are associated with a file. e.g. *scratch*

type `C-u C-x C-e' instead of `C-x C-e'. get out put of fuction inserted</t>
<t tx="andelf.20090803150741">All functions are defined in terms of other functions, except for a
few "primitive" functions that are written in the C programming
language.</t>
<t tx="andelf.20090803150741.1">1. The name of the symbol to which the function definition should be
     attached.

  2. A list of the arguments that will be passed to the function.  If no
     arguments will be passed to the function, this is an empty list,
     `()'.

  3. Documentation describing the function.  (Technically optional, but
     strongly recommended.)

  4. Optionally, an expression to make the function interactive so you
     can use it by typing `M-x' and then the name of the function; or by
     typing an appropriate key or keychord.

  5. The code that instructs the computer what to do: the "body" of the
     function definition.

     (defun FUNCTION-NAME (ARGUMENTS...)
       "OPTIONAL-DOCUMENTATION..."
       (interactive ARGUMENT-PASSING-INFO)     ; optional
       BODY...)
e.g.
(defun fib (n)
  "fib number"
  (cond ((&lt; n 3) n)
        (t (+ (fib (- n 1)) (fib (- n 2))))))</t>
<t tx="andelf.20090803150741.2">buffer and buffer-name are different!
e.g. the name of a person and the person.

(current-buffer) =&gt; #&lt;buffer Emacs.t2t&gt;   ;; get the buffer

(other-buffer)  ;; return most recently selected buffer you can't see
;; when mult wins
(switch-to-buffer (other-buffer (current-buffer) t))
;; switch to even you can see the other-buffer
In this case, the first argument to `other-buffer' tells it which
buffer to skip--the current one--and the second argument tells
`other-buffer' it is OK to switch to a visible buffer.
</t>
<t tx="andelf.20090803150741.3">used as an argument
(switch-to-buffer (other-buffer))
(switch-to-buffer ...)
short cut: C-x b

it switches the buffer to which Emacs' attention is directed, 
and it switches the buffer displayed in the window to the new buffer.

%% C-f : forward-char
%% M-e : forward-sentence

(set-buffer ...)
it switches the attention of the computer program to a different buffer.
the buffer on the screen remain unchanged

%% `C-x o' (`other-window')</t>
<t tx="andelf.20090803150741.4">(buffer-size) =&gt; 4470
size of the buffer, number of characters
(point) =&gt; 4462
(point-min) =&gt; 1
possible min value of point
(point-max) = (buffer-size)-1</t>
</tnodes>
</leo_file>
