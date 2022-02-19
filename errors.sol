// SPDX-License-Identifier: UNLICENSED

//require,revert,assert
//- gas refund, state variable updates are reverted
//custom error-save gas

pragma solidity^0.8.0;

contract erreos{
 
 

    function er(uint _a,uint _b) public pure returns(uint){ //revert error example
        require(_a<=100,"a is less than 100");
        require(_b<=100,"b is less than 100");
        return _a+_b;
        
        
    }
    function er2(uint _a) public pure returns(uint){ //revert error example
        if (_a<=100 ){
            revert("a is less than 100");
    

        }

    return _a;        
       // else if(_b<=100){
        //    revert("b is less than 100");
       // }
       

    }
    uint public num=123;
    function assertt()public view{//use assert to check for conditions that should always be equal to true
        assert(num==123);
    }
    error Myerror(address caller, uint _i);//costum error example
    function myErroe(uint _i) public view {
        if (_i<10){
        revert Myerror( msg.sender , _i);
        }
    }



}
