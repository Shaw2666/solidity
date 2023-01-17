contract C {
    function f() public pure {
        assembly {
            pop(sload(0))
            sstore(0, 1)
            pop(gas())
            pop(address())
            pop(balance(0))
            pop(caller())
            pop(callvalue())
            pop(extcodesize(0))
            extcodecopy(0, 1, 2, 3)
            pop(create(0, 1, 2))
            pop(call(0, 1, 2, 3, 4, 5, 6))
            pop(callcode(0, 1, 2, 3, 4, 5, 6))
            pop(delegatecall(0, 1, 2, 3, 4, 5))
            pop(staticcall(0, 1, 2, 3, 4, 5))
            selfdestruct(0)
            log0(0, 1)
            log1(0, 1, 2)
            log2(0, 1, 2, 3)
            log3(0, 1, 2, 3, 4)
            log4(0, 1, 2, 3, 4, 5)
            pop(origin())
            pop(gasprice())
            pop(blockhash(0))
            pop(coinbase())
            pop(timestamp())
            pop(number())
            pop(gaslimit())

            // These two are disallowed too but the error suppresses other errors.
            //pop(msize())
            //pop(pc())
        }
    }
}
// ----
// Warning 5740: (572-899): Unreachable code.
// TypeError 2527: (79-87): Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
// TypeError 8961: (101-113): Function cannot be declared as pure because this expression (potentially) modifies the state.
// TypeError 2527: (130-135): Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
// TypeError 2527: (153-162): Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
// TypeError 2527: (180-190): Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
// TypeError 2527: (208-216): Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
// TypeError 2527: (234-245): Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
// TypeError 2527: (263-277): Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
// TypeError 2527: (291-314): Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
// TypeError 8961: (331-346): Function cannot be declared as pure because this expression (potentially) modifies the state.
// TypeError 8961: (364-389): Function cannot be declared as pure because this expression (potentially) modifies the state.
// TypeError 8961: (407-436): Function cannot be declared as pure because this expression (potentially) modifies the state.
// TypeError 8961: (454-484): Function cannot be declared as pure because this expression (potentially) modifies the state.
// TypeError 2527: (502-530): Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
// TypeError 8961: (544-559): Function cannot be declared as pure because this expression (potentially) modifies the state.
// TypeError 8961: (572-582): Function cannot be declared as pure because this expression (potentially) modifies the state.
// TypeError 8961: (595-608): Function cannot be declared as pure because this expression (potentially) modifies the state.
// TypeError 8961: (621-637): Function cannot be declared as pure because this expression (potentially) modifies the state.
// TypeError 8961: (650-669): Function cannot be declared as pure because this expression (potentially) modifies the state.
// TypeError 8961: (682-704): Function cannot be declared as pure because this expression (potentially) modifies the state.
// TypeError 2527: (721-729): Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
// TypeError 2527: (747-757): Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
// TypeError 2527: (775-787): Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
// TypeError 2527: (805-815): Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
// TypeError 2527: (833-844): Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
// TypeError 2527: (862-870): Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
// TypeError 2527: (888-898): Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
