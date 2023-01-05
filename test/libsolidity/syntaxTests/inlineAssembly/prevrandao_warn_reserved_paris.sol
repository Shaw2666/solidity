contract C {
    function f() public view returns (uint256 ret) {
        assembly {
            let prevrandao := sload(0)
            ret := prevrandao
        }
    }

    function g() public pure returns (uint256 ret) {
        assembly {
            function prevrandao() -> r {
                r := 1000
            }
            ret := prevrandao()
        }
    }
}
// ====
// EVMVersion: >=paris
// ----
// Warning 4089: (343-353): The "prevrandao" instruction is reserved in VM "paris" and its use as custom identifier will be dropped in Solidity version 0.9.0.
// TypeError 2527: (343-355): Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
