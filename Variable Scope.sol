// SPDX-License-Identifier: Unlicensed

pragma solidity 0.7.0;

contract VarScope1 {
    uint internal  val1 = 0;
    uint public val2 = 1;
    uint private val3 = 2;

    function get1() public view returns(uint) {
        return val1; // Success
        // return val2; // Success
        // return val3; // Success
    }
}

contract VarScope2 {
    VarScope1 waste = new VarScope1();
    function get2() public view returns(uint) {
        return waste.val2();
    }
}

contract VarScope3 is VarScope1 {
    function get3() public pure returns(uint) {
        return 3; // Success
        // return val1; // Error
        // return val2; // Success
        // return val3; // Error
    }
}