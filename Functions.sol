// SPDX-License-Identifier: Unlicensed

pragma solidity 0.7.0;

contract functions {
    uint public val = 4; // State Variables
    function add() public pure returns(uint) {
        // code
        uint val2 = 5; // Local Variables
        return val2 + 5;
        // return 4 + 5;
    }
}

// Pure->> Pure function do not view and change state variables
// view ->> view function can only view state varibale cannot change them
// public --> generate a getter function to state variables
// returns --> use to specify the return data type of function