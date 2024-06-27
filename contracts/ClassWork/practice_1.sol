// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Greeting {
    string public greeting;
    constructor() {

        greeting = "Hello ";

    }
    function getGreeting(string memory _name) public view returns (string memory) {

        return string.concat(greeting,_name);

    }

}