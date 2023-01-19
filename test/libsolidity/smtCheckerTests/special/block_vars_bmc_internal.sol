contract C {
	address coin;
	uint prevrandao;
	uint gas;
	uint number;
	uint timestamp;
	function f() public {
		coin = block.coinbase;
		prevrandao = block.prevrandao;
		gas = block.gaslimit;
		number = block.number;
		timestamp = block.timestamp;

		g();
	}
	function g() internal view {
		assert(uint160(coin) >= 0); // should hold
		assert(prevrandao >= 0); // should hold
		assert(gas >= 0); // should hold
		assert(number >= 0); // should hold
		assert(timestamp >= 0); // should hold

		assert(coin == block.coinbase); // should fail with BMC
		assert(prevrandao == block.prevrandao); // should fail with BMC
		assert(gas == block.gaslimit); // should fail with BMC
		assert(number == block.number); // should fail with BMC
		assert(timestamp == block.timestamp); // should fail with BMC
	}
}
// ====
// SMTEngine: bmc
// ----
// Warning 4661: (494-524): BMC: Assertion violation happens here.
// Warning 4661: (552-590): BMC: Assertion violation happens here.
// Warning 4661: (618-647): BMC: Assertion violation happens here.
// Warning 4661: (675-705): BMC: Assertion violation happens here.
// Warning 4661: (733-769): BMC: Assertion violation happens here.
