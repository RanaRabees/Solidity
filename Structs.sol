// SPDX-License-Identifier: Unlicensed

pragma solidity 0.7.0;

contract Structs {
    // struct student {
    //     string name;
    //     uint256 age;
    // }
    // student public newstudent;

    // function getstudent() public {
    //     newstudent = student("RanaRabees", 19);
    // }
    struct student {
        string name;
        uint256 age;
    }
    student[] public allstudents;

    function getstudent(string memory _name, uint _age) public {
        student memory newstudent = student({name: _name, age: _age});
        allstudents.push(newstudent);
    }
    
}
