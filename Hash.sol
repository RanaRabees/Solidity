// SPDX-License-Identifier: Unlicensed

pragma solidity 0.7.0;

// contract hashfunction1 {
//     bytes32 public password;

//     function generatePass(string memory _pass) public {
//         password = keccak256(abi.encodePacked(_pass));
//     }

//     function sendMoney(string memory _pass) public view {
//         require(
//             keccak256(abi.encodePacked(_pass)) == password,
//             "Wrong password"
//         );
//     }
// }

contract hashfunction2 {
    function generatePass(string memory _pass, string memory _name)
    public pure returns (bytes32) 
    {
        return keccak256(abi.encodePacked(_pass, _name));
    }
}
