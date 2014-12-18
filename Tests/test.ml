(*
-open **;; 打开**模块
-#use "**";; 打开**文件
-ocamlc -c ** 在cmd/terminal里面，将**文件编译
-打开一个自定义模块的时候，需要在cmd/terminal使用以下语法：ocaml ***.cmo（意思是：使用ocaml，并同时引入***.cmo (定义模块的文件名必须为小写，但是open的时候必须首字母大写)
-OCaml变量首字母不能大写
 首字母大写的是只能是某type类型的元素
-let main () = .. ;; let _ = main();; 通过let _ = main()定义main是主函数。
-先用ocamlc -c将程序编译出来，然后用ocamlc -o ** *** ****将程序编译成可执行文件。（其中*为输出文件名，**为依赖文件，***为源代码（.ml））
 带参数运行的方法：./* arg1 arg2 （其中*为可执行文件，arg1，arg2为参数
*)

let (a,b) = (1,"2");;
(*将a,b的值设置成1和"2"（分别是int和string）*)

let d = (1,2);;
(*将d的值设置成(1,2)（d的类型是 int*int）*)

fst d;;
(*将输出d中第一个“元素”，即1*)

snd d;;
(*将输出d中第二个“元素”，即2*)

for i = 10 to 0 do
	print_int i;
done;;
(*这个for循环的意思是for ( int i = 10 ; i < 0 ; i++ ){}(C系语言)*)

type complex = { r: float; i: float};;
(*定义了一个复数的类型。其中r和i均是float*)

let c = {r= 1.; i= 2.};;
(*定义了一个complex类型的c，并将其值设成1(float)和2(float)*)

let add_c x y =
{
	r=x.r+.y.r;
	i=x.i+.y.i;
};;
(*定义了一个函数add_c，将两个complex类型相加并返回*)

let add_c x y = match (x,y) with 
	({r=x1;i=y1},{r=x2;i=y2})->{r=x1+.x2;i=x1+.x2};;
(*上一个函数，使用match..with的版本*)

let c = add_c c c;;
(*将c作为参数，返回2c*)

let c2 = { c with r = 0.};;
(*定义了一个complex类型的c1，r=0(float)，其它元素与c中的元素相同*)

Sys.argv;;
(*保存运行参数的string数组*)

(*--------Big_int--------*)
#load "nums.cma";;
open Big_int;;

let bi = Big_int.big_int_of_int 100;;
(*创建一个big_int*)

Big_int.string_of_big_int bi;;
(*返回bi的string表达（要显示big_int，必须用此方法）*)

(*--------Array--------*)
open Array;;

let arr = [||];;
(*创建一个空array arr*)

let arr = [|1;2;3|];;
(*创建一个一维数组，放入1/2/3*)

arr.(0)
(*arr里面第一个元素*)

Array.get arr 0;;
(*返回arr的第一个元素*)

Array.make 10 0;;
(*创建一个10个元素的数组，并初始化为0*)

Array.create 10 0;;
(*创建一个10个元素的数组，并初始化为0*)

(*--------List--------*)
open List;;

let lst = [];;
1::2::3::lst;;
(*创建一个空list lst，然后将3/2/1分别加入lst中*)

List.nth lst 0;;
(*lst里面第一个元素*)

List.length lst;;
(*返回lst的长度*)

List.tl lst;;
(*返回lst除第一个元素以外的list*)

List.hd lst;;
(*返回lst的第一个元素*)

List.rev lst;;
(*返回倒序排列的lst*)

let lst2 = [[1;2];[3;4;5]];;
List.concat lst2;;
(*返回[1;2;3;4;5]*)

List.flatten lst2;;
(*返回[1;2;3;4;5]*)

(*--------String--------*)
let str = "P.R.China";;
(*创建一个string*)

String.length str;;
(*返回str的长度*)

String.get str 1;;
(*返回str第2个元素*)

String.make 5 'a';;
(*返回一个长度为5，全部是a的string*)

String.sub str 1 3;;
(*返回str从第二位长度3的字符串（即".R."）*)

String.index str 'a';;
(*返回str中'a'的位置*)

String.uppercase str;;
(*返回str的大写（lower同理）*)

String.compare str "China";;
(*相同则返回0，不同返回-1*)

String.capitalize str;;
(*返回首字母大写的str*)

(*--------Stack--------*)
let stk = Stack.create;;
(*创建一个名为stk的stack*)

let s = stk ();;
(*将stk实例化*)

Stack.push 1 s;;
(*将1放入名为s的堆*)

Stack.top s;;
(*返回s的最新的一个元素*)

Stack.pop s;;
(*将s最新的一个元素删除*)

Stack.clear s;;
(*将s清空*)

Stack.copy s;;
(*返回一个s*)

Stack.is_empty s;;
(*若s是空，返回true*)

Stack.length s;;
(*返回s的长度*)

Stack.iter f s;;
(*
第一个参数是一个函数，函数的参数是一个任何类型的数，返回值是unit 。第二个参数是一个堆。
iter的作用是：按顺序将堆的每一个元素作为f的参数执行f。
*)

(*--------文件--------*)
let fopen = open_in "***";;
(*创建一个名为fopen的文件句柄*)

char_of_int ( input_byte fopen );;
(*读取下一个字符（不能回退）*)

End_of_file;;
(*一个Exception*)

(*--------常用--------*)
let read fopen =
	try
		while true do
			print_char(char_of_int(input_byte fopen));
		done
	with
	|End_of_file->close_in fopen;;
(*读取fopen中的每一个字符，并输出。fopen为输入对象*)
