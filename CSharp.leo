<?xml version="1.0" encoding="utf-8"?>
<?xml-stylesheet ekr_test?>
<leo_file>
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.504658385093">
	<global_window_position top="203" left="410" height="644" width="779"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="andelf.20090801132916"><vh>@chapters</vh></v>
<v t="andelf.20090801133028" a="E"><vh>CSharp Language Specification</vh>
<v t="andelf.20090801133028.1" a="E"><vh>Introduction</vh>
<v t="andelf.20090801134521"><vh>Hello World</vh></v>
<v t="andelf.20090801134521.1"><vh>Program Structure</vh></v>
<v t="andelf.20090801164508"><vh>Types and variables</vh></v>
<v t="andelf.20090801204842"><vh>Expressions</vh></v>
<v t="andelf.20090802173832"><vh>Statements</vh></v>
<v t="andelf.20090802173832.1" a="E"><vh>Classes and objects</vh>
<v t="andelf.20090802174929"><vh>Members</vh></v>
<v t="andelf.20090802174929.1"><vh>Accessibility</vh></v>
<v t="andelf.20090802174929.2"><vh>Type parameters</vh></v>
<v t="andelf.20090802175113"><vh>Base classes</vh></v>
<v t="andelf.20090802182114"><vh>Fields</vh></v>
<v t="andelf.20090802182114.1" a="E"><vh>Methods</vh>
<v t="andelf.20090802182944"><vh>Parameters</vh></v>
<v t="andelf.20090802182944.1"><vh>Method body and local variables</vh></v>
<v t="andelf.20090803013311"><vh>Static and instance methods</vh></v>
<v t="andelf.20090803013342"><vh>Virtual, override, and abstract methods</vh></v>
</v>
</v>
</v>
</v>
<v t="andelf.20090801224436" a="ETV"><vh>C# Tutorials</vh>
<v t="andelf.20090801224436.1"><vh>Properties</vh></v>
<v t="andelf.20090802020839"><vh>Libraries</vh></v>
<v t="andelf.20090802020839.1"><vh>Versioning</vh></v>
</v>
</vnodes>
<tnodes>
<t tx="andelf.20090801132916"></t>
<t tx="andelf.20090801133028">@language csharp
@pagewidth 80</t>
<t tx="andelf.20090801133028.1">C# "See Sharp"
: is a simple, modern, object-oriented, and type-safe programming language

C# is standardized by ECMA International as the ECMA-334 standard and by ISO/IEC as the ISO/IEC 23270 standard. 
Microsoft’s C# compiler for the .NET Framework is a conforming implementation of both of these standards.

 * object-oriented language
 * component-oriented programming
 * gc
 * exception handling
 * type-safe
 * unified type system ( all inherit from the root `object` )
 * versioning emphasis ( virtual / override modifiers )
</t>
<t tx="andelf.20090801134521">using System;
class Hello
{
	static void Main() {
		Console.WriteLine("Hello, World");
	}
}

store in hello.cs

csc hello.cs

will produce a **hello.exe**</t>
<t tx="andelf.20090801134521.1">key concepts
 * programs
 * namespaces
 * types
 * members
 * assemblies ( .exe / .dll : applications / libraries )

example :
    
---------------------------------------------------------

using System;
namespace Acme.Collections
{
	public class Stack
	{
		Entry top;
		public void Push(object data) {
			top = new Entry(top, data);
		}
		public object Pop() {
			if (top == null) throw new InvalidOperationException();
			object result = top.data;
			top = top.next;
			return result;
		}
		class Entry
		{
			public Entry next;
			public object data;
			public Entry(Entry next, object data) {
				this.next = next;
				this.data = data;
			}
		}
	}
}


csc /t:library acme.cs

to produce the **acme.dll**

using System;
using Acme.Collections;
class Test
{
	static void Main() {
		Stack s = new Stack();
		s.Push(1);
		s.Push(10);
		s.Push(100);
		Console.WriteLine(s.Pop());
		Console.WriteLine(s.Pop());
		Console.WriteLine(s.Pop());
	}
}

csc /r:acme.dll test.cs

to produce the **test.exe**</t>
<t tx="andelf.20090801164508">2 kinds of types
 * value type : directly contain their data
 * reference type : store references to their data. objects


value types:
    simple types:
        signed integral: # 8-, 16-, 32-, 64-bit
            sbyte, short, int, long
        unsigned integral:
            byte, ushort, uint, ulong
        unicode characters: # utf-16
            char
        IEEE floating point: # 32-, 64-bit, 
            float, double
        High-precision decimal: # 128-bit, 28-digit precision
            decimal
        Boolean: # true / false
            bool
    Enum types:
        enum E {...}
    Struct types: # all inherit from ``object``
        struct S {...}
    Nullable types:
        Extensions of all other value types with a `null` value

