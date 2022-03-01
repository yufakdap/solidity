// SPDX-License-Identifier: UNLICENSED
pragma solidity^0.8.0;
 contract Datalocations{

      struct myStruct{
          uint a;
          string b;
      }
      mapping (address=>myStruct)public MyStruct;
    function example(uint[] calldata _y, string calldata _b) external returns(uint[]memory){//using calldata in functions ha sthe potential to save gas
      MyStruct [msg.sender]= myStruct({a:100,b:"boom"});
      
      myStruct storage struc=MyStruct[msg.sender];
      struc.b="foo";
      myStruct memory str=MyStruct[msg.sender];//once the fuction is doen excuting this changes wiil not be saved .
      str.a=200;

      uint[]memory marry = new uint[](3);
      marry[0]=500;
      return marry;
    }



 }
