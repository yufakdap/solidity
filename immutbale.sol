// SPDX-License-Identifier: UNLICENSED
pragma solidity^0.8.0;

contract imutable{
    address immutable owner;

    constructor(){
        owner=msg.sender;

    }
    uint public x;
    function foo() external{
        require(msg.sender==owner);
        x+=1;
    }
}
