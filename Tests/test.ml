(*
<<<<<<< HEAD
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
=======
-open **;; 鎵撳紑**妯″潡
-#use "**";; 鎵撳紑**鏂囦欢
-ocamlc -c ** 鍦╟md/terminal閲岄潰锛屽皢**鏂囦欢缂栬瘧
-鎵撳紑涓�涓嚜瀹氫箟妯″潡鐨勬椂鍊欙紝闇�瑕佸湪cmd/terminal浣跨敤浠ヤ笅璇硶锛歰caml ***.cmo锛堟剰鎬濇槸锛氫娇鐢╫caml锛屽苟鍚屾椂寮曞叆***.cmo (瀹氫箟妯″潡鐨勬枃浠跺悕蹇呴』涓哄皬鍐欙紝浣嗘槸open鐨勬椂鍊欏繀椤婚瀛楁瘝澶у啓)
-OCaml鍙橀噺棣栧瓧姣嶄笉鑳藉ぇ鍐�
 棣栧瓧姣嶅ぇ鍐欑殑鏄彧鑳芥槸鏌恡ype绫诲瀷鐨勫厓绱�
*)

let (a,b) = (1,"2");;
(*灏哸,b鐨勫�艰缃垚1鍜�"2"锛堝垎鍒槸int鍜宻tring锛�*)

let d = (1,2,3);;
(*灏哾鐨勫�艰缃垚(1,2,3)锛坉鐨勭被鍨嬫槸 int*int*int锛�*)
>>>>>>> origin/master

open Array;;

let arr = [|1;2;3|];;
(*鏁扮粍*)

Array.make 3 0;;
(*鏁扮粍锛岀敓鎴愬ぇ灏忎负3鐨勬暟缁勶紝骞跺垵濮嬪寲涓�0*)

Array.length arr;;
(*杩斿洖鏁扮粍鍏冪礌鏁�*)

arr.(1);;
(*杩斿洖arr鏁扮粍绗�2浣嶅厓绱�*)

Array.get arr 1;;
(*杩斿洖arr鏁扮粍绗�2浣嶅厓绱�*)

Array.set arr 1 2;;
(*灏哸rr鏁扮粍鐨勭1浣嶅厓绱犺祴鍊间负2*)

Array.create 3 arr;;
(*鍒涘缓涓�涓暟缁�,閲岄潰鏈�3涓厓绱�,閮芥槸arr(鏁扮粍涓厓绱犳槸鏁扮粍)*)

for i = 10 to 0 do
	print_int i;
done;;
<<<<<<< HEAD
(*这个for循环的意思是for ( int i = 10 ; i < 0 ; i++ ){}(C系语言)*)

let arr = [];;
1::2::3::arr;;
(*新建一个空list arr，然后将3/2/1分别加入arr中*)

type complex = { r: float; i: float};;
(*定义了一个复数的类型。其中r和i均是float*)

let c = {r= 1.; i= 2.};;
(*定义了一个complex类型的c，并将其值设成1(float)和2(float)*)
=======
(*杩欎釜for寰幆鐨勬剰鎬濇槸for ( int i = 10 ; i < 0 ; i++ ){}(C绯昏瑷�)*)

let arr = [];;
1::2::3::arr;;
(*鏂板缓涓�涓┖list arr锛岀劧鍚庡皢3/2/1鍒嗗埆鍔犲叆arr涓�*)

type complex = { r: float; i: float};;
(*瀹氫箟浜嗕竴涓鏁扮殑绫诲瀷銆傚叾涓璻鍜宨鍧囨槸float*)

let c = {r= 1.; i= 2.};;
(*瀹氫箟浜嗕竴涓猚omplex绫诲瀷鐨刢锛屽苟灏嗗叾鍊艰鎴�1(float)鍜�2(float)*)
>>>>>>> origin/master

let add_c x y =
{
	r=x.r+.y.r;
	i=x.i+.y.i;
};;
<<<<<<< HEAD
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



(*
http://caml.inria.fr/pub/docs/oreilly-book/html.bak/book-ora016.html
Constructors can have arguments. The keyword of indicates the type of the constructor's arguments. This supports the gathering into a single type of objects of different types, each one being introduced with a particular constructor.

Here is a classic example of defining a datatype to represent the cards in a game, here Tarot8. The types suit and card are defined in the following way:
*)
=======
(*瀹氫箟浜嗕竴涓嚱鏁癮dd_c锛屽皢涓や釜complex绫诲瀷鐩稿姞骞惰繑鍥�*)

let add_c x y = match (x,y) with 
	({r=x1;i=y1},{r=x2;i=y2})->{r=x1+.x2;i=x1+.x2};;
(*涓婁竴涓嚱鏁帮紝浣跨敤match..with鐨勭増鏈�*)

let c = add_c c c;;
(*灏哻浣滀负鍙傛暟锛岃繑鍥�2c*)

let c2 = { c with r = 0.};;
(*瀹氫箟浜嗕竴涓猚omplex绫诲瀷鐨刢1锛宺=0(float)锛屽叾瀹冨厓绱犱笌c涓殑鍏冪礌鐩稿悓*)


---
Constructors can have arguments. The keyword of indicates the type of the constructor's arguments. This supports the gathering into a single type of objects of different types, each one being introduced with a particular constructor.

Here is a classic example of defining a datatype to represent the cards in a game, here Tarot8. The types suit and card are defined in the following way:
>>>>>>> origin/master
