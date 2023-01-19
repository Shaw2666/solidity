contract C
{
	function f(uint prevrandao) public view {
		assert(block.prevrandao == prevrandao);
		assert(block.difficulty == prevrandao);
	}
}
// ====
// SMTEngine: all
// SMTIgnoreCex: yes
// ----
// Warning 8417: (107-123): Since the VM version paris, "difficulty" was replaced by "prevrandao", which now returns a random number based on the beacon chain.
// Warning 6328: (58-96): CHC: Assertion violation happens here.
// Warning 6328: (100-138): CHC: Assertion violation happens here.
