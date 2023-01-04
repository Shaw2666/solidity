function f() view returns (uint256) {
    return block.difficulty;
}
// ====
// EVMVersion: >=paris
// ----
// Warning 8417: (49-65): Since the VM version paris, "difficulty" was replaced by "prevrandao", which now returns a random number based on the beacon chain.
