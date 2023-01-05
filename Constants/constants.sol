// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Constants{
    //when we define a variable like a constant we pay less gas fee
    address public constant MY_ADDR = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    uint256 public num=5;
    string public myString;

    uint256[] data;
    uint256 k=0;

   //Takes too much gas fee
    function loop() public returns (uint256[] memory){
        while(k<5){
            k++;
            data.push(k);
        }
        return data;
    }
    
    //Also take too much gas fee
    function doLoop() public returns (uint256[] memory){
        do{
            k++;
            data.push(k);
        } while(k<5);
        return data;
    }
    
    //very high gas fee
    function forLoop() public returns (uint256[] memory){
        for(uint256 i=0;i<5;i++){
            data.push(i);
        }
        return data;
    }

    function getConstant() public pure returns(address){
       return MY_ADDR;
    }

    function get(uint256 _num) public returns (string memory){
        if(_num == 5){
           myString="Value is 5";
        }
        else{
            myString="Value is different";
        }
    }
    
    function shortHand(uint256 _num) public returns(string memory){
        return _num>5 ? myString="Is 5" : myString="Different";
    }

    // while loop

    

    
}