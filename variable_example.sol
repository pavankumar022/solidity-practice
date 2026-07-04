// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VariableExamples {
 

    // Numbers
    uint public age = 25;           // Positive whole number
    int public temperature = -5;    // Can be negative
    uint8 public smallNum = 255;    // 0 to 255

    // Text
    string public name = "Alice";   // Text data

    // Boolean
    bool public isActive = true;    // true or false

    // Address
    address public owner;           // Wallet address

//inside functions 
    function calculate() public pure returns (uint) {
        uint temp = 10;           // Local variable
        uint result = temp * 2;   // Another local variable
        return result;
    }
}
