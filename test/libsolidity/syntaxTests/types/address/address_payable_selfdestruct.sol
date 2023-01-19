contract C {
    function f(address payable a) public {
        selfdestruct(a);
    }
}
// ----
// Warning 5159: (64-76): "selfdestruct" has been deprecated.