Reference types:
    Class types:
        Ultimate base class of all other types:
            object
        Unicode strings:
            string
        User-defined type:
            class C {...}
    Interface types:
        User-defined type:
            interface I {...}
    Array types:
        Single-, multi-dimensional:
            int[], int[,], ...
    Delegate types:
        User-defined types:
            delegate int D(...)

NOTE:
    C# use `type declarations` to create new types.
    5 user-definable types: class, struct, interface, enum, delegate
    struct are value tyes, do not require heap allocation.
    struct do not support user-specified inheritance. 
    int[] is 1-d, int[,] is mult-d, int[][] is 1-d of 1-d
    Class, struct, interface and delegate types all support generics. (parameterized with other types)
    nullable types, T?, which can hold an additional ``null``, for e.g. int?

**object is the ultimate base class of all types**

boxing and unboxing:
    int i = 123;
    object o = i;			// Boxing, put into a box
	int j = (int)o;		// Unboxing

Type of Variable            Possible Contents
Non-nullable value type	    A value of that exact type
Nullable value type	        A null value or a value of that exact type
object	                     A null reference, a reference to an object of any reference type, or a reference to a boxed value of any value type
Class type	                 A null reference, a reference to an instance of that class type, or a reference to an instance of a class derived from that class type
Interface type	             A null reference, a reference to an instance of a class type that implements that interface type, or a reference to a boxed value of a value type that implements that interface type
Array type	                 A null reference, a reference to an instance of that array type, or a reference to an instance of a compatible array type
Delegate type	              A null reference or a reference to an instance of that delegate type</t>
<t tx="andelf.20090801204842">Expressions are constructed from operands and operators.

most operators can be overloaded.

precedence 优先级, 由高到低.

Primary	    
	x.m		Member access
	x(...)	Method and delegate invocation
	x[...]	Array and indexer access
	x++	Post-increment
	x--	Post-decrement
	new T(...)	Object and delegate creation
	new T(...){...}	Object creation with initializer
	new {...}	Anonymous object initializer
	new T[...]	Array creation
	typeof(T)	Obtain System.Type object for T
	checked(x)	Evaluate expression in checked context
	unchecked(x)	Evaluate expression in unchecked context
	default(T)	Obtain default value of type T
	delegate {...}	Anonymous function (anonymous method)
Unary	
    +x	Identity
	-x	Negation
	!x	Logical negation
	~x	Bitwise negation
	++x	Pre-increment
	--x	Pre-decrement
	(T)x	Explicitly convert x to type T
Multiplicative	
	x * y	Multiplication
	x / y	Division
	x % y	Remainder
Additive
	x + y	Addition, string concatenation, delegate combination
	x – y	Subtraction, delegate removal
Shift
	x &lt;&lt; y	Shift left
	x &gt;&gt; y	Shift right
Relational and type testing	
	x &lt; y	Less than
	x &gt; y	Greater than
	x &lt;= y	Less than or equal
	x &gt;= y	Greater than or equal
	x is T	Return true if x is a T, false otherwise
	x as T	Return x typed as T, or null if x is not a T
Equality
	x == y	Equal
	x != y	Not equal
Logical AND	
	x &amp; y	Integer bitwise AND, boolean logical AND
Logical XOR
	x ^ y	Integer bitwise XOR, boolean logical XOR
Logical OR
	x | y	Integer bitwise OR, boolean logical OR
Conditional AND
	x &amp;&amp; y	Evaluates y only if x is true
Conditional OR
	x || y	Evaluates y only if x is false
Null coalescing
	X ?? y	Evaluates to y if x is null, to x otherwise
Conditional
	x ? y : z	Evaluates y if x is true, z if x is false
Assignment or anonymous function
	x = y	Assignment
	x op= y	Compound assignment; supported operators are *=   /=   %=   +=   -=   &lt;&lt;=   &gt;&gt;=   &amp;=   ^=   |=
	(T x) =&gt; y	Anonymous function (lambda expression)


</t>
<t tx="andelf.20090801224436">
http://msdn.microsoft.com/en-us/library/aa288436(VS.71).aspx

@language csharp</t>
<t tx="andelf.20090801224436.1">标准用法
private string myName ="N/A";
public string Name
{
    get 
    {
       return myName; 
    }
    set 
    { 
       myName = value; 
    }
}

