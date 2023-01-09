library L {
    function publicFunction(uint a) public pure returns (uint) { return a * 1; }
    function externalFunction(uint b) external pure returns (uint) { return b * 2; }
    function internalFunction(uint c) internal pure returns (uint) { return c * 3; }
}

contract C {
    using {L.publicFunction} for uint;
    using {L.externalFunction} for uint;
    using {L.internalFunction} for uint;

    function f() public pure returns (uint) {
        uint x = 1;
        return x.publicFunction();
    }

    function g() public pure returns (uint) {
        uint x = 1;
        return x.externalFunction();
    }

    function h() public pure returns (uint) {
        uint x = 1;
        return x.internalFunction();
    }
}
// ----
// library: L
// f() -> 1
// g() -> 2
// h() -> 3
