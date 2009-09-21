<?xml version="1.0" encoding="utf-8"?>
<?xml-stylesheet ekr_test?>
<leo_file>
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5">
	<global_window_position top="289" left="79" height="655" width="813"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="andelf.20090819014315" str_leo_pos="1,2"><vh>@chapters</vh></v>
<v t="andelf.20090819184619" a="E"><vh>Erlang Programming</vh>
<v t="andelf.20090819184619.1"><vh>Basic Erlang</vh>
<v t="andelf.20090820005247"><vh>Exercise 2-1</vh></v>
<v t="andelf.20090820010212"><vh>Exercise 2-3</vh></v>
</v>
<v t="andelf.20090820011622"><vh>Sequential Erlang</vh>
<v t="andelf.20090820142926"><vh>Exercise 3-1 ~ 3-3</vh></v>
<v t="andelf.20090820191332"><vh>Exercise 3-4</vh></v>
<v t="andelf.20090820233948.1247"><vh>Exercise 3-5</vh></v>
<v t="andelf.20090820233948.1248"><vh>Exercise 3-6</vh></v>
<v t="andelf.20090820233948.1246"><vh>Exercise 3-7</vh></v>
<v t="andelf.20090820233948.1249" a="M"><vh>Exercise 3-8</vh></v>
</v>
<v t="andelf.20090820233948.1250"><vh>Concurrent Programming</vh></v>
</v>
</vnodes>
<tnodes>
<t tx="andelf.20090819014315"></t>
<t tx="andelf.20090819184619">@language erlang</t>
<t tx="andelf.20090819184619.1">%% integers

Eshell V5.7.2  (abort with ^G)
1&gt; -234.
-234
2&gt; 0.
0
3&gt; 1000000.
1000000
4&gt; 2#1010.
10
5&gt; -16#ff.
-255
6&gt; %% chars
$a.
97
7&gt; 97.
97
8&gt; 

%% shell
以 . 结束语句

%% Floats 

17.368 -56.654 1.234E-10

%% Arithmetic ops

Type Description Data type
+ Unary + Integer | Float
- Unary - Integer | Float
* Multiplication Integer | Float
/ Floating-point division Integer | Float
div Integer division Integer
rem Integer remainder Integer
+ Addition Integer | Float
- Subtraction Integer | Float


%% Atoms 原子

january fooBar alfa21 start_with_lower_case node@ramone true false

'January' 'a space' 'Anything inside quotes{}#@ \n\012'
'node@ramone.erlang-consulting.com'
'atom'

%% Booleans 布尔值

1==2 1&lt;2 a&gt;z less&lt;more

is_boolean(9+6). is_boolean(true).

% infix
and 
andalso  % shortcut eval
or
orelse  % shortcut eval
xor
not  % unary

%% Tuples 元组

{} {123, bcd} {abc, {def, 123}} {person, 'Joe', 'Armstrong'}

20&gt; tuple_size({abc, {def, 123}, {ghi}}).
3
22&gt; element(1, {abc, {def, 123}, {ghi}}).
abc
23&gt; element(2, {abc, {def, 123}, {ghi}}).
{def,123}
24&gt; setelement(2, {abc,def}, fuck).
{abc,fuck}
26&gt; {1,2} &lt; {1,3}.
true
27&gt; {1,2} == {1,2}.
true

%% Lists 列表

% 与元组一样, 可以包含任何类型, 任意大小

[a, [b, c, [d, e, f], 100], 20]
[{a,b}, {c,d}]
30&gt; [$H,$e,$l,$l,$o,$ ,$W,$o,$r,$l,$d].
"Hello World"

%% Characters and Strings 字符和字符串
即为在特定范围内的数字, 数字列表.

$A + 32.
$a
35&gt; ["哈哈"].
[[229,147,136,229,147,136]] %% utf-8
4&gt; [65,66,67].
"ABC"
5&gt; [67,$A+32,$A+51].
"Cat"
6&gt; [72,101,108,108,111,32,87,111,114,108,100].
"Hello World"

%% Atom and Strings 原子和字符串

Atom is atom, 不可再分.
atom 高效.

%% Building and Processing Lists 

head tail way.

List = [Element | List] or
       []

40&gt; [X|Y] = [andelf, feather].
[andelf,feather]
41&gt; X.
andelf
42&gt; Y.
[feather]
43&gt; [A|B] = Y.
[feather]
44&gt; A.
feather
45&gt; B.
[]

%% List Functions and Operations

46&gt; lists:max([1,2,3]).
3
47&gt; lists:reverse([a,b,c]).
[c,b,a]
48&gt; lists:sort([3,4,1,2]).
[1,2,3,4]
49&gt; lists:split(2, [3,4,10,7,9,11]).
{[3,4],[10,7,9,11]}
50&gt; lists:sum([1,2,3,4,5,6,7]).
28
51&gt; lists:zip([1,2,3], [a,b,c]).
[{1,a},{2,b},{3,c}]
52&gt; lists:delete(3, [1,2,3,4]).
[1,2,4]

