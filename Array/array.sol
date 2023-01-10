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

    uint [] public arr;
    uint [] public arr2 = [1,2,3];
    uint [10] public fixedArray;

    function get (uint i) public view returns (uint){
        return arr[i];
    }

    function getArray() public view returns (uint [] memory){
        return arr;
    }
    function push(uint i) public{
        arr.push(i);
    }
    function pop() public {
        arr.pop();
    }
    function getLength() public view returns (uint){
        return arr.length;
    }
    function remove( uint i) public {
        //delete does not change the length => it only reomve element
        //and then those element by default = 0
        delete arr[i];
    }
    function examples() external{
        // create array in memory, only fixed size can be declared
        uint[] memory a = new uint [] (5);
    }
    

}