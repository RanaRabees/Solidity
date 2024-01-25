// SPDX-License-Identifier: Unlicensed

pragma solidity 0.7.0;

contract Block_And_Transactions {
    function Timestamp() public view returns(uint) {
        // code
        return block.timestamp; // block.timestamp (uint): current block timestamp as seconds since unix epoch
    }

    function Address() public view returns(address) {
        // code
        return msg.sender; // msg.sender (address): sender of the message (current call)
    }

    function Balance() public view returns(uint) {
        // code
        return msg.sender.balance; // msg.sender (address): sender of the message (current call)
    }

    // Create Yours Own Now

}

// Block and Transaction Properties

// blockhash(uint blockNumber) returns (bytes32): hash of the given block when blocknumber is one of the 256 most recent blocks; otherwise returns zero
// block.basefee (uint): current block's base fee (EIP-3198 and EIP-1559)
// block.chainid (uint): current chain id
// block.coinbase (address payable ): current block miner's address
// block.difficulty (uint): current block difficulty
// block.gaslimit (uint): current block gaslimit
// block.number (uint): current block number
// block.timestamp (uint): current block timestamp as seconds since unix epoch
// gasleft() returns (uint256): remaining gas
// msg.data (bytes calldata): complete calldata
// msg.sender (address): sender of the message (current call)
// msg.sig (bytes4): first four bytes of the calldata (i.e. function identifier)
// msg.value (uint ): number of wei sent with the message
// tx.gasprice (uint): gas price of the transaction
// tx.origin (address): sender of the transaction (full call chain)
