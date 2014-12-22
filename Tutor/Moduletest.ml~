let fact x = 
	let result = ref 1 in
	for i = 1 to x do
		result := !result * i;
		Printf.printf "%d %d %d\n" x i !result;
	done;
	!result;;