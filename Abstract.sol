// SPDX-License-Identifier: Unlicensed

pragma solidity 0.7.0;

abstract contract base {
    uint256 public num;

    function call() public pure virtual returns (uint256);
}

contract main is base {
    function call() public pure override returns (uint256) {
        return 1;
    }
}
