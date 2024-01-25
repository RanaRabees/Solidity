// SPDX-License-Identifier: Unlicensed

pragma solidity 0.7.0;

// Example
// Try the following code to understand how the mapping type works in Solidity.

contract LedgerBalance {
    mapping(address => uint) public balances;
    function updateBalance (uint newBalance) public {
        balances[msg.sender] = newBalance;
    }
}
