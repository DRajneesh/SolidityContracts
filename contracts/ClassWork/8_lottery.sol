/*Problem Statement 8: Lottery system

Objective: Build a contract LotterySystem  .
add functionalities by your own self
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LotterySystem{

    address payable  manager;
    address payable [] public participants;
    address public vijeta;

    constructor(){
        manager=payable (msg.sender);
    }

    receive() external payable {
        require(msg.value==1 ether,"please give 1 ether");
        participants.push(payable (msg.sender));
     }

     function getBalance() public view returns(uint ){
        require(manager==msg.sender,"ERROR ,YOU ARE NOT PERMITTED");
        return address(this).balance;
     }

     function Random() public view returns (uint )
     {
        return uint(keccak256(abi.encode(block.difficulty,block.timestamp,participants.length)));
     }

     function selectWinner() public{
        require(manager == msg.sender,"ERROR ,YOU ARE NOT PERMITTED");
        require(participants.length>=3,"add more participants");
        address payable winner;
        uint r=Random();
        uint index=r % participants.length;
        winner=participants[index];
        vijeta=winner;
        uint totalprice=getBalance();
        uint rewardcal =totalprice*10;
        uint finalreward=(rewardcal/100);
        manager.transfer(finalreward);
        winner.transfer(getBalance());
         participants=new address payable [](0);
     }
}