覆盖某方法
public override string ToString()
{
    return "Name = " + Name + ", Age = " + Age;
}

抽象, 只是说明什么属性可用, 不给出具体实现
// abstractshape.cs
// compile with: /target:library
public abstract class Shape
{
    private string myId;

    public Shape(string s)
    {
        Id = s;   // calling the set accessor of the Id property
    }
    public string Id
    {
        // get and set myId
        // ...
    }
    // Area is a read-only property - only a get accessor is needed:
    public abstract double Area
    {
        get;
    }
    ....
}

继承
// shapes.cs
// compile with: /target:library /reference:abstractshape.dll
public class Square : Shape
{
    public Square(int side, string id) : base(id) // call base() ?
    {
        mySide = side;
    }
    public override double Area
    {
        get { return mySide * mySide };
    }
}
public class Circle : Shape
{ ... } // Area implement may use System.Math.PI
public class Rectangle : Shape
{ ... }


// testcode
// shapetest.cs
// compile with: /reference:abstractshape.dll;shapes.dll
public class TestClass
{
    public static void Main()
    {
        Shape[] shapes =
         {
            new Square(5, "Square #1"),
            new Circle(3, "Circle #1"),
            new Rectangle( 4, 5, "Rectangle #1")
         };
         ...
    }
}</t>
<t tx="andelf.20090802020839">This tutorial shows how to create and use libraries in C#.

命令行:
csc /target:library /out:Functions.dll Factorial.cs DigitCounter.cs

csc /out:FunctionTest.exe /R:Functions.DLL FunctionClient.cs 

/ 和 - 通用, 选项缩写为首字母

使用 namespace ... { ... } 组织</t>
<t tx="andelf.20090802020839.1">This tutorial demonstrates versioning in C# through the use of the override and new keywords. Versioning maintains compatibility between base and derived classes as they evolve.

C# 中, 方法默认是非虚的, not virtual, 使用 virtual 即可为基类设置虚方法. 
这样继承类使用 override 覆盖基类虚方法或者使用 new 隐藏基类虚方法.
如果没有指定 override 或 new, 将触发编译器警告, 继承类将隐藏基类中方法.


以下例子中, 使用 override 会导致调用派生类方法. 而其他两种都只调用基类方法.

pubic class MyBase 
{
   public virtual string Meth1() 
   {
      return "MyBase-Meth1";
   }
   public virtual string Meth2() 
   {
      return "MyBase-Meth2";
   }
   public virtual string Meth3() 
   {
      return "MyBase-Meth3";
   }
}

class MyDerived : MyBase 
{
   // Overrides the virtual method Meth1 using the override keyword:
   public override string Meth1() 
   {
      return "MyDerived-Meth1";
   }
   // Explicitly hide the virtual method Meth2 using the new
   // keyword:
   public new string Meth2() 
   {
      return "MyDerived-Meth2";
   }
   // Because no keyword is specified in the following declaration
   // a warning will be issued to alert the programmer that 
   // the method hides the inherited member MyBase.Meth3():
   public string Meth3() 
   {
      return "MyDerived-Meth3";
   }

   public static void Main() 
   {
      MyDerived mD = new MyDerived();
      MyBase mB = (MyBase) mD;

      System.Console.WriteLine(mB.Meth1());
      System.Console.WriteLine(mB.Meth2());
      System.Console.WriteLine(mB.Meth3());
   }
}


Output

MyDerived-Meth1
MyBase-Meth2
MyBase-Meth3</t>
<t tx="andelf.20090802173832">The actions of a program are expressed using statements.

C# 支持以下几种语句:
    block : { ... }
	declaration statements : 用于申明局部变量和常量
	expresstion statements : 用于求表达式的值, 包括方法调用, new 分配对象, =, ++, --, ...
	selection statements : 选择结构语句 if, switch
	iteration statements : while, do, for, foreach
	jump statements : 用于转移控制, break, continue, goto, throw, return, yield
	try ... catch statements : 捕获异常
	try ... finally statements : 无论发生异常与否, 均执行结束代码
	checked, unchecked statements : 用于控制整数类型运算/转换溢出检查
	lock statements : 获得给定对象的 mutual-exclusion lock
	using statements : 获得一个资源, 执行语句后释放资源

examples:

// Local variable declaration	
static void Main() {
	int a; 
	int b = 2, c = 3; 
	a = 1;
	Console.WriteLine(a + b + c);
}

// Local constant declaration
static void Main() {
	const float pi = 3.1415927f;
	const int r = 25;
	Console.WriteLine(pi * r * r);
}

