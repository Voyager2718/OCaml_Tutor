(*
<<<<<<< HEAD
-open **;; ��**ģ��
-#use "**";; ��**�ļ�
-ocamlc -c ** ��cmd/terminal���棬��**�ļ�����
-��һ���Զ���ģ���ʱ����Ҫ��cmd/terminalʹ�������﷨��ocaml ***.cmo����˼�ǣ�ʹ��ocaml����ͬʱ����***.cmo (����ģ����ļ�������ΪСд������open��ʱ���������ĸ��д)
-OCaml��������ĸ���ܴ�д
 ����ĸ��д����ֻ����ĳtype���͵�Ԫ��
*)

let (a,b) = (1,"2");;
(*��a,b��ֵ���ó�1��"2"���ֱ���int��string��*)

let d = (1,2,3);;
(*��d��ֵ���ó�(1,2,3)��d�������� int*int*int��*)
=======
-open **;; 打开**模块
-#use "**";; 打开**文件
-ocamlc -c ** 在cmd/terminal里面，将**文件编译
-打开一个自定义模块的时候，需要在cmd/terminal使用以下语法：ocaml ***.cmo（意思是：使用ocaml，并同时引入***.cmo (定义模块的文件名必须为小写，但是open的时候必须首字母大写)
-OCaml变量首字母不能大写
 首字母大写的是只能是某type类型的元素
*)

let (a,b) = (1,"2");;
(*将a,b的值设置成1和"2"（分别是int和string）*)

let d = (1,2,3);;
(*将d的值设置成(1,2,3)（d的类型是 int*int*int）*)
>>>>>>> origin/master

open Array;;

let arr = [|1;2;3|];;
(*数组*)

Array.make 3 0;;
(*数组，生成大小为3的数组，并初始化为0*)

Array.length arr;;
(*返回数组元素数*)

arr.(1);;
(*返回arr数组第2位元素*)

Array.get arr 1;;
(*返回arr数组第2位元素*)

Array.set arr 1 2;;
(*将arr数组的第1位元素赋值为2*)

Array.create 3 arr;;
(*创建一个数组,里面有3个元素,都是arr(数组中元素是数组)*)

for i = 10 to 0 do
	print_int i;
done;;
<<<<<<< HEAD
(*���forѭ������˼��for ( int i = 10 ; i < 0 ; i++ ){}(Cϵ����)*)

let arr = [];;
1::2::3::arr;;
(*�½�һ����list arr��Ȼ��3/2/1�ֱ����arr��*)

type complex = { r: float; i: float};;
(*������һ�����������͡�����r��i����float*)

let c = {r= 1.; i= 2.};;
(*������һ��complex���͵�c��������ֵ���1(float)��2(float)*)
=======
(*这个for循环的意思是for ( int i = 10 ; i < 0 ; i++ ){}(C系语言)*)

let arr = [];;
1::2::3::arr;;
(*新建一个空list arr，然后将3/2/1分别加入arr中*)

type complex = { r: float; i: float};;
(*定义了一个复数的类型。其中r和i均是float*)

let c = {r= 1.; i= 2.};;
(*定义了一个complex类型的c，并将其值设成1(float)和2(float)*)
>>>>>>> origin/master

let add_c x y =
{
	r=x.r+.y.r;
	i=x.i+.y.i;
};;
<<<<<<< HEAD
(*������һ������add_c��������complex������Ӳ�����*)

let add_c x y = match (x,y) with 
	({r=x1;i=y1},{r=x2;i=y2})->{r=x1+.x2;i=x1+.x2};;
(*��һ��������ʹ��match..with�İ汾*)

let c = add_c c c;;
(*��c��Ϊ����������2c*)

let c2 = { c with r = 0.};;
(*������һ��complex���͵�c1��r=0(float)������Ԫ����c�е�Ԫ����ͬ*)

Sys.argv;;
(*�������в�����string����*)



(*
http://caml.inria.fr/pub/docs/oreilly-book/html.bak/book-ora016.html
Constructors can have arguments. The keyword of indicates the type of the constructor's arguments. This supports the gathering into a single type of objects of different types, each one being introduced with a particular constructor.

Here is a classic example of defining a datatype to represent the cards in a game, here Tarot8. The types suit and card are defined in the following way:
*)
=======
(*定义了一个函数add_c，将两个complex类型相加并返回*)

let add_c x y = match (x,y) with 
	({r=x1;i=y1},{r=x2;i=y2})->{r=x1+.x2;i=x1+.x2};;
(*上一个函数，使用match..with的版本*)

let c = add_c c c;;
(*将c作为参数，返回2c*)

let c2 = { c with r = 0.};;
(*定义了一个complex类型的c1，r=0(float)，其它元素与c中的元素相同*)


---
Constructors can have arguments. The keyword of indicates the type of the constructor's arguments. This supports the gathering into a single type of objects of different types, each one being introduced with a particular constructor.

Here is a classic example of defining a datatype to represent the cards in a game, here Tarot8. The types suit and card are defined in the following way:
>>>>>>> origin/master
