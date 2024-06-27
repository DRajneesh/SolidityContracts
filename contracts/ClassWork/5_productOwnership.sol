/*Problem Statement 5: Product Ownership Registry
Objective: Develop a contract ProductRegistry to register and transfer ownership of products.
•	Use a struct named Product that includes properties for product ID and current owner address.
•	Implement a mapping from product ID to Product.
•	Write a function for product registration, assigning the caller as the initial owner.
•	Create a function to transfer product ownership to another address, ensuring only the current owner can transfer the product.*/


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract productRegistry{
    struct Product{
        uint pId;
        string productName;
        address currentOwner;
    }

    mapping(uint=>Product) public Products;

    function productRegistration(uint _pid,string memory _name) public {
        Products[_pid]=Product(_pid,_name,msg.sender);
    }

    function transferOwnership(address _newUser,uint _pid) public {
        require(msg.sender==Products[_pid].currentOwner,"you are not Owner");
        Products[_pid].currentOwner=_newUser;
    }
}