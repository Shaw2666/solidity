contract C {
    function f() public view returns (uint ret) {
        assembly {
            ret := prevrandao()
        }
    }
}
// ====
// compileToEwasm: also
// EVMVersion: <paris
// ----
// f() -> 200000000
