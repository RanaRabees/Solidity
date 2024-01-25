// SPDX-License-Identifier: Unlicensed

pragma solidity 0.7.0;

contract Test {
constructor() {}
}
// In case, base contract have constructor with arguments, each derived contract have to pass them.
// Base constructor can be initialized directly using following way

contract Base {
    uint data;
    constructor(uint _data) {
        data = _data;
    }
}

contract Derived is Base (5) {
    constructor() {}
}

// // Base constructor can be initialized indirectly using following way

// contract Base {
//     uint data;
//     constructor(uint _data) {
//         data = _data;
//     }
// }
// contract Derived is Base {
//     constructor(uint _info) Base(_info *_info) {}
// }