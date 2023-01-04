// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract LocalVariable{
    uint256 public myNumber;
    // when we don't change a state variable => use pure, view is to read data from state variable
    function local () public  returns (address, uint256, uint256){
        // not stored in blockchain

        uint256 i =345;
        myNumber=i;
        i++;
        address myAddress = address(1);
        return (myAddress,myNumber, i);

    }
}