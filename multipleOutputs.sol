// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract manyFunction{
    function manyOutputs() public pure returns(uint,bool){
        return (1,true);

    }
    function named() external pure returns(uint a,bool b){
        return (1,true);

    }
    function destructingAsg()public pure returns (uint a,bool b){
        a=1;
        b=true;

    }
}
