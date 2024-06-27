/*Problem Statement 1: Basic Contact List
Objective: Create a contract named ContactList that allows users to store and retrieve phone numbers associated with names.
•	Use a struct named Contact to hold a person's name and phone number.
•	Implement a mapping to associate Ethereum addresses with their Contact.
•	Write a function to allow users to add or update their contact information.
•	Include a function to retrieve a user's contact information by their Ethereum address.*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContactList{
    struct contact{
        string Name;
        string PhoneNo;
    }

    mapping (address=>contact) public contactdetails;

    function AddContact(string memory name,string memory PhoneNo ) public {
        // contact memory newcontact=contact(name,PhoneNo);
        contactdetails[msg.sender]=contact(name,PhoneNo);
    }

    function Getcontact()public view returns(string memory,string memory){
        contact memory newcontact=contactdetails[msg.sender];
        return (newcontact.Name,newcontact.PhoneNo);
    }
}