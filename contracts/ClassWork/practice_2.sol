// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataTypes {

    // Elementary types

    bool public isTrue;

    uint public number;

    int public negativeNumber;

    address public userAddress;

    uint8 public smallNumber;

 

    // Complex types

    uint[] public numberArray;

    struct Person {

        string name;

        uint age;

    }

    Person public person;

    mapping(address => uint) public balances;

 

    // Function to set values

    function setData() public {

        isTrue = true;

        number = 42;

        negativeNumber = -10;

        userAddress = msg.sender;

        smallNumber = 5;

 

        numberArray = [1, 2, 3];

        person = Person("Rajneesh Dwivedi", 22);

        balances[msg.sender] = 100;

    }

}