// SPDX-License-Indentifier: MIT
pragma solidity ^0.8.0;

contract HelloWeb3 {
    string public message;

	// This constructor sets the initial message when deploying the contract.
    constructor(string memory _msg) {
        message = _msg;
    }
}
