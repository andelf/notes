<?xml version="1.0" encoding="utf-8"?>
<?xml-stylesheet ekr_test?>
<leo_file>
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5">
	<global_window_position top="92" left="273" height="580" width="800"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="andelf.20080101223657"><vh>@chapters</vh></v>
<v t="andelf.20080102073051" a="E"><vh>罕见问题集</vh>
<v t="andelf.20080102073051.1" a="ETV"><vh>C/C++</vh>
<v t="andelf.20080102073051.2"><vh>* 和 ++ 运算符的优先级</vh></v>
<v t="andelf.20080102073152"><vh>数组的访问</vh></v>
<v t="andelf.20080102074528"><vh>关于 getchar()</vh></v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="andelf.20080101223657"></t>
<t tx="andelf.20080102073051"></t>
<t tx="andelf.20080102073051.1">@language c</t>
<t tx="andelf.20080102073051.2">++ 的优先级大于 *

故
*p++ = *(p++)

自增应写做
(*p)++ </t>
<t tx="andelf.20080102073152">int a[] = {1,2,3,4,5};

那么 

a[2] = 2[a]
.... 类推

array[n] -&gt; *(array + n)</t>
<t tx="andelf.20080102074528">返回 stdin 的下一个字符
没有输入时返回 EOF (定义于 stdio.h ) mingw 为 -1
返回类型为 int
向 char 赋值时不安全

解决方法 用 getchar() 和 EOF 做比较


</t>
</tnodes>
</leo_file>
