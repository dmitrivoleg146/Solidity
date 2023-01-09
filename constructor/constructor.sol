// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract A{
    string public name;

    constructor(string memory _name){
        name=_name;  //update string variable
    }
}

contract B{
    string public text;

    constructor(string memory _text){
        text=_text;
    }
}

//1 way: pass the parametr into the inheritance list

contract C is A("Input to A"), B("Input to B" ){

}

//2 way: Similar to function modifier

contract D is A,B{
    constructor(string memory _name, string memory _text) A(_name) B(_text){}
}

// parents constructors are always called in order of inheritance

contract E is A,B{
    constructor () A ("A is called") B ("B is called"){
        
    }
}
