// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// Declaring and non declaring functons
contract Function{
     uint256 public hey;

     // the reason we use view to look on state variables
     // getData
     function getInfo() public view returns (uint256){
        return hey;
     }
     // Update Data

     function updateData(uint256 _hey) public {
        hey=_hey;
     }
     //1.07
     // view is not allowed when you change state variables => there has to be pure
     function get(uint256 _a, uint256 _b) public returns(uint){
        uint256 newNumber = _a + _b;
        hey= newNumber;
        return hey;
     }
     // 1.13
}