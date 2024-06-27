// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Develop a contract with a function check Number that takes a uint256 parameter. 

// Within this function, use an if statement to check if the number is even or odd, 

// and return a corresponding string message.

contract EvenOdd{
    function evenoddchecker(uint a) public pure returns(string memory){
           uint check =a%2;
           if(check==0){
            return "Even";
           }else{
            return "Odd";
           }
    }
}