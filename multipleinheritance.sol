// SPDX-License-Identifier: UNLICENSED
pragma solidity^0.8.0;

contract A{
    function one() public pure virtual returns(string memory){
        return "one";
    }
    function two() public pure virtual returns(string memory){
        return "two";
    }
    function three() public pure returns(string memory){
        return "three";
    }

}
contract B is A {
    function one()public pure virtual override returns(string memory){
        return "ONe";
    }
    function two()public pure virtual override returns(string memory){
        return "TWo";
    }
    function four()public pure  returns(string memory){
        return "-Four";

    }
}
contract C is A,B {
   // function five()public pure returns(string memory){
    //   return"-Five";
    function one() public pure override(A,B) returns(string memory){
        return "one";
    }
    function two() public pure override(A,B) returns(string memory){
        return "two";
    }
}
