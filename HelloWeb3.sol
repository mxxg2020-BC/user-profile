// SPDX-License-Indentifier: MIT
pragma solidity ^0.8.0;

// simple per-user message board based on mapping and msg.sender
contract HelloWeb3 {
    // basic state variables for demo purpose
    string public message;
    uint public counter;
    bool public isActive;
    address public owner;
    string public ownerName;

    mapping(address => uint) public userCount;
    mapping(address => string) public userMessage;

	// This constructor sets the initial message when deploying the contract.
    constructor(string memory _msg) {
        message = _msg;
        counter = 1;
        isActive = true;
        ownerName = "anonymous";
        owner = msg.sender; // set the contract deployer as owner
    }

    // ensure only contract owner can call certain functions
    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner!");
        _;
    }
    //function setMessage(string memory newMessage) public {
        //message = newMessage;
    function setMessage(string memory _msg) public {
        userMessage[msg.sender] = _msg;
    }

    // get message for a specific user
    function getMessage(address _user) public view returns (string memory) {
        return userMessage[_user];
    }


    // increase count for each caller (msg.sender)
    function increase() public {
        userCount[msg.sender] += 1;
    }
    
    function setActive(bool _status) public onlyOwner {
        isActive = _status;    
    }
    /*
    Usage in Remix:
    1. Deploy contract with initial message.
    2. Call message() to read current value.
    3. Call setMessage("New Message") to update.
    */
}
