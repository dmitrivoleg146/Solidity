// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract View{
    uint256 num1 =5;
    uint256 num2 =7;

    //Use view to check state variables
    function getResults() public view returns (uint256,uint256){
      return (num1,num2);
    }

    function Calculate() public view returns( uint256 ){
        uint256 res = num1 + num2;
        return res;
    }

    function update() public returns (uint256){
        num1+=8;
        uint256 res= num1*num2;
        return res;
    }
}