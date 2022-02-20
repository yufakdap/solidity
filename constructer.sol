// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Constructor {
    address public owner;
    uint public a;

    constructor(uint _a){
        owner = msg.sender;
        a = _a;
    }
}
