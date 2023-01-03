// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Hello{
   // string public hey = "Hey Oleh";
   // uint256 public num=4;

   string public hey;
   uint256 public name;

   //Update the data
   //1. Update variable at the time of deployement
   constructor(string memory _hey, uint _name){
     hey=_hey;
     name=_name;
   }
   
   //2. Update variable at the time of function call
   function addInfo(string memory _hey, uint _name) public {
      hey=_hey;
      name=_name;
   }




}