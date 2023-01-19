contract C {
	uint x;

	function f() public {
		if (x == 0)
			x = 1;
	}

	function g() public {
		if (x == 1)
			x = 2;
	}

	function h() public {
		if (x == 2)
			x = 0;
	}

	// This function shows that (x < 9) is not inductive and
	// a stronger invariant is needed to be found.
	// (x < 3) is the one found in the end.
	function j() public {
		if (x == 7)
			x = 100;
	}

	function i() public view {
		assert(x < 9);
	}
}
// ====
// SMTEngine: all
// SMTIgnoreOS: macos
// SMTSolvers: z3
// ----
// Warning 6328: (406-419): CHC: Assertion violation might happen here.
// Warning 4661: (406-419): BMC: Assertion violation happens here.
