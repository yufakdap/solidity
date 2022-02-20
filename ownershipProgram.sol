// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract own{
    address public add;
    
    constructor (){
        add = msg.sender;
    }

    modifier mod(){
        require (msg.sender == add,"invalid owner");
        _;
    }
    function setOwnner(address _newOwner)external mod{
        require(_newOwner != address(0),"invalid address");
         add=_newOwner;

    }
    function anyOncecancakk() external {

    }
    function ownerCall() external mod{

    }

    }

