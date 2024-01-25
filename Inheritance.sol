// SPDX-License-Identifier: Unlicensed

pragma solidity 0.7.0;

// You can import any file from os(operating system) or online like below

// import "Hash.sol";
// import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

// And you can use your imported functions to inherit them like below
// Note: Your PragmaDirective Version match them

// contract A is hashfunction2 {}
// contract B is ERC20 {}

// Example

contract Father {
    //private state variable
    uint256 private data;

    //public state variable
    uint256 public info;

    //constructor
    constructor() {
        info = 10;
    }

    //private function
    function increment(uint256 a) private pure returns (uint256) {
        return a + 1;
    }

    //public function
    function updateData(uint256 a) public {
        data = a;
    }

    function getData1() public view returns (uint256) {
        return data;
    }

    function compute(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }
}

//Derived Contract
contract Child is Father {
    uint256 private result;
    Father private father;

    constructor() {
        father = new Father();
    }

    function getComputedResult() public {
        result = compute(3, 5);
    }

    function getResult() public view returns (uint256) {
        return result;
    }

    function getData2() public view returns (uint256) {
        return father.info();
    }
}

// -- constructor parameter
// -- is keyword
// -- import solidity contracts through local files or web
