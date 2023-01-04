// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Pure{
    uint256 num1 =4;
    uint256 num2 = 10;

    // pure get access only to local variables
    function getData() public pure returns(uint256, uint256){
      uint256 num11 = 30;
      uint256 num22 = 50;
      
      return (num11,num22);

    }
}