// yield statement
static IEnumerable&lt;int&gt; Range(int from, int to) {
	for (int i = from; i &lt; to; i++) {
		yield return i;
	}
	yield break;
}
static void Main() {
	foreach (int x in Range(-10,10)) {
		Console.WriteLine(x);
	}
}

//throw and try statements
static double Divide(double x, double y) {
	if (y == 0) throw new DivideByZeroException();
	return x / y;
}
static void Main(string[] args) {
	try {
		if (args.Length != 2) {
			throw new Exception("Two numbers required");
		}
		double x = double.Parse(args[0]);
		double y = double.Parse(args[1]);
		Console.WriteLine(Divide(x, y));
	}
	catch (Exception e) {
		Console.WriteLine(e.Message);
	}
	finally {
		Console.WriteLine(“Good bye!”);
	}
}

// checked and unchecked statements
static void Main() {
	int i = int.MaxValue;
	checked {
		Console.WriteLine(i + 1);		// Exception
	}
	unchecked {
		Console.WriteLine(i + 1);		// Overflow
	}
}

// lock statement
class Account
{
	decimal balance;
	public void Withdraw(decimal amount) {
		lock (this) {
			if (amount &gt; balance) {
				throw new Exception("Insufficient funds");
			}
			balance -= amount;
		}
	}
}

// using statement
static void Main() {
	using (TextWriter w = File.CreateText("test.txt")) {
		w.WriteLine("Line one");
		w.WriteLine("Line two");
		w.WriteLine("Line three");
	}
}

	
</t>
<t tx="andelf.20090802173832.1">Classes are the most fundamental of C#’s types.

combines state(fields) and actions(methods, function members) in a single unit.

instances of the class : objects
inheritance
polymorphism
derived classes, base classes

使用类定义创建新类.
class header 表明属性和修饰符, 类名, 基类名(可选), 所实现接口.
class body 内为成员声明.

public class Point
{
	public int x, y;
	public Point(int x, int y) {
		this.x = x;
		this.y = y;
	}
}

Point p1 = new Point(0, 0);
Point p2 = new Point(10, 20);

C# 中自动回收不再使用的对象.
</t>
<t tx="andelf.20090802174929">The members of a class are either static members or instance members.

Static members belong to classes, and instance members belong to objects (instances of classes).

kinds of members a class can contain:

Constants: 常量
		Constant values associated with the class
Fields:
		Variables of the class
Methods: 方法
		Computations and actions that can be performed by the class
Properties: 属性
		Actions associated with reading and writing named properties of the class
Indexers:
		Actions associated with indexing instances of the class like an array
Events: 事件
		Notifications that can be generated by the class
Operators: 运算符
		Conversions and expression operators supported by the class
Constructors: 构造函数
		Actions required to initialize instances of the class or the class itself
Destructors: 析构函数
		Actions to perform before instances of the class are permanently discarded
Types:
		Nested types declared by the class
</t>
<t tx="andelf.20090802174929.1">Each member of a class has an associated accessibility, which controls the regions of program text that are able to access the member.

五种可访问性

public
		Access not limited
protected
		Access limited to this class or classes derived from this class
internal
		Access limited to this program
protected internal
		Access limited to this program or classes derived from this class
private	
		Access limited to this class
</t>
<t tx="andelf.20090802174929.2">类定义可以指定一系列类型参数. class body 中就可以使用这些参数来定义成员.

例如
public class Pair&lt;TFirst,TSecond&gt;
{
	public TFirst First;
	public TSecond Second;
}

这样的类叫做 generic class type.
Struct, interface, delegate types can also be generic.

Pair&lt;int,string&gt; pair = new Pair&lt;int,string&gt; { First = 1, Second = “two” };
int i = pair.First;     // TFirst is int
string s = pair.Second;
</t>
<t tx="andelf.20090802175113">A class declaration may specify a base class by following the class name and type parameters with a colon and the name of the base class.

若忽略基类, 则意味着由 object 继承而来.

public class Point
{
	public int x, y;
	public Point(int x, int y) {
		this.x = x;
		this.y = y;
	}
}
public class Point3D: Point
{
	public int z;
	public Point3D(int x, int y, int z): base(x, y) {
		this.z = z;
	}
}

Point 类的基类是 object, Point3D 类的基类是 Point.

从一个类到它的基类可以有一个隐式类型转换:

Point a = new Point(10, 20);
Point b = new Point3D(10, 20, 30);
</t>
<t tx="andelf.20090802182114">A field is a variable that is associated with a class or with an instance of a class.

