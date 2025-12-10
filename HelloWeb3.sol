// SPDX-License-Indentifier: MIT
pragma solidity ^0.8.0;

contract HelloWeb3 {
    string public message;
    uint public couter;
    bool public isActive;
    string public ownerName;

	// This constructor sets the initial message when deploying the contract.
    constructor(string memory _msg) {
        message = _msg;
        couter = 1;
        isActive = true;
        ownerName = "anonymous";
    }

    function setMessage(string memory newMessage) public {
        message = newMessage;
    }

    /*
    Usage in Remix:
    1. Deploy contract with initial message.
    2. Call message() to read current value.
    3. Call setMessage("New Message") to update.
    */
}
