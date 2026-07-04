pragma solidity ^0.8.0;

contract VariableExamples{
    uint public age=45;
    int public temperatue=-10;
    uint8 public smallNumber=255;
    string public name="Alice";
    bool public isActive=true;
    

    address public owner;

    function calculate() public pure returns(uint){
        uint temp=10;
        uint result=temp*2;
        return result;
    }
     function sum() public pure returns(uint){
        uint temp=20;
        uint result=temp+2;
        return result;
    }
     function sub() public pure returns(uint){
        uint temp=10;
        uint result=temp-2;
        return result;
    }
}
