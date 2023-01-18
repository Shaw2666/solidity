type Int is int128;

library L {
    function privateOperator(Int, Int) private pure returns (Int) {}
}

using {L.privateOperator as +} for Int;
