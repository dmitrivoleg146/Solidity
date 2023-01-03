// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

//Value and Reference data types

contract dataTypes{
    bool public no = true;

    uint8 a; // ranges 0 - 2 ** 8 - 1 /255
    uint16 b; // ranges 0 - 2 ** 16 -1 // 65535
    uint256 c; //ranges 0 - 2 ** 256 - 1 // 1.1579209e+77

    uint8 public u8 =1;
    uint public u256 = 456;
    uint public u9 = 123;  // uint = uint256


    int256 z; // ranges from -2 ** 255 to 2 ** 255 -1

    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    uint public minNum = type(uint).min;
    uint public maxNum = type(uint).max;

    // Fixed Array

    // Dynamic Array

    address public admin; //0x00

    // Default values
    bool public defaultBool;  // false
    uint public number; // 0
    uint public defaultInt; // 0
    address public key; //0x000000
    
    




}

