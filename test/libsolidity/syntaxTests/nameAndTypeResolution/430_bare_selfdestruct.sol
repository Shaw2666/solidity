contract C {
    function f() pure public { selfdestruct; }
}
// ----
// Warning 5159: (44-56): "selfdestruct" has been deprecated.
// Warning 6133: (44-56): Statement has no effect.
