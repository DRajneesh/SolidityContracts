// Construct a contract with a string variable greeting initialized to "Hello". 

// Implement a function concatenateString that appends "World" to the greeting variable 

// and returns the updated string.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract addstring{

    string public greeting="hello ";

    function append(string memory _string) public view returns(string memory){
             
          string memory greeting1=  string.concat(greeting, _string);
          return greeting1;
    }
}