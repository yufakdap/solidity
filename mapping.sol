// SPDX-License-Identifier: UNLICENSED
pragma solidity^0.8.0;

contract mapp{
    mapping(uint=>string) public names;//mapping
    mapping(address => uint) public bal;
    mapping(address=> mapping(address=>bool))public isFriend;//nested mapping
   

    constructor ()  {
        names[1]="ada";
        names[2]="bnd";
        names[3]="coins";


    }
    function example() external{
        bal[msg.sender]=123;//123
        
        bal[msg.sender]+=300;//123+300

        delete bal[msg.sender];
         isFriend[msg.sender][address(this)]= true;

        
    }
}
