// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// track the data into array

contract Mapping{
    mapping(address => uint) public myMap; // contain all addresses
    // mapping is a state variable
    function get (address _addr) public view returns (uint){
        // mapping always returns a value
        return myMap[_addr];
    }

    function set (address _addr, uint _i) public {
        //update value at this address
        myMap[_addr] = _i;
    }

    function remote(address _addr) public{
      //reset default value
       delete  myMap[_addr];
    }

}

contract NestedMapping{
    // mapping from address to another mapping
    mapping(address => mapping(uint => bool)) public nested;

    function get (address _addr, uint _i) public view returns (bool){
        return nested[_addr][_i];
    }

    function set (address _addr, uint _i, bool _bool) public{
         nested[_addr][_i] = _bool;

    }

    function remote (address _addr, uint _i) public{
        delete nested [_addr][_i];
    }
}