// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

 

contract Mapping {

mapping(address => uint) public balances;

 

// Function to update user balances

function updateBalance(uint newBalance) public {

balances[msg.sender] = newBalance;

}

 

// Function to get the balance of an address

function getBalance(address user) public view returns (uint) {

return balances[user];

}

}