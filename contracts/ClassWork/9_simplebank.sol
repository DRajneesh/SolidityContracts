/* problem 9 :simpleBank
objective : create a simplebank where user can register and add some bank functionality  */


// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract simpleBank{
  uint AcNo=7845620;

 struct user{
    string Uname;
    string DoB;
    string Gender;
    uint balance;
    uint AccountNo;
 }

 mapping (uint=>user) public Users;
 mapping (address => uint) public balances;

 address public owner;

 

 constructor(){

 owner = msg.sender;

 }

 function createAccount(string memory _Uname, string memory _dob,string memory _Gender) public returns(uint) {
    uint _balance;
    user memory newuser=user(_Uname,_dob,_Gender,_balance,0);
    AcNo+=1;
    Users[AcNo]=newuser;
    Users[AcNo].AccountNo=AcNo;
    uint uid=AcNo;
    return uid;
 }
  

 function deposit(uint uid,uint amount) public payable{
 require(msg.value > 0, "Deposit amount should be geater than 0");
 require(msg.value== amount,"invalid Transanction");
 balances[msg.sender] += msg.value;
 Users[uid].balance+=amount;
 }

 

 function withdraw(uint uid,uint amount) public {

 require(amount > 0, "Withdrawal amount should be greater than 0");

 require(balances[msg.sender] >= amount, "Insufficient Balance");

 balances[msg.sender] -= amount;
 Users[uid].balance-=amount; 

 payable(msg.sender).transfer(amount);

 } 

 

 function getBalance() public view returns(uint){

 return balances[msg.sender];

 }


}