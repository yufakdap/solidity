// SPDX-License-Identifier: UNLICENSED
pragma solidity^0.8.0;
contract arrays{

    uint[] public moo=[1,2,3,4,5,7];      //dynamic array
    uint[3]public boo=[1,1212,2];      //fixed array 
    
    


    function example()external  {
        moo.push(4);                //inserts 4 into moo
        delete moo[2];             //delets a number from index 2
        moo.pop();               //removes the last digit in an array .
        uint len=moo.length;    // measures the length in an array .
        uint x= moo[3];
       

        uint [] memory a=new uint[](5); //the size of the array is to be fixed therefor push and pop will not work
        a[2]=123;
    }
    function returnArray() external view returns (uint[] memory){ //uses lots of gas so we keep avoid returning an array.
        return moo;
    }


}
