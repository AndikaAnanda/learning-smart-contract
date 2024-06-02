// SPDX-License-Identifier: MIT

// Solidity version
pragma solidity ^0.8.25;

// Contract (similar to class)
contract SimpleStorage {
    // Integer consist of int and uint(non-negative number)
    uint256 num;

    // Function to store number based on given number
    function store (uint256 _num) public {
        num = _num;
    }
}