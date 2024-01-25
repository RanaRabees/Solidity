// SPDX-License-Identifier: Unlicensed

pragma solidity 0.7.0;

contract Arrays {
    // uint[] public array1 = [1,247,42.............];
    uint[] public array1 = [1, 2];                                                            
    uint[] public array2 = [1, 2, 3];                                                            
    uint[] public array3 = [1, 2, 3, 4];                                                            
    uint[] public array4 = [1, 2, 3, 4, 5];                                                            

    function getArr() public returns (uint) {
        array1[0] = 2;
        return array1[0];
    }

    // Array Length
    function ArrLenth() public view returns (uint) {
        return array2.length;
    }

    // Array Push
    function ArrPush() public{
        return array3.push(6);
    }
    
    // Array Push
    function ArrPop() public{
        return array4.pop();
    }
}