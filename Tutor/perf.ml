let plus () =
let a = ref 0 in
for i = 0 to 100000000 do
a := !a + 1;
done;
!a;;