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

open Array;;

for i = 10 to 0 do
	print_int i;
done;;
(*���forѭ������˼��for ( int i = 10 ; i < 0 ; i++ ){}(Cϵ����)*)

let arr = [];;
1::2::3::arr;;
(*�½�һ����list arr��Ȼ��3/2/1�ֱ����arr��*)

type complex = { r: float; i: float};;
(*������һ�����������͡�����r��i����float*)

let c = {r= 1.; i= 2.};;
(*������һ��complex���͵�c��������ֵ���1(float)��2(float)*)

let add_c x y =
{
	r=x.r+.y.r;
	i=x.i+.y.i;
};;
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

let stk = Stack.create;;
(*����һ����Ϊstk��stack*)

let a = stk ();;
(*��stkʵ����*)

Stack.push 1 a;;
(*��1������Ϊa�Ķ�*)

Stack.top a;;
(*����a�����µ�һ��Ԫ��*)

Stack.pop a;;
(*��a���µ�һ��Ԫ��ɾ��*)

Stack.clear a;;
(*��a���*)

Stack.copy a;;
(*����һ��a*)

Stack.is_empty a;;
(*��a�ǿգ�����true*)

Stack.length a;;
(*����a�ĳ���*)

(*
http://caml.inria.fr/pub/docs/oreilly-book/html.bak/book-ora016.html
Constructors can have arguments. The keyword of indicates the type of the constructor's arguments. This supports the gathering into a single type of objects of different types, each one being introduced with a particular constructor.

Here is a classic example of defining a datatype to represent the cards in a game, here Tarot8. The types suit and card are defined in the following way:
*)