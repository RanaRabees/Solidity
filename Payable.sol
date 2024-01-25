// SPDX-License-Identifier: Unlicensed

pragma solidity 0.7.0;

// In Solidity, we can use the keyword payable to specify that an address or a 
// function can receive Ether.

contract Payables {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    function transferEth() public payable {
        owner.transfer(msg.value);
    }
}
