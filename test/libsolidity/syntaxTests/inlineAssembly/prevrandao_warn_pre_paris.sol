contract C {
    function f() public view returns (uint256) {
        return block.prevrandao;
    }

    function g() public view returns (uint256 ret) {
        assembly {
            ret := prevrandao()
        }
    }
}
// ====
// EVMVersion: <paris
// ----
// Warning 9432: (77-93): "prevrandao" is not supported by the VM version and will be treated like "difficulty".
// Warning 5761: (193-203): "prevrandao" is not supported by the VM version and will be treated like "difficulty".
