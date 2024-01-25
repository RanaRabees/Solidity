// SPDX-License-Identifier: Unlicensed

pragma solidity 0.7.0;

interface base {
    function get() external pure returns (uint256);
}

contract main is base {
    function get() public pure override returns (uint256) {
        return 2;
    }
}
