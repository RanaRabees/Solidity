// SPDX-License-Identifier: Unlicensed

pragma solidity 0.7.0;

contract Operators {

    uint internal num = 5;
    uint internal val = 5;

    function Addition() public view returns (uint) {
        // Addition
        // Used to add two operands
        num + 5;
        return num; // 10
    }
    function Subtraction() public view returns (uint) {
        // Subtraction
        // Used to subtract the second operand from first
        num - 2;
        return num; // 3
    }
    function Multiplication() public view returns (uint) {
        // Multiplication
        // Used to multiply both operands
        num * 2;
        return num; // 10
    }
    function Division() public view returns (uint) {
        // Division
        // Used to divide numerator by denominator
        num / 2;
        return num; // 2.5
    }
    function Modulus() public view returns (uint) {
        // Modulus
        // Gives the remainder after integer division
        num % 2;
        return num; // 1
    }
    uint internal Increment_Var = num++;
    function Increment() public view returns (uint) {
        // Increment
        // Increases the integer value by one
        return Increment_Var; // 6, 7, 8, 9, 10...
    }
    uint internal Decrement_Var = num--;
    function Decrement() public view returns (uint) {
        // Decrement
        // Decreases the integer value by one
        return Decrement_Var; // 4, 3, 2, 1, 0...
    }

    function Equals_To() public view returns(bool) {
        // Equals To
        // Checks if two values are equal or not, returns true if equals, and vice-versa
        return val == 5; // Correct
        // return val == 3; // Wrong
    }
    function Not_Equals_To() public view returns(bool) {
        // Not Equals To
        // Checks if two values are equal or not, returns true if not equals, and vice-versa
        return val != 3; // Correct
        // return val != 5; // Wrong
    }
    function Greater_Than() public view returns(bool) {
        // Greater Than
        // Checks if left value is greater than right or not, returns true if greater, and vice- versa
        return val > 4; // Correct
        // return val > 6; // Wrong
    }
    function Less_Than() public view returns(bool) {
        // Less Than
        // Checks if left value is less than right or not, returns true if less, and vice-versa
        return val < 6; // Correct
        // return val < 4; // Wrong
    }
    function Greater_Than_Or_Equals_To() public view returns(bool) {
        // Greater Than or Equals To
        // Checks if left value is greater and equal than right or not, returns true if greater and equal, and vice-versa
        return val >= 5; // Correct
        // return val >= 8; // Correct
        // return val >= 3; // Wrong 
    }
    function Less_Than_Or_Equals_To() public view returns(bool) {
        // Less Than or Equals To
        // Checks if left value is less than right or not, returns true if less and equals, and vice-versa
        return val <= 5; // Correct
        // return val <= 3; // Correct
        // return val <= 8; // Wrong    
    }
    function Logical_And() public view returns(bool) {
        // Logical AND
        // Logical AND Returns true if both conditions are true and false if one or both conditions are false
        return (val > 1 && val < 8); // Correct
        // return (val > 8 && val < 2); // Wrong
    }
    function Logical_Or() public view returns(bool) {
        // Logical OR
        // Returns true if one or both conditions are true and false when both are false
        return (val > 1 || val < 8); // Correct
        // return (val > 8 || val < 2); // Wrong
    }
    function Logical_Not() public view returns(bool) {
        // Logical NOT
        // Returns true if the condition is not satisfied else false
        return !(val == 5); // Correct
        // return !(val == 2); // Wrong 
    }
}