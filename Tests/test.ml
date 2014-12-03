(*
<<<<<<< HEAD
-open **;; ´ò¿ª**Ä£¿é
-#use "**";; ´ò¿ª**ÎÄ¼ş
-ocamlc -c ** ÔÚcmd/terminalÀïÃæ£¬½«**ÎÄ¼ş±àÒë
-´ò¿ªÒ»¸ö×Ô¶¨ÒåÄ£¿éµÄÊ±ºò£¬ĞèÒªÔÚcmd/terminalÊ¹ÓÃÒÔÏÂÓï·¨£ºocaml ***.cmo£¨ÒâË¼ÊÇ£ºÊ¹ÓÃocaml£¬²¢Í¬Ê±ÒıÈë***.cmo (¶¨ÒåÄ£¿éµÄÎÄ¼şÃû±ØĞëÎªĞ¡Ğ´£¬µ«ÊÇopenµÄÊ±ºò±ØĞëÊ××ÖÄ¸´óĞ´)
-OCaml±äÁ¿Ê××ÖÄ¸²»ÄÜ´óĞ´
 Ê××ÖÄ¸´óĞ´µÄÊÇÖ»ÄÜÊÇÄ³typeÀàĞÍµÄÔªËØ
*)

let (a,b) = (1,"2");;
(*½«a,bµÄÖµÉèÖÃ³É1ºÍ"2"£¨·Ö±ğÊÇintºÍstring£©*)

let d = (1,2,3);;
(*½«dµÄÖµÉèÖÃ³É(1,2,3)£¨dµÄÀàĞÍÊÇ int*int*int£©*)
=======
-open **;; æ‰“å¼€**æ¨¡å—
-#use "**";; æ‰“å¼€**æ–‡ä»¶
-ocamlc -c ** åœ¨cmd/terminalé‡Œé¢ï¼Œå°†**æ–‡ä»¶ç¼–è¯‘
-æ‰“å¼€ä¸€ä¸ªè‡ªå®šä¹‰æ¨¡å—çš„æ—¶å€™ï¼Œéœ€è¦åœ¨cmd/terminalä½¿ç”¨ä»¥ä¸‹è¯­æ³•ï¼šocaml ***.cmoï¼ˆæ„æ€æ˜¯ï¼šä½¿ç”¨ocamlï¼Œå¹¶åŒæ—¶å¼•å…¥***.cmo (å®šä¹‰æ¨¡å—çš„æ–‡ä»¶åå¿…é¡»ä¸ºå°å†™ï¼Œä½†æ˜¯opençš„æ—¶å€™å¿…é¡»é¦–å­—æ¯å¤§å†™)
-OCamlå˜é‡é¦–å­—æ¯ä¸èƒ½å¤§å†™
 é¦–å­—æ¯å¤§å†™çš„æ˜¯åªèƒ½æ˜¯æŸtypeç±»å‹çš„å…ƒç´ 
*)

let (a,b) = (1,"2");;
(*å°†a,bçš„å€¼è®¾ç½®æˆ1å’Œ"2"ï¼ˆåˆ†åˆ«æ˜¯intå’Œstringï¼‰*)

let d = (1,2,3);;
(*å°†dçš„å€¼è®¾ç½®æˆ(1,2,3)ï¼ˆdçš„ç±»å‹æ˜¯ int*int*intï¼‰*)
>>>>>>> origin/master

open Array;;

let arr = [|1;2;3|];;
(*æ•°ç»„*)

Array.make 3 0;;
(*æ•°ç»„ï¼Œç”Ÿæˆå¤§å°ä¸º3çš„æ•°ç»„ï¼Œå¹¶åˆå§‹åŒ–ä¸º0*)

Array.length arr;;
(*è¿”å›æ•°ç»„å…ƒç´ æ•°*)

arr.(1);;
(*è¿”å›arræ•°ç»„ç¬¬2ä½å…ƒç´ *)

Array.get arr 1;;
(*è¿”å›arræ•°ç»„ç¬¬2ä½å…ƒç´ *)

Array.set arr 1 2;;
(*å°†arræ•°ç»„çš„ç¬¬1ä½å…ƒç´ èµ‹å€¼ä¸º2*)

Array.create 3 arr;;
(*åˆ›å»ºä¸€ä¸ªæ•°ç»„,é‡Œé¢æœ‰3ä¸ªå…ƒç´ ,éƒ½æ˜¯arr(æ•°ç»„ä¸­å…ƒç´ æ˜¯æ•°ç»„)*)

for i = 10 to 0 do
	print_int i;
