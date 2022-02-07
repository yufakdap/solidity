// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract globalVariables{
    function glovrbls() external view returns (address, uint ,uint)  {
        address sender= msg.sender;
        uint timeStamp= block.timestamp;
        uint blocknum= block.number;
        return (sender,timeStamp,blocknum);

    }
}
