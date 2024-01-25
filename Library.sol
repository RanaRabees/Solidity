// SPDX-License-Identifier: Unlicensed

pragma solidity 0.7.0;

// Example
// Try the following code to understand how a Library works in Solidity.

library Search {
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
}

contract Test {
    function getAddition() public pure returns (uint256) {
        uint256 result = Search.add(4, 5);
        return result;
    }
}
