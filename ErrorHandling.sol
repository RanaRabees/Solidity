// SPDX-License-Identifier: Unlicensed

pragma solidity 0.7.0;

contract ErrorHandling {
    address public owner;
    uint256 public count;

    constructor() {
        owner = msg.sender;
    }

    // Following are some of the important methods used in error handling

    // assert(bool condition) - In case condition is not met, this method call causes an invalid opcode and any changes done to state got reverted. This method is to be used for internal errors.
    // require(bool condition) - In case condition is not met, this method call reverts to original state. This method is to be used for errors in inputs or external components.
    // require(bool condition, string memory message) In case - condition is not met, this method call reverts to original state. - This method is to be used for errors in inputs or external components. It provides an option to provide a custom message.
    // revert() - This method aborts the execution and revert any changes done to the state.
    // revert(string memory reason) - This method aborts the execution and revert any changes done to the state. It provides an option to provide a custom message.

    // assert(bool condition)
    function Assert() public view {
        assert(msg.sender == owner);
    }

    // Syntax = require(bool condition)
    function Require1() public view {
        require(msg.sender == owner);
    }

    // Syntax = require(bool condition, string memory message)

    function Require2() public {
        count++;
        require(msg.sender == owner, "Caller is not owner");
    }

    // revert()
    function Revert1() public {
        count++;
        if (msg.sender == owner) {
            revert("Caller is not owner");
        }
    }

    // revert(string memory reason)
    function Revert2() public {
        count++;
        if (msg.sender != owner) {
            revert("Caller is not owner");
        }
    }
}
