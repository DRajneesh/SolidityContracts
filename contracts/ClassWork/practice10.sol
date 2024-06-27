// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

 

contract Array {

uint[] public dynamicArray;

uint[5] public fixedArray;

 

// Function to add elements to the dynamic array

function addToDynamicArray(uint element) public {

dynamicArray.push(element);

}

 

// Function to get the length of the dynamic array

function getDynamicArrayLength() public view returns (uint) {

return dynamicArray.length;

}

 

// Function to get an element from the dynamic array

function getElementFromDynamicArray(uint index) public view returns (uint) {

require(index < dynamicArray.length, "Index out of bounds");

return dynamicArray[index];

}

 

// Function to update an element in the fixed-size array

function updateFixedArray(uint index, uint value) public {

require(index < fixedArray.length, "Index out of bounds");

fixedArray[index] = value;

}

}