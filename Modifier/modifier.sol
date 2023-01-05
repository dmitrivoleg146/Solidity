// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// Modifier are code that can be used before and after your function
//  restrict access , validate inputs, guard against reentrancy hack

contract Modifier{
    address public owner;
    uint256 public x =10;
    bool public locked;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not Owner");
        _;
    }

    modifier validateData(address _addr) {
        require(_addr != address(0) , "Not valid");
        _;
    }

    function newOwner(address _newOwner) public onlyOwner validateData (_newOwner){
        owner=_newOwner;
    }

}