// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract BankStatement {
  mapping( address=>uint)private balances;

address public Owner;
   event logDe(address accountAddress, uint amount);

 constructor() {
  Owner= msg.sender;
 }

function deposit() public payable returns(uint){
 require((balances [msg.sender] + msg.value>= balances[msg.sender]));
 balances [msg.sender] += msg.value;
emit logDe(msg.sender, msg.value);
 return balances[msg.sender];
 }

 function withDrow( uint withdrowAmount) external payable returns(uint){
   require( withdrowAmount <= balances[msg.sender],"insufficient fonds");
   balances[msg.sender]-= withdrowAmount;
   return balances[msg.sender];
 }
function Balances()view public returns(uint){
 return balances [msg.sender];
 }

}