// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract StateVariable{
    string public myState;
    uint public myNum;

    string public defaultText = "Default Text";
    uint public defaultNum = 5;

    //bytes is same as string and it allows to save a gas fee
    bytes public defaultByte = "hey Oleh"; // converted to bytes, example 0x48454...
    bytes public defaultBytes; // 0x

    uint256[] public myNumber; 
    
    //Types to update state variables
    //1
    constructor(string memory _text, uint _number){
      myState = _text;
      myNum = _number;
    }

    function update(string memory _text, uint _number) public{
      myState= _text;
      myNum = _number;
    }
    
}