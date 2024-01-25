// SPDX-License-Identifier: Unlicensed

pragma solidity 0.7.0;

contract Base1 {
    function foo() public virtual {}
}

contract Base2 {
    function foo() public virtual {}
}

// Derives from multiple bases defining foo(), so we must explicitly
// override it
contract Inherited is Base1, Base2 {
    function foo() public override(Base1, Base2) {}
}
