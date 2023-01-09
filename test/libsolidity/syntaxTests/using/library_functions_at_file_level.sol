library L {
    function publicFunction(uint) public pure {}
    function externalFunction(uint) external pure {}
    function internalFunction(uint) internal pure {}
}

using {L.publicFunction} for uint;
using {L.externalFunction} for uint;
using {L.internalFunction} for uint;

contract C {
    function f() public pure {
        uint x;
        x.publicFunction();
        x.externalFunction();
        x.internalFunction();
    }
}
// ----