53&gt; lists:last([a,b,c]).
c
54&gt; lists:member(5, [1,a,5]).
true
55&gt; lists:nth(4, [a,b,c,d,e]).
d
56&gt; lists:length([1,2,3]).
** exception error: undefined function lists:length/1
57&gt; length([1,2,3]).
3

op:
[...|...]  最佳方法
++  效率不高, expensive
--

58&gt; [a,b] ++ [c,d].
[a,b,c,d]
59&gt; [a,b] -- [c,d].
[a,b]
60&gt; [a,b] -- [a,c,d].
[b]

%% Term Comparison

== Equal to
/= Not equal to
=:= Exactly equal to
=/= Exactly not equal 
=&lt; Less than or equa
&lt; Less than
&gt;= Greater than or eq
&gt; Greater than

number &lt; atom &lt; reference &lt; fun &lt; port &lt; pid &lt; tuple &lt; list &lt; binary

62&gt; 11 &lt; ten.
true
64&gt; 1 =:= 1.0.
false
65&gt; 1 == 1.0.
true
66&gt; 1 =/= 1.0.
true

%% Variables

A_long_variable_name Flag Name2 DbgFlag
不可重新赋值

74&gt; A = (1+3)*5.
20
75&gt; A+A.
40
76&gt; B = A+1.
21
77&gt; A = A+1.
** exception error: no match of right hand side value 21
78&gt; A = 20.
20
79&gt; f(A).
ok

f(Variable) 代表 forget, 取消绑定

%% Complex Data Structures 复杂数据结构

MyAttr = [{name, "Andelf"}, {sex, male}, 
		  {pets, [{cat, zorro}, {cat,daisy}]},
		  {hobby, [computer, music]}].

%% Pattern Matching 模式匹配

Pattern = Expression

{Element, Element, _} = {1, 1, 2}.

%% Functions 函数
-module(test).
-export([area/1]).

area({square, Side}) -&gt;
	Side * Side;
area({circle, Radius}) -&gt;
	math:pi() * Radius * Radius;
area({triangle, A, B, C}) -&gt;
	S = (A + B + C)/2,
	math:sqrt(S*(S-A)*(S-B)*(S-C));
area(_) -&gt;
	{error, invalid_object}.


1&gt; c("f:/Project/Erlang/ErlPro/test", [{outdir, "f:/Project/Erlang/ErlPro/"}]).
{ok,test}
2&gt; test:area({square, 100}).
10000
3&gt; test:area({squdare, 100}).
{error,invalid_object}


factorial(0) -&gt; 1;
factorial(N) -&gt;
	N * factorial(N-1).

%% Modules 模块

%module name
-module(demo).
% Function/Arity list
-export([double/1]).						   

%% Compilation and the Erlang Virtual Machine 编译/Erlang虚拟机

85&gt; pwd().
f:/User-temp
ok
86&gt; cd("f:/project/erlang/erlpro/").
f:/project/erlang/erlpro
ok
87&gt; c(test).
{ok,test}
88&gt; test:area({circle, 3}).
28.274333882308138

%% Module Directives 模块指令

格式: -attribute(value).

-compile(export_all).
等同于 c(Mod, [export_all]).

-import(Module, [Function/Arity, ...]).
这样可以避免使用 module: 前缀, 例如 sqrt(...)

也可自定义模块属性(只能有一个参数), 例如

-author(Name)
-date(Data)

获得模块信息

89&gt; m(test).
Module test compiled: Date: August 19 2009, Time: 16.38
Compiler options:  []
Object file: f:/project/erlang/erlpro/test.beam
Exports: 
         area/1
         module_info/0
         module_info/1
ok
90&gt; test:module_info().
[{exports,[{area,1},{module_info,0},{module_info,1}]},
 {imports,[]},
 {attributes,[{vsn,[230727129501880179775243424662333503052]}]},
 {compile,[{options,[]},
           {version,"4.6.2"},
           {time,{2009,8,19,16,38,4}},
           {source,"f:/project/erlang/erlpro/test.erl"}]}]






</t>
<t tx="andelf.20090820005247">Eshell V5.7.2  (abort with ^G)
1&gt; 1 + 1.
2
2&gt; [1|[2|[3|[]]]].
[1,2,3]
3&gt; A = 1.
1
4&gt; B = 2.
2
5&gt; A + B.
3
6&gt; A = A + 1.
** exception error: no match of right hand side value 2
7&gt; L = [A|[2,3]].
[1,2,3]
8&gt; [[3,2]|1].
[[3,2]|1]
9&gt; Person = {person, "Mike", "Williams", [1,2,3,4]}.
{person,"Mike","Williams",[1,2,3,4]}
10&gt; {person, Name, Surname, Phone} = Person.
{person,"Mike","Williams",[1,2,3,4]}
11&gt; Name.
"Mike"

