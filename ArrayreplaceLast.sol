// SPDX-License-Identifier: UNLICENSED
//gas efficant way to replace an array, 
pragma solidity ^0.8.0;

contract replaceLast{

    uint[] public rep;

    function replaceLaster(uint _index)public{
        rep[_index]=rep[rep.length - 1];
        rep.pop();


    }
    function test()public {
        rep = [ 1, 2, 3, 4];
        replaceLaster(1);
        assert(rep.length==3);
        assert(rep[0]==1);
        assert(rep[1]==4);
        assert(rep[2]==3);

        replaceLaster(2);
        assert(rep.length ==2);
        assert(rep[0]==1);
        assert(rep[1]==4);

    }
}
