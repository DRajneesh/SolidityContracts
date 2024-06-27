/* Construct a contract with a function is Prime that takes a uint256 parameter. 
 Use loops and conditions to verify if the provided number is a prime number and 
return a boolean value.*/

// SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.0;

contract isPrime{

    function isPrimechecker(uint a) public pure returns(bool){
        for(uint i =2;i<a;i++){
            if(a%i==0){
                return false;
            } 
        }
        return true;
    }
}