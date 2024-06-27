/*Develop a Solidity contract that includes a function findFactorial 

taking an integer input num and calculates its factorial. Use a loop 

to perform the computation and return the factorial value.*/


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract fact{
    function findFactorial(uint x) public pure returns(uint){
        uint ans=1;
    for( uint i=1;i<=x;i++){
       ans*=i; 
    }
    return ans;
}
}