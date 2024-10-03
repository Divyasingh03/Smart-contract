// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MathOperations {
    uint256 public result;

    // Function to add two numbers and store the result
    function add(uint256 _num1, uint256 _num2) public {
        result = _num1 + _num2;
    }

    // Function to subtract two numbers and store the result
    function subtract(uint256 _num1, uint256 _num2) public {
        result = _num1 - _num2;
    }

    // Function to multiply two numbers and store the result
    function multiply(uint256 _num1, uint256 _num2) public {
        result = _num1 * _num2;
    }

    // Function to divide two numbers and store the result
    function divide(uint256 _num1, uint256 _num2) public {
        require(_num2 != 0, "Division by zero is not allowed");
        result = _num1 / _num2;
    }

    // Function to get the result of the last operation
    function getResult() public view returns (uint256) {
        return result;
    }
}
