// SPDX-License-Identifier: Unlicensed

pragma solidity 0.7.0;

contract If_Else {
	
uint public a = 5;
uint public b = 4;	

    function get() public view returns (uint) {
        if(a == 4) {
            return 1;
        } else if(a == 3) {
            return 3;
        } else if(a == 2) {
            return 4;
        } else {
            return 2;
        }
    }
}
