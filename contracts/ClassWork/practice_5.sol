// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

 

contract StateVariables {

    uint public counter; // Publicly accessible state variable

    address private owner; // Private state variable

 

    constructor() {

        counter = 0; // Initialize counter to zero

        owner = msg.sender; // Set the contract deployer as the owner

    }

 

    function incrementCounter() public {

        require(msg.sender == owner, "Only the owner can increment the counter");

        counter++;

    }

 

    function getCounter() public view returns (uint) {

        return counter;

    }

}