done;;
<<<<<<< HEAD
(*Õâ¸öforÑ­»·µÄÒâË¼ÊÇfor ( int i = 10 ; i < 0 ; i++ ){}(CÏµÓïÑÔ)*)

let arr = [];;
1::2::3::arr;;
(*ĞÂ½¨Ò»¸ö¿Õlist arr£¬È»ºó½«3/2/1·Ö±ğ¼ÓÈëarrÖĞ*)

type complex = { r: float; i: float};;
(*¶¨ÒåÁËÒ»¸ö¸´ÊıµÄÀàĞÍ¡£ÆäÖĞrºÍi¾ùÊÇfloat*)

let c = {r= 1.; i= 2.};;
(*¶¨ÒåÁËÒ»¸öcomplexÀàĞÍµÄc£¬²¢½«ÆäÖµÉè³É1(float)ºÍ2(float)*)
=======
(*è¿™ä¸ªforå¾ªç¯çš„æ„æ€æ˜¯for ( int i = 10 ; i < 0 ; i++ ){}(Cç³»è¯­è¨€)*)

let arr = [];;
1::2::3::arr;;
(*æ–°å»ºä¸€ä¸ªç©ºlist arrï¼Œç„¶åå°†3/2/1åˆ†åˆ«åŠ å…¥arrä¸­*)

type complex = { r: float; i: float};;
(*å®šä¹‰äº†ä¸€ä¸ªå¤æ•°çš„ç±»å‹ã€‚å…¶ä¸­rå’Œiå‡æ˜¯float*)

let c = {r= 1.; i= 2.};;
(*å®šä¹‰äº†ä¸€ä¸ªcomplexç±»å‹çš„cï¼Œå¹¶å°†å…¶å€¼è®¾æˆ1(float)å’Œ2(float)*)
>>>>>>> origin/master

let add_c x y =
{
	r=x.r+.y.r;
	i=x.i+.y.i;
};;
<<<<<<< HEAD
(*¶¨ÒåÁËÒ»¸öº¯Êıadd_c£¬½«Á½¸öcomplexÀàĞÍÏà¼Ó²¢·µ»Ø*)

let add_c x y = match (x,y) with 
	({r=x1;i=y1},{r=x2;i=y2})->{r=x1+.x2;i=x1+.x2};;
(*ÉÏÒ»¸öº¯Êı£¬Ê¹ÓÃmatch..withµÄ°æ±¾*)

let c = add_c c c;;
(*½«c×÷Îª²ÎÊı£¬·µ»Ø2c*)

let c2 = { c with r = 0.};;
(*¶¨ÒåÁËÒ»¸öcomplexÀàĞÍµÄc1£¬r=0(float)£¬ÆäËüÔªËØÓëcÖĞµÄÔªËØÏàÍ¬*)

Sys.argv;;
(*±£´æÔËĞĞ²ÎÊıµÄstringÊı×é*)



(*
http://caml.inria.fr/pub/docs/oreilly-book/html.bak/book-ora016.html
Constructors can have arguments. The keyword of indicates the type of the constructor's arguments. This supports the gathering into a single type of objects of different types, each one being introduced with a particular constructor.

Here is a classic example of defining a datatype to represent the cards in a game, here Tarot8. The types suit and card are defined in the following way:
*)
=======
(*å®šä¹‰äº†ä¸€ä¸ªå‡½æ•°add_cï¼Œå°†ä¸¤ä¸ªcomplexç±»å‹ç›¸åŠ å¹¶è¿”å›*)

let add_c x y = match (x,y) with 
	({r=x1;i=y1},{r=x2;i=y2})->{r=x1+.x2;i=x1+.x2};;
(*ä¸Šä¸€ä¸ªå‡½æ•°ï¼Œä½¿ç”¨match..withçš„ç‰ˆæœ¬*)

let c = add_c c c;;
(*å°†cä½œä¸ºå‚æ•°ï¼Œè¿”å›2c*)

let c2 = { c with r = 0.};;
(*å®šä¹‰äº†ä¸€ä¸ªcomplexç±»å‹çš„c1ï¼Œr=0(float)ï¼Œå…¶å®ƒå…ƒç´ ä¸cä¸­çš„å…ƒç´ ç›¸åŒ*)


---
Constructors can have arguments. The keyword of indicates the type of the constructor's arguments. This supports the gathering into a single type of objects of different types, each one being introduced with a particular constructor.

Here is a classic example of defining a datatype to represent the cards in a game, here Tarot8. The types suit and card are defined in the following way:
>>>>>>> origin/master