</t>
<t tx="andelf.20090820010212">%%%-------------------------------------------------------------------
%%% File    : bollean.erl
%%% Author  : Feather.et.ELF &lt;andelf@gmail.com&gt;
%%% Created : 20 Aug 2009 by Feather.et.ELF &lt;andelf@gmail.com&gt;
%%%-------------------------------------------------------------------

-module(boolean).
-export([b_not/1,b_and/2,b_nand/2]).
-author('andelf@gmail.com').

b_not(false) -&gt;
	true;
b_not(_) -&gt;
	false.

b_and(true, true) -&gt;
	true;
b_and(_, _) -&gt;
	false.

b_nand(X, Y) -&gt;
	b_not( b_and(X,Y) ).

%% 14&gt; boolean:b_not(false).
%% true
%% 15&gt; boolean:b_and(false, true).
%% false
%% 16&gt; boolean:b_and(boolean:b_not(boolean:b_and(true, false)), true).
%% true</t>
<t tx="andelf.20090820011622">%% Conditional Evaluations 条件求值

% case 结构

case conditional-expression of
  Pattern1 -&gt; expression1, expression2, .. ;
  Pattern2 -&gt; expression1, expression2, .. ;
  ...  ;
  Patternn -&gt; expression1, expression2, ..
end

5&gt; case lists:member(foo, [foo, bar]) of
5&gt;   true -&gt; ok;
5&gt;   false -&gt; {error, unknown_element}
5&gt; end.
ok

% Variable Scope 变量作用域

In Erlang, the scope of a variable is any position in the same function clause
after it has been bound, either by an explicit match using = or as part of a 
pattern.

unsafe(X) -&gt;
  case X of
    one -&gt; Y = true;
     _  -&gt; Z = two
  end,
  Y.

因为 Y 可能无定义.

safe(X) -&gt;                   preferred(X) -&gt;
  case X of                    Y =   case X of
    one -&gt; Y = 12;                   one -&gt; 12;
    _   -&gt; Y = 196                   _   -&gt; 196
  end,                               end,
  X+Y.                         X+Y.

% if 结构

if
  Guard1 -&gt; expression11, expression12, .. ;
  Guard2 -&gt; expression21, expression22, .. ;
  ...  ;
  Guardn -&gt; expressionn1, expressionn2, ..
end

if 
  X &lt; 1 -&gt; smaller;
  X &gt; 1 -&gt; greater;
  X == 1 -&gt; equal
 end

%% Guards

placed before `-&gt;`

factorial(N) when N &gt; 0 -&gt;
  N * factorial(N - 1);
factorial(0) -&gt; 1.
可以防止 factorial(-4) 这样的调用

常用
is_binary is_atom is_boolean is_tuple

guard(X,Y) when not(((X&gt;Y) or not(is_atom(X)) ) and (is_atom(Y) or (X==3.4))) -&gt;
  X+Y.

-module(examples).
-export([even/1, number/1]).
even(Int) when Int rem 2 == 0 -&gt; true;
even(Int) when Int rem 2 == 1 -&gt; false.
number(Num) when is_integer(Num) -&gt; integer;
number(Num) when is_float(Num)   -&gt; float;
number(_Other)                   -&gt; false.

%% Built-in Functions 内建函数 BIFs

% Object Access and Examination 对象访问检查

hd/1        head of a list
tl/1        tail of a list
length/1    length of a list
tuple_size/1    
element/2       nth of a tuple
setelement/3    replace nth of a tuple
erlang:append_element/2   append a elem to a tuple

% Type Conversion 类型转换

atom_to_list/1 list_to_atom/1 list_to_existing_atom/1(may fail if atom is not used)

list_to_tuple/1 tuple_to_list/1

float/1(from integer) list_to_float/1(from string)

float_to_list/1 integer_to_list/1
- all to string 

round/1 trunc/1 list_to_integer/1
- to integer

% Process Dictionary

% Meta Programming

apply/3

4&gt; apply(Module, Function, Arguments).
true
6&gt; apply(sequential, listlen, [[2,3,4]]).
3

apply(Mod,Fun,[Arg1,Arg2])
相当于
Mod:Fun(Arg1, Arg2)

% Process, Port, Distribution, and System Infomation
% 进程, 端口, 分布, 系统信息

date/0 time/0 now/0

37&gt; date().
{2009,8,20}
38&gt; time().
{13,9,44}
39&gt; now().
{1250,744990,639000}  % from 1970, Jan 1, midnight

% Input and Output 输入输出

每个函数都可以接受一个可选参数(第一个), 代表 file handle

66&gt; io:get_line("prompt&gt;").
prompt&gt;Fuck You 
"Fuck You\n"
68&gt; io:get_chars("tell me&gt; ", 2).
tell me&gt; 34
"34"
69&gt; io:read("&gt;&gt;").
&gt;&gt;[1,2,3,4,5,{ok}].
{ok,[1,2,3,4,5,{ok}]}

