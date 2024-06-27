// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

 

contract AccessControl {

    address public owner;
    uint public minValue = 10;

 

constructor() {

       owner = msg.sender;

}

 

function setValue(uint newValue)  public {

       require(msg.sender == owner, "Only the owner can set the value");
       require(newValue >= minValue, "Value must be greater than or equal to minValue");
       minValue=newValue;

}

}