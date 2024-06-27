/* Simple Voting System
 Objective: Develop a contract named SimpleVote that allows users to vote for a "Yes" or "No" decision on a single issue.
 Implement two counters, one for "Yes" votes and one for "No" votes.
 Create a function to cast a vote, updating the respective counter based on the user's choice.
 Ensure that each Ethereum address can vote only once.*/



// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleVote{

    uint public yes;
    uint public  no;
    struct Voter{
      string name;
      bool isVoted;
    }

   mapping(address=>Voter) public Voters;
   
   function registerVoter(string memory _name) public{
      Voter memory newVoter=Voter(_name,false);
      Voters[msg.sender]=newVoter;
   }
    function Yes() public {
       require(Voters[msg.sender].isVoted != true,"you are already voted");
       Voters[msg.sender].isVoted=true;
       yes++;
    }
    
    function No() public {
       require(Voters[msg.sender].isVoted != true,"you are already voted");
       Voters[msg.sender].isVoted=true;
       no++;
    }

    function result() public view returns(string memory){
      if(yes>no){
         return "yes";
      }else if( yes < no){
         return "no";
      }else{
         return "tie";
      }
    }


}




   
 
