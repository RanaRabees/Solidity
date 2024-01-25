// SPDX-License-Identifier: Unlicensed

pragma solidity 0.7.0;

contract Loops {

// WhileLoop
// uint public a = 5;
// uint public b = 6;	
    // function WhileLoop() public {
// Syntax 
        // while (condition) 
        // {
        //     code
        // };
// CODE
    //     while (a < b) {
    //         a += 1;
    //     }
    // }

// DoWhileLoop
// uint public a = 5;
// uint public b = 6;	
// Syntax
    // do {
    //     code
    // } 
    // while (condition);
// Code
    // function DoWhileLoop() public {
    //     do {
    //         a += 1;
    //     } 
    //     while (a < b);
    // }

// ForLoop
uint public a;
uint public b = 0;	
    function ForLoop() public {

// Syntax
        // for (init; condition; increment) 
        // {
        //     code
        // };
// Code 
        for (a = 0; a < 5; a++) {
            b += 1;
        }
    }
}
