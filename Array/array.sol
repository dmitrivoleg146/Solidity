// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract Array{
    bool result;
    function checkInput(uint256 _input) public pure returns(string memory){
        require(_input>0, "invalid");
        require(_input<255, "Ivalid also");
        return "Valid";
    }
    
    function Odd(uint256 _input) public pure returns (bool){
        require(_input % 2 != 0);
        return true;
    }
    
    //also rare
    function checkOverflow(uint256 _num1, uint256 _num2) public returns (bool){
        uint256 sum =_num1 + _num2;
        assert(sum<=255);
        result= true;
    }
    
    //very rare for using
    function checkOverflows(uint256 _num1, uint256 _num2) public pure returns(string memory, uint256){
        uint256 sum = _num1 + _num2;
        if(sum< 0 || sum>255){
            revert("Overflow exists");
        }
        else{
            return ("No overflow", sum);
        }
    }

}