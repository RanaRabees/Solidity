// SPDX-License-Identifier: Unlicensed

pragma solidity 0.7.0;

// Try the following code to understand how an event works in Solidity.
// First Create a contract and emit an event.

// Example 1

contract Ex1 {
    // Declare an Event
    event Deposit(address indexed _from, bytes32 indexed _id, uint256 _value);

    function deposit(bytes32 _id) public payable {
        // Emit the event
        emit Deposit(msg.sender, _id, msg.value);
    }
}

// Example 2

contract Ex2 {
    // event transfer(address _from, address _to, uint _amount);
    // You can also add "indexed" to get/make index numbers
    event transfer(address indexed _from, address _to, uint _amount);

    function trans(address to, uint256 amount) public {
        emit transfer(msg.sender, to, amount);
    }
}
