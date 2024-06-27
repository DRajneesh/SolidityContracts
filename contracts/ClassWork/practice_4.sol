// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

 

contract Modifier {

    address public owner;

   

    modifier onlyOwner() {

        require(msg.sender == owner, "Only the owner can call this function");

        _; // This indicates where the modified function's code will be inserted

    }

 

    constructor() {

        owner = msg.sender;

    }

 

    function changeOwner(address _newOwner) public onlyOwner {

        owner = _newOwner;

    }

}