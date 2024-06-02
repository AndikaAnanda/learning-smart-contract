// SPDX-License-Identifier: MIT

// Solidity version
pragma solidity ^0.8.25;

// Contract (similar to class)
contract SimpleStorage {
    // Integer consist of int and uint(non-negative number)
    uint256 public num;

    // Transaction Function to store number based on given number
    // Doing more things, will add gas need
    function store (uint256 _num) public {
        num = _num;
        // Calling pure/view function in transaction, will cost gas
        readNum();
    }

    // View function dissallow any modification on contract
    // Is used to read any value
    // No need to spend any gas because no transaction happen
    function readNum() public view returns(uint256) {
        return num;
    }

    // Pure function dissallow any modification and value reading on contract
    // Is used to store any logic that repeatedly used
    // No need to spend any gas because no transaction happen
    function addLogic() public pure  returns(uint256) {
        return (1+1);
    }
}