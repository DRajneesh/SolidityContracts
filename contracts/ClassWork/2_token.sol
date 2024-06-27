/*Problem Statement 2: Simple Token Wallet
Objective: Develop a contract called TokenWallet where users can track their token balances.
•	Define a mapping to track the token balance of Ethereum addresses.
•	Implement a function that allows users to update their token balance.
•	Create a function for users to check their own token balance.*/




// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract tokenWallet{
    mapping (address => uint) public balances;

    function addBalance(uint amount) public{
        balances[msg.sender] = amount;
    }
     function checkBalance() public view returns(uint){
        return balances[msg.sender];
     }
    
}