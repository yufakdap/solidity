// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;


contract functionModifier{
    bool public paused;
    uint public count;

    function setPause(bool _paused) external{
        paused = _paused;

    }
    modifier whenNotPaused(){
        require(!paused ,"paused");//basic modifier
        _;
    }
    function inc()external whenNotPaused{
        count +=1;
    }
    function dec()external whenNotPaused{
        
        count -=1;
    }
    modifier cap(uint _p){
        require(_p<100,"p >100");//input function modifier.
        _;
    }
    function incd(uint _p)external whenNotPaused cap(_p) {
        count += _p;


    }
    modifier sandwich(){
        //codehere
        count+=10;
        _;
        //more code
        count*=2;
    }
    function bo() external sandwich{//sandwich fuction modifier.
        count+=1;

    }

    }
