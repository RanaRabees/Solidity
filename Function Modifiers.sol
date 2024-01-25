// SPDX-License-Identifier: Unlicensed

pragma solidity 0.7.0;

contract Owner {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    function SendMoney(uint _price) public onlyOwner {
    }
}
