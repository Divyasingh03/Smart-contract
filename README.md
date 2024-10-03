### Math Operations DApp

This decentralized application (DApp) performs basic math operations (addition, subtraction, multiplication, and division) on two numbers using a smart contract written in Solidity. The frontend is built using HTML and JavaScript (with Web3.js) to interact with the smart contract deployed on the Ethereum blockchain.

### Features

Add two numbers

Subtract two numbers

Multiply two numbers

Divide two numbers (with division by zero check)

Display the result of the most recent operation

### Project Structure

Solidity Contract (MathOperations.sol): Contains functions for addition, subtraction, multiplication, and division.

Frontend (index.html): Simple web interface to input two numbers and call the respective functions of the smart contract. Displays the result of the last performed operation.

Web3.js: Used to connect the frontend to the Ethereum blockchain and interact with the deployed smart contract.

### Prerequisites

Node.js: Ensure Node.js is installed for running a local web server if required.

Remix IDE: For deploying and testing the Solidity smart contract.

MetaMask: For connecting to the Ethereum blockchain in the browser and interacting with the contract.

### Getting Started

Step 1: Deploy the Smart Contract

Go to Remix IDE.

Create a new file called MathOperations.sol and paste the following code:

```solidity


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MathOperations {
    uint256 public result;

    function add(uint256 _num1, uint256 _num2) public {
        result = _num1 + _num2;
    }

    function subtract(uint256 _num1, uint256 _num2) public {
        result = _num1 - _num2;
    }

    function multiply(uint256 _num1, uint256 _num2) public {
        result = _num1 * _num2;
    }

    function divide(uint256 _num1, uint256 _num2) public {
        require(_num2 != 0, "Division by zero is not allowed");
        result = _num1 / _num2;
    }

    function getResult() public view returns (uint256) {
        return result;
    }
}
```

Compile the contract using the Solidity compiler in Remix.

Deploy the contract on a local or test Ethereum environment (e.g., JavaScript VM, Injected Web3 using MetaMask).

After deploying, copy the contract address from Remix.

Step 2: Set Up the Frontend

Open the index.html file.

Replace the placeholder "YOUR_CONTRACT_ADDRESS" with the actual deployed contract address from Remix.

Make sure you have Web3.js linked in your HTML:

```html

<script src="https://cdn.jsdelivr.net/gh/ethereum/web3.js/dist/web3.min.js"></script>
```

Step 3: Run the Frontend

You can open index.html directly in a browser to run the frontend.

Ensure MetaMask is installed in your browser and connected to the same network where your contract is deployed (e.g., localhost or testnet).

Step 4: Interact with the DApp

Enter two numbers in the input fields.

Click one of the operation buttons: Add, Subtract, Multiply, or Divide.

The result will be displayed on the webpage under the "Result" section.

### Dependencies

Web3.js: Used for Ethereum blockchain interaction in the frontend.

MetaMask: Required for signing transactions and interacting with the contract.

### Usage

HTML Code Structure

Input Fields: Two number input fields (num1, num2) for the user to enter the numbers.

Buttons: Four buttons corresponding to each math operation (Add, Subtract, Multiply, Divide).

Result Display: The result of the last operation is shown in a <span> element with the id result.

### Solidity Functions

add(uint256 _num1, uint256 _num2): Adds _num1 and _num2, stores the result.

subtract(uint256 _num1, uint256 _num2): Subtracts _num2 from _num1, stores the result.

multiply(uint256 _num1, uint256 _num2): Multiplies _num1 and _num2, stores the result.

divide(uint256 _num1, uint256 _num2): Divides _num1 by _num2 (if _num2 is not zero), stores the result.

getResult(): Retrieves the result of the last operation.
Notes
Ensure the smart contract is deployed to the same Ethereum network that MetaMask is connected to.
Handle errors such as division by zero or empty input in the frontend as needed.

### Author
Divya Singh

### License
This project is licensed under the MIT License.
