// SPDX-License-Identifier: Unlicensed

pragma solidity 0.7.0;

// Function Visibility
// Public:
// Finally, a public function can be called from all potential parties.
// Unless otherwise specified, all functions are made public by default.

// Private:
// A private function is one that can only be called by the main contract itself.
// Although it's not the default, it is generally good practice to keep your functions private
// unless a scope with more visibility is needed.

// Internal:
// An internal function can be called by the main contract itself, plus any derived contracts.
// As with private functions, it's generally a good idea to keep your functions
// internal wherever possible.

// External:
// An external function can only be called from a third party. 
// It cannot be called from the main contract itself or any contracts derived from it. 
// External functions have the benefit that they can be more performant due to the fact that 
// their arguments do not need to be copied to memory. So, where possible, it's advisable to 
// keep logic that only needs to be accessed by an external party to an external function.

// Public:

contract SimpleStorage {
    uint256 public storedValue;

    function setValue(uint256 newValue) public {
        storedValue = newValue;
    }

    // This function can be called from anywhere outside the contract,
    // including other contracts and through transactions.
}

// Private:

contract Counter {
    uint256 private count;

    function increment() public {
        count++;
    }

    function _getPrivateCount() private view returns (uint256) {
        return count;
    }

    // This function can only be called by other functions inside the contract.
    // It cannot be called from outside the contract.
}

// Internal:

contract InheritanceExample {
    uint256 internal internalValue;

    function setInternalValue(uint256 value) public {
        internalValue = value;
    }

    // This function can be called by the contract itself, as well as by any
    // derived contracts (child contracts).
}

contract ChildContract is InheritanceExample {
    function increaseInternalValue() public {
        internalValue++;
    }
    // This function can access and modify the `internalValue` of the parent contract.
}

// External:

contract TokenSale {
    mapping(address => uint256) public balances;

    external function buyTokens(uint256 amount) payable;

    // This function can only be called from outside the contract, but not by
    // the contract itself or any derived contracts.
}

contract Wallet {
    function buyTokensFromSale(TokenSale sale, uint256 amount) public {
        sale.buyTokens{value: msg.value}(amount);
    }
    // This function can call the external `buyTokens` function of the TokenSale contract.
}

