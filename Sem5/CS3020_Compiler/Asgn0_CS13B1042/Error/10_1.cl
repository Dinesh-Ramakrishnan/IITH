(* iterative way of finding factorial of a number Implemented by Akilesh B cs13b1042 *)

class main inherits A2I {		-- Incorrect naming for Type identifiers. Type identifier (main) should begin with Capital letter. Violation of 10.1
	
	main() : Object {
		(new IO).out_string(i2a(fact(a2i((new IO).in_string()))).concat("\n"))
	};

	fact(i: Int): Int {     (* factorial function *)
		let fact: Int <- 1 in {
			while (not (i = 0)) loop
			{
				fact <- fact*i;
				i <- i-1;
			}
			pool;
			fact;
		}
	};
};