// SPDX-License-Identifier: Unlicensed

pragma solidity 0.7.0;

contract Uints {

    modifier amount() {
        // 1706182736 = Thu Jan 25 2024 11:38:56 GMT+0000
        // require(msg.value > 1 ether);
        // For seconds
        // require(block.timestamp > 1706182736 + 1 seconds);
        // require(block.timestamp < 1706182736 + 1 seconds);
        // For hours
        // require(block.timestamp > 1706182736 + 1 hours);
        // require(block.timestamp < 1706182736 + 1 hours);
        // For minutes
        // require(block.timestamp > 1706182736 + 1 minutes);
        // require(block.timestamp < 1706182736 + 1 minutes);
        // Also we can use round brackets like below:
        // require(block.timestamp > (1706182736 + 1 minutes));
        require(block.timestamp < (1706182736 + 1 minutes));
        _;
    }

    function send() public payable amount {}
}
