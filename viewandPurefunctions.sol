// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;
contract viewandPurefucntions{
    uint public a;

function num() external view returns(uint){ //function view:views the state variable,its a read only function 
    return a;
}
function num2() external pure returns(uint){
    return 1;



}
}
   
