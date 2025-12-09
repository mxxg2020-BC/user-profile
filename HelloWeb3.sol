pragma solidity ^0.8.0;

contract HelloWeb3 {
    string public message;

    constructor(string memory _msg) {
        message = _msg;
    }
}
