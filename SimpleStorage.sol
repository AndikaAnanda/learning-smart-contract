// SPDX-License-Identifier: MIT

// Solidity version
pragma solidity ^0.8.25;

// Contract (similar to class)
contract SimpleStorage {
    // Integer consist of int and uint(non-negative number)
    uint256 num;

    // Use struct and array to store several data
    struct People {
        string name;
        uint256 num;
    }
    // People public person = People({name: "Andika", num: 22});
    People[] public people;

    // Map the name of people to it's number
    mapping(string => uint256) public nameToNum;

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


    // Function for add person to People Array
    // Memory type is used for array (string is included) and struct paramater
    // Can use calldata type (data can't be modified)
    function addPerson(string memory _name, uint256 _num) public {
        people.push(People(_name, _num));
        nameToNum[_name] = _num;
    } 
}