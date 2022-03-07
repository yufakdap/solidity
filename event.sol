// SPDX-License-Identifier: UNLICENSED

pragma solidity^0.8.0;
    contract foo{
        event Events(string name, uint index);//event will be used to store data on the blockchain 

    function form() external{
        emit Events("nathan",4);
    }
        event sendmsg(address to,address from,string msgs);

    function sendmessage(address _to,string calldata msgss)external{
        emit sendmsg(_to,msg.sender, msgss);
    }
    }
