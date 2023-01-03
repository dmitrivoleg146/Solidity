// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract countNft{
    uint256 public numberOfNft;

    //Increment number

    function addNft() public {
        numberOfNft+=1;
    }

    function deleteNft() public{
        numberOfNft-=1;
    }

    function checkTotalNft() public view returns (uint256){
        return numberOfNft;
    }
}