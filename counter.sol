// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;
contract counter{
    int public count;

    function inc() external returns(int){
        return count +=1;
    }
    function sec() external returns(int){
        return count -=1;
    }
}