field 如果有 static 修饰符, 则为 static field. 属于类, 只可能有一个.
如果没有, 则为 instance field, 每个该类的实例都包含一个不同的 copy.

public class Color
{
	public static readonly Color Black = new Color(0, 0, 0);
	public static readonly Color White = new Color(255, 255, 255);
	public static readonly Color Red = new Color(255, 0, 0);
	public static readonly Color Green = new Color(0, 255, 0);
	public static readonly Color Blue = new Color(0, 0, 255);
	private byte r, g, b;
	public Color(byte r, byte g, byte b) {
		this.r = r;
		this.g = g;
		this.b = b;
	}
}

这里的 Black, White, ... 为 static field.
r, g, b 为 instance field.

readonly fields 使用 readonly 修饰符. 它的赋值只能在声明和同一类的构造函数中出现.
</t>
<t tx="andelf.20090802182114.1">A method is a member that implements a computation or action that can be performed by an object or class. 

Static methods are accessed through the class.
Instance methods are accessed through instances of the class.

parameters(possibly empty), return type, signature
</t>
<t tx="andelf.20090802182944">Parameters are used to pass values or variable references to methods.

The parameters of a method get their actual values from the arguments that are specified when the method is invoked.

4 kinds of parameters: value parameters, reference parameters, output parameters, parameter arrays.

A value parameter is used for input parameter passing.
A reference parameter is used for both input and output parameter passing. use `ref`.

using System;
class Test
{
	static void Swap(ref int x, ref int y) {
		int temp = x;
		x = y;
		y = temp;
	}
	static void Main() {
		int i = 1, j = 2;
		Swap(ref i, ref j);
		Console.WriteLine("{0} {1}", i, j);			// Outputs "2 1"
	}
}

An output parameter is used for output parameter passing. use `out`.

using System;
class Test
{
	static void Divide(int x, int y, out int result, out int remainder) {
		result = x / y;
		remainder = x % y;
	}
	static void Main() {
		int res, rem;
		Divide(10, 3, out res, out rem);
		Console.WriteLine("{0} {1}", res, rem);	// Outputs "3 1"
	}
}

A parameter array permits a variable number of arguments to be passed to a method. with `params` modifier.

// in System.Console
public class Console
{
	public static void Write(string fmt, params object[] args) {...}
	public static void WriteLine(string fmt, params object[] args) {...}
	...
}

Console.WriteLine("x={0} y={1} z={2}", x, y, z);

is equivalent to writing the following:

string s = "x={0} y={1} z={2}";
object[] args = new object[3];
args[0] = x;
args[1] = y;
args[2] = z;
Console.WriteLine(s, args);
</t>
<t tx="andelf.20090802182944.1">A method’s body specifies the statements to execute when the method is invoked.

local variables (a type name, a variable name, possibly an initial value)

例如这里的 i, j
class Squares
{
	static void Main() {
		int i = 0;
		int j;
		while (i &lt; 10) {
			j = i * i;
			Console.WriteLine("{0} x {0} = {1}", i, j);
			i = i + 1;
		}
	}
}

C# 中使用局部变量前必须 definitely assigend. 否则编译器报错.
</t>
<t tx="andelf.20090803013311">A method declared with a static modifier is a static method. 
A static method does not operate on a specific instance and can only directly access static members.

A method declared without a static modifier is an instance method. 
An instance method operates on a specific instance and can access both static and instance members.
instance method 使用 this 访问实例,

class Entity
{
	static int nextSerialNo;
	int serialNo;
	public Entity() {			// 实例方法可以访问静态成员
		serialNo = nextSerialNo++;
	}
	public int GetSerialNo() {	// 实例方法可以访问实例成员
		return serialNo;
	}
	public static int GetNextSerialNo() { // 静态方法只能访问静态成员
		return nextSerialNo;
	}
	public static void SetNextSerialNo(int value) {
		nextSerialNo = value;
	}
}

// how to use it

using System;
class Test
{
	static void Main() {
		Entity.SetNextSerialNo(1000);
		Entity e1 = new Entity();
		Entity e2 = new Entity();
		Console.WriteLine(e1.GetSerialNo());				// Outputs "1000"
		Console.WriteLine(e2.GetSerialNo());				// Outputs "1001"
		Console.WriteLine(Entity.GetNextSerialNo());		// Outputs "1002"
	}
}

静态方法使用 classname.staticmethodname(parms) 调用.
</t>
<t tx="andelf.20090803013342"></t>
</tnodes>
</leo_file>
