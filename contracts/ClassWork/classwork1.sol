// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
// Create a Solidity contract that maintains state variables name (string), 

// age (uint256), and isActive (bool) for a person. 

// Implement functions to update and retrieve these attributes.

contract liveque{

    string public name ;
    uint public age;
    bool public isActive;

    function setname(string memory _name) public{
        name=_name;
    }

    function setage(uint _age) public{
        age=_age;
    }

    function setstatus(bool _status) public {
        isActive=_status;
    }

}