70&gt; io:read("&gt;&gt;").   
&gt;&gt;2+3.
{error,{1,erl_parse,"bad term"}}
71&gt; io:read("&gt;&gt;").
&gt;&gt;[
&gt;&gt;2,3,4,5].
{ok,[2,3,4,5]}

io:write/1 打印 Erlang term
io:format/2 格式输出 Erlang term

~c  ASCII code as a character
~f  .6 float
~e  
~w  standard syntax
~p  pretty print
~W, ~P   take additional parm, max depth
~B

81&gt; io:format("~c", [97]).
aok
82&gt; io:format("~f", [4.1]).
4.100000ok
83&gt; io:format("~e", [4.1]).
4.10000e+0ok
84&gt; io:format("~w", ["?test"]).
[63,116,101,115,116]ok
85&gt; io:format("~p", ["?test"]).
"?test"ok
86&gt; io:format("~B", [2#10101]).
21ok
88&gt; io:format("~W", [[1,2,3,43,5,6,7], 4]).
[1,2,3|...]ok

also can use ~.f ~40p 
~n 换行.

%% Recursion 递归

sum([]) -&gt; 0.
sum([Head | Tail]) -&gt; Head + sum(Tail).

member(_, []) -&gt; false;
member(H, [H|_]) -&gt; true;
member(H, [_|T]) -&gt; member(H, T).

% Tail-Recursion Function 尾递归函数

sum_acc([], Sum) -&gt; Sum;
sum_acc([Head|Tail], Sum) -&gt; sum_acc(Tail, Head+Sum).

sum(List) -&gt; sum_acc(List, 0).


average(List) -&gt; average_acc(List, 0,0).
average_acc([], Sum, Length) -&gt;
  Sum / Length;
average_acc([H | T], Sum, Length) -&gt;
  average_acc(T, Sum + H, Length + 1).

%% Runtime Errors 运行时错误

* function_clause
factorial(N) when N &gt; 0 -&gt;
    N * factorial(N - 1);
factorial(0) -&gt; 1.
1&gt; test:factorial(-1).
** exception error: no function clause matching test:factorial(-1)

* case_clause
test1(N) -&gt;
  case N of
    -1 -&gt; false;
    1  -&gt; true
  end.
1&gt; test:test1(0).
** exception error: no case clause matching 0
     in function  test:test1/1

* if_clause
test2(N) -&gt;
  if
    N &lt; 0 -&gt; false;
    N &gt; 0 -&gt; true
  end.
1&gt; test:test2(0).
** exception error: no true branch found when evaluating an if expression
     in function  foo:test2/1

* badmatch
1&gt; N=45.
45
2&gt; {N,M}={23,45}.
** exception error: no match of right hand side value {23,45}

* badarg
when BIF called with wrong argument
1&gt; length(helloWorld).
** exception error: bad argument
     in function  length/1
        called as length(helloWorld)

* undef
1&gt; test:hello().
** exception error: undefined function test:hello/0

* badarith
arithmetical ops are recived bad operand.
1&gt; 1+a.
** exception error: bad argument in an arithmetic expression
     in operator  +/2
        called as 1 + a

%% Handling Errors 处理错误

% try ... catch

try Exprs of
   Pattern1 [when Guard1] -&gt;
               ExpressionBody1;
   Pattern2 [when Guard2] -&gt;
               ExpressionBody2
catch
    [Class1:]ExceptionPattern1
               [when  ExceptionGuardSeq1] -&gt;
               ExceptionBody1;
    [ClassN:]ExceptionPatternN
               [when ExceptionGuardSeqN] -&gt;
               ExceptionBodyN
end


91&gt; X = 2.
2
92&gt; try X=3 of
92&gt;    Val -&gt; {normal, Val}
92&gt; catch
92&gt;    Cls:Excpt -&gt; {Cls, Excpt}
92&gt; end.
{error,{badmatch,3}}


5&gt; try (throw(non_normal_return)) of
5&gt;   Val -&gt; {normal, Val}
5&gt; catch
5&gt;   throw:Error -&gt; {throw, Error}
5&gt; end.
{throw,non_normal_return}


error classes?
error   erlang:error(Term), runtime errors...
throw   throw(...) explicit throw
exit    exit/1  for termination

% Using catch

original Erlang mechanism for exception handling was `catch`

1&gt; list_to_integer("one").
** exception error: bad argument
     in function  list_to_integer/1
        called as list_to_integer("one")
2&gt; catch list_to_integer("one").
{’EXIT’,{badarg,[{erlang,list_to_integer,["one"]},
                 {erl_eval,do_apply,5},
                 {erl_eval,expr,5},
                 {shell,exprs,6},
                 {shell,eval_exprs,6},
                 {shell,eval_loop,3}]}}

94&gt; X = catch 1/0.
* 1: syntax error before: 'catch'
94&gt; X = (catch 1/0).
** exception error: no match of right hand side value 
                    {'EXIT',{badarith,[{erlang,'/',[1,0]},
                                       {erl_eval,do_apply,5},
                                       {erl_eval,expr,5},
                                       {erl_eval,expr,5},
                                       {shell,exprs,6},
                                       {shell,eval_exprs,6},
                                       {shell,eval_loop,3}]}}

catch math:add(one, 1).
....


%% Library Modules 库模块

% Useful Modules

array calendar dict 
erlang - all BIFs
file filename io lists math
quene random string timer

%% The Debugger 调试器

debugger:start()

shell cmd:
erlc +debug_info Module.erl
erlang cmd:
c(Module, [debug_info]).
compile:file(exception, [debug_info]).

使用 Module 菜单选择模块, 加 *
attach window 加断点.


</t>
<t tx="andelf.20090820142926">%%%-------------------------------------------------------------------
%%% File    : exer3.erl
%%% Author  : Feather.et.ELF &lt;andelf@gmail.com&gt;
%%% Description : Exercise 3
%%% Created : 20 Aug 2009 by Feather.et.ELF &lt;andelf@gmail.com&gt;
%%%-------------------------------------------------------------------
-module(exer3).
-export([sum/1, sum/2, create/1, reverse_create/1, 
		 printInt/1, printEvenInt/1]).

%% sum(N) when N &gt; 1 -&gt;
%% 	N + sum(N-1);
%% sum(1) -&gt;
%% 	1.

sum(N) -&gt;
	sum_acc(0, N, 0).

sum(N, M) when (N =&lt; M) -&gt;
	sum_acc(N, M, 0).

sum_acc(N, N, Sum) -&gt;
	Sum + N;
sum_acc(N, M, Sum) -&gt;
	sum_acc(N, M-1, Sum+M).


create(N) when N &gt; 0 -&gt;
	create(N-1) ++ [N];  % ugly, but work
create(_) -&gt;
	[].

reverse_create(N) when N &gt; 0 -&gt;
	[N | reverse_create(N-1)];
reverse_create(_) -&gt;
	[].


printInt(N) when N &gt; 0 -&gt;
	io:format("Number:~p~n", [N] ), % note [] here
	printInt(N-1);
printInt(_) -&gt;
	ok.

printEvenInt(N) when N &lt; 1 -&gt;
	ok;
printEvenInt(N) when N rem 2 == 0 -&gt;
	io:format("Number:~p~n", [N] ),
	printEvenInt(N-2);
printEvenInt(N) -&gt;
	printEvenInt(N-1).




</t>
<t tx="andelf.20090820191332">%%%-------------------------------------------------------------------
%%% File    : db.erl
%%% Author  : Feather.et.ELF &lt;andelf@gmail.com&gt;
%%% Description : exer 3-4
%%%
%%% Created : 20 Aug 2009 by Feather.et.ELF &lt;andelf@gmail.com&gt;
%%%-------------------------------------------------------------------
-module(db).

-export([new/0, destroy/1, write/3, delete/2, read/2, match/2]).

%% db:new()                        Db.
%% db:destroy(Db)                  ok.
%% db:write(Key, Element, Db)      NewDb.
%% db:delete(Key, Db)              NewDb.
%% db:read(Key, Db)                {ok, Element} | {error, instance}.
%% db:match(Element, Db)           [Key1, ..., KeyN].

new() -&gt;
	[].

destroy(_) -&gt;
	ok.   % levae to erlang gc

%% FIXME: no existence check here
write(Key, Element, Db) -&gt;
	[{Key, Element} | Db].

delete(Key, [{Key,_} | TDb]) -&gt;
	TDb;
delete(Key, [H | TDb]) -&gt;
	[H | delete(Key, TDb)];
delete(_, _) -&gt;
	[].

read(Key, [{Key,V} | _]) -&gt;
	{ok, V};
read(Key, [_ | TDb]) -&gt;
	read(Key, TDb);
read(_, _) -&gt;
	{error, instance}.

match(Elem, [{Key, Elem} | TDb]) -&gt;
	[Key | match(Elem, TDb)];
match(Elem, [_ | TDb]) -&gt;
	match(Elem, TDb);
match(_, _) -&gt;
	[].

%% All test passed
</t>
<t tx="andelf.20090820233948.1246">%%%-------------------------------------------------------------------
%%% File    : dblib.erl
%%% Author  : Feather.et.ELF &lt;andelf@gmail.com&gt;
%%% Description : db module use libs
%%%
%%% Created : 20 Aug 2009 by Feather.et.ELF &lt;andelf@gmail.com&gt;
%%%-------------------------------------------------------------------
-module(dblib).

-export([new/0, destroy/1, write/3, delete/2, read/2, match/2]).

%% db:new()                        Db.
%% db:destroy(Db)                  ok.
%% db:write(Key, Element, Db)      NewDb.
%% db:delete(Key, Db)              NewDb.
%% db:read(Key, Db)                {ok, Element} | {error, instance}.
%% db:match(Element, Db)           [Key1, ..., KeyN].

new() -&gt;
	[].

destroy(_) -&gt;
	ok.   % levae to erlang gc

%% FIXME: no existence check here
write(Key, Element, Db) -&gt;
	lists:keystore(Key, 1, Db, {Key, Element}).

delete(Key, Db) -&gt;
	lists:keydelete(Key, 1, Db).

read(Key, Db) -&gt;
	case lists:keyfind(Key, 1, Db) of
		{Key, Val} -&gt; {ok, Val};
		false -&gt; {error, instance}
	end.

match(Elem, Db) -&gt;
	case lists:keytake(Elem, 2, Db) of
		{value, {Key, Elem} , Dbnext} -&gt;
			[Key | match(Elem, Dbnext)];
		false -&gt; []
	end.

%% All tests passed 
</t>
<t tx="andelf.20090820233948.1247">filter([H|T], V) when H =&lt; V -&gt;
	[H | filter(T, V)];
filter([_|T], V) -&gt;
	filter(T, V);
filter(_, _) -&gt;
	[].

reverse([H|T]) -&gt;
	reverse(T) ++ [H];							% ugly but work
reverse(Other) -&gt;
	Other.


concatenate([H|T]) -&gt;
	H ++ concatenate(T);
concatenate(Other) -&gt;
	Other.

flatten([H|T]) -&gt;
	if
		is_list(H) -&gt; flatten(H) ++ flatten(T);
		true -&gt; [H|flatten(T)]
	end;
flatten(Other) -&gt;
	Other.
</t>
<t tx="andelf.20090820233948.1248">quickSort([H|T]) -&gt;
	quickSort([Item || Item &lt;- T, Item =&lt; H]) ++ [H] ++  quickSort([Item || Item &lt;- T, Item &gt; H]);
quickSort(Other) -&gt;
	Other.

mergeSort([H]) -&gt;
	[H];
mergeSort([]) -&gt;
	[];
mergeSort(List) -&gt;					   
	Len = length(List),
	{Hd, Tl} = lists:split(Len div 2, List), 
	merge(mergeSort(Hd), mergeSort(Tl)).

merge([H1|T1], [H2|T2]) -&gt;
	if
		H1 =&lt; H2  -&gt; [H1 | merge(T1, [H2|T2])];
		H1 &gt; H2   -&gt; [H2 | merge([H1|T1], T2)]
	end;
merge(L1, L2) -&gt;
	L1 ++ L2.

</t>
<t tx="andelf.20090820233948.1249">%%%-------------------------------------------------------------------
%%% File    : eval.erl
%%% Author  : Feather.et.ELF &lt;andelf@gmail.com&gt;
%%% Description : Exercise 3-8: Evaluating and Compiling Expressions
%%%
%%% Created : 21 Aug 2009 by Feather.et.ELF &lt;andelf@gmail.com&gt;
%%%-------------------------------------------------------------------
-module(eval).

-export([eval/1, pprint/1, compile/1, simulate/1, %%simplify/1, 
		 test/0]).


test() -&gt;
   {minus, {plus, {num, 2}, {num,3}}, {num, 4}}.

eval({minus, A, B}) -&gt;
	eval(A) - eval(B);
eval({minus, A}) -&gt;
	-eval(A);
eval({plus, A, B}) -&gt;
	eval(A) + eval(B);
eval({mult, A, B}) -&gt;
	eval(A) * eval(B);
eval({num, A}) -&gt;
	A;
eval({ifte, A, B, C}) -&gt;
	case eval(A) of
		0 -&gt; eval(C);
		_ -&gt; eval(B)
	end.
%% TODO: let, local definitions


pprint(Expr) -&gt;
	io:put_chars(to_str(Expr)),
	io:nl().

to_str({minus, A, B}) -&gt;
	io_lib:format("(~s)-(~s)", [to_str(A), to_str(B)]);
to_str({minus, A}) -&gt;
	io_lib:format("~~(~s)", [to_str(A)]);
to_str({plus, A, B}) -&gt;
	io_lib:format("(~s)+(~s)", [to_str(A), to_str(B)]);
to_str({mult, A, B}) -&gt;
	io_lib:format("~s*~s", [to_str(A), to_str(B)]);
to_str({num, V}) -&gt;
	io_lib:format("~p", [V]);
to_str({ifte, A, B, C}) -&gt;
	io_lib:format("if (~s) then ~s else ~s", [to_str(A), to_str(B), to_str(C)]).


compile({minus, A, B}) -&gt;
	compile(A) ++ compile(B) ++ [minus];
compile({minus, A}) -&gt;
	compile(A) ++ [negate];
compile({plus, A, B}) -&gt;
	compile(A) ++ compile(B) ++ [plus];
compile({mult, A, B}) -&gt;
	compile(A) ++ compile(B) ++ [mult];
compile({num, V}) -&gt;
	[V];
compile({ifte, A, B, C}) -&gt;
	[compile(A), compile(B), compile(C), ifte].



simulate(Stk) -&gt;
	simu(lists:reverse(Stk)).

simu([minus|T]) -&gt;
	{Right, T1} = simu(T),
	{Left, T2} = simu(T1),
	{Left-Right, T2};
simu([negate|T]) -&gt;
	{Val, T1} = simu(T),
	{-Val, T1};
simu([plus|T]) -&gt;
	{Right, T1} = simu(T),
	{Left, T2} = simu(T1),
	{Left+Right, T2};
simu([mult|T]) -&gt;
	{Right, T1} = simu(T),
	{Left, T2} = simu(T1),
	{Left*Right, T2};
simu([ifte|T]) -&gt;
	{Else, T1} = simu(T),
	{Then, T2} = simu(T1),
	{Cond, T3} = simu(T2),
	case Cond of
		0 -&gt; {Else, T3};
		_ -&gt; {Then, T3}
	end;
simu([V|T]) -&gt;
	{V, T}.

%% TODO

%% Test passed
%% 62&gt; c(eval).
%% {ok,eval}
%% 63&gt; Expr = eval:test().
%% {minus,{plus,{num,2},{num,3}},{num,4}}
%% 64&gt; eval:eval(Expr).
%% 1
%% 66&gt; eval:pprint(Expr).
%% ((2)+(3))-(4)
%% ok
%% 68&gt; Stk = eval:compile(Expr).
%% [2,3,plus,4,minus]
%% 69&gt; eval:simulate(Stk).
%% {1,[]}

</t>
<t tx="andelf.20090820233948.1250">Each concurrent activity in Erlang is called a process.
The only way for processes to interact with each other is through message passing.

Erlang VM . creation of processes very efficient.

%% Creating Processes 创建进程

BIF spawn/3
spawn(Module, Function, Arguments) 

Pid2 = spawn(Module, Function, Arguments).

spawn(m, f, [a]) % note here [a] not a

23&gt; spawn(no_module, no_function, []).       % 永远会 fail 
&lt;0.63.0&gt;
24&gt; 
=ERROR REPORT==== 21-Aug-2009::23:07:17 ===
Error in process &lt;0.63.0&gt; with exit value: {undef,[{no_module,no_function,[]}]}

BIF processes() 返回系统中正在运行的进程列表. 系统进程, 用户进程

erl +P MaxProcceses % 启动时候指定最大进程数

shell 命令 i() 显示当前系统运行中进程状态.
包括 Pid, spawn 所用函数, 当前执行进程中的函数, 以及其他信息.
Pid                   Initial Call                          Heap     Reds Msgs
Registered            Current Function                     Stack

%% Message Passing 消息传递

使用
Pid ! Message 
传递, Message 可以是任意 Erlang 数据类型

发送消息不会导致失败, 发送到不存在 Pid 的消息被自动丢弃
消息被按顺序发送, 按顺序处理(同进程发送给另个进程的消息)
发送消息是异步的, 进程发送消息后不会被挂起

self() 返回当前进程 Pid
erlang shell 就是一个 read-evaluate-print 循环进程
shell 命令 flush() 返回 shell 进程收到的消息. 并清空.

29&gt; Pid = self().
&lt;0.56.0&gt;
30&gt; Pid ! hello.
hello
31&gt; flush().
Shell got hello

Pid ! Message 是合法 erlang 表达式, 值为 Message .

Pid1!Msg,Pid2!Msg,Pid3!Msg
Pid3!Pid2!Pid1!Message 等价于
Pid3!(Pid2!(Pid1!Message))  % !　右结合　

shell 进程出错退出

36&gt; self().
&lt;0.56.0&gt;
37&gt; 1/0.  
** exception error: bad argument in an arithmetic expression
     in operator  '/'/2
        called as 1 / 0
38&gt; self().
&lt;0.78.0&gt;
39&gt; pid(0,56,0) ! hello.
hello
40&gt; flush().
ok

process dependencies??

%% Receiving Messages 接受消息

receive 从句用于接受消息. 依次模式匹配, 类似 case.
如果没有匹配, mailbox 中下条消息进行匹配, 直到匹配或全部 fail.
全部 fail 后进入挂起状态, 直到收到可以匹配的消息, 而 case 会导致 runtime error.

receive
  {reset, Board} -&gt; reset(Board);
  _Other         -&gt; {error, unknown_msg}
end

消息可以是任意 Erlang term, 不止元组{}.

how process scheduling works in erlang?
use i() command, a column named `Reds`, for `reductions` 
erlang 中任何命令(function call, arithmetical op, bif..)都是一系列 reduction 步骤.
VM 使用这个值确定一个进程的活动等级.
进程被调度时, 一个 reduction 值被赋值给它. 执行操作时这个数字会减少.
为 0 时候进程被挂起(preempted). (或者没有匹配 receive 从句)
erlang:bump_reductions(Num)  % 提高进程 reduction count
erlang:yield() % 挂起进程

receive 标准语法
receive
  Pattern1 when Guard1  -&gt; exp11, .., exp1n;
  Pattern2 when Guard2  -&gt; exp21, .., exp2n;
  ...
  Other                 -&gt; expn1, .., expnn
end

从句的值是最后一个被求值的语句, expin.

% Selective and Nonselective Receives 选择性和无选择性接收

选择性接受: 只接受感兴趣的消息

Pid2 ! {self(), ....}
decode_digit(Pid) -&gt;
	receive
		{Pid, ....} -&gt; {do something}
	end.
只接受指定 Pid 的消息.

receive
	foo -&gt; true
end,
receive
	bar -&gt; true
end,
....

按顺序接收, 避免 race condition, 无论它们以什么顺序传递进来
进程间共享数据的唯一方法就是使用消息传递
		 
% An Echo Example 

-module(echo).
-export([go/0, loop/0]).
go() -&gt;
   Pid = spawn(echo, loop, []),
   Pid ! {self(), hello},
   receive
     {Pid, Msg} -&gt;
       io:format("~w~n",[Msg])
   end,
   Pid ! stop.
loop() -&gt;
   receive
     {From, Msg} -&gt;
        From ! {self(), Msg},
        loop();
     stop -&gt;
       true
   end.

%% Registered Processes 注册进程

注册 Pid 名字
BIF register(Alias, Pid)  % Alias 是 atom 
其他 BIF 
unregister(Pid)   % 取消注册
registered()      % 察看已注册进程列表
whereis(Alias)    % 返回对应 Pid
shell 命令 regs()            % 已注册进程情况, 类似 i()

使用
register(echo, spawn(echo, loop, []))
向不存在的注册进程发送消息讲导致 badarg 异常, 进程将退出.

%% Timeouts 超时

receive ... after
检查 mailbox, 如果没有东西, 则等待超时后执行指定语句(after).

receive
  Pattern1 when Guard1 -&gt; exp11, .., exp1n;
  Pattern2 when Guard2 -&gt; exp21, .., exp2n;
  ...
  Other                -&gt; expn1, .., expnn
after
 Timeout -&gt; exp1,  .., expn
end

Timeout 以毫秒为单位, 整数. 
类似有个定时器发送 `timeout` 消息.

read(Key) -&gt;
  flush(),
  db ! {self(),{read, Key}},   % 向数据库发送请求
  receive
    {read,R}        -&gt; {ok, R};
    {error, Reason} -&gt; {error, Reason}
  after 1000        -&gt; {error, timeout}
  end.

flush() -&gt;
  receive
    {read, _}  -&gt; flush();
    {error, _} -&gt; flush()
  after 0       -&gt; ok
end.

sleep 函数定义
sleep(T) -&gt;
  receive
  after
    T -&gt;  true
  end.

%% Benchmarking

-module(myring).
-export([start/1, start_proc/2]).
start(Num) -&gt;
  start_proc(Num, self()).
start_proc(0, Pid) -&gt;
  Pid ! ok;
start_proc(Num, Pid) -&gt;
  NPid = spawn(?MODULE, start_proc, [Num-1, Pid]),
  NPid ! ok,
  receive ok -&gt; ok end.

函数调用
timer:tc(Module, Function, Arguments)

2&gt; timer:tc(myring, start, [100000]).
{484000,ok}   % 0.48 秒
3&gt; timer:tc(myring, start, [1000000]).
{4289360,ok}
4&gt; timer:tc(myring, start, [10000000]).
{40572800,ok}

%% Process Skeletons

			   start
				 |
				 V
			 Initialize 
				 |      +------+      
				 V      V      |
stop --&gt;  Receive-evaluate     |
			   loop     -------+
				|
				V
			Terminate

 * 传递给 spawn 调用的参数各进程不相同
 * 决定是否注册进程, 使用什么别名
 * 初始化进程状态的函数中, 针对各不同进程采用不同行为
 * 进程状态可能是通用的, 但内容不同
 * receive-eval 循环中, 进程接收不同消息, 并进行处理
 * 结束进程时, cleanup 各不相同

%% Tail Recursion and Memory Leaks 尾递归和内存泄露

...

%% A Case Study on Concurrency-Oriented Programming

...		   

%% Race Conditions, Deadlocks, and Process Starvation

异步消息传递.

改变 scheduler 行为
BIF process_flag(priority, Priority)
Priority 可以是 high normal low

%% The Process Manager

使用
pman:start()
启动</t>
</tnodes>
</leo_file>
