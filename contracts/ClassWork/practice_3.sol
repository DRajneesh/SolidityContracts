// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

 

contract Getter_Setter {

    uint public value;

 

    // Setter function to update 'value'

    function setValue(uint _newValue) public {

        value = _newValue;

    }

 

    // Getter function to retrieve 'value'

    function getValue() public view returns (uint) {

        return value;

    }

 

    // Function with a modifier restricting access to the owner

  
}