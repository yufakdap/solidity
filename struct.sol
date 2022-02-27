// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract structur{

    struct user {
       string name;
       uint score;
       address users;
    }
    user public theUsers;//declaring struct users as state variable
    user[] public usr;
    function example() external {//ways to initialize a struct
        user memory user1= user("rajesh", 10, msg.sender);//first way 
        user memory user2= user({users:msg.sender, name:"rajesh", score:10});//secodn way 
        user memory user3;//thirs way
        user3.users=msg.sender;
        user3.name="rajesh";
        user3.score=123;

        usr.push(user1);
        usr.push(user2);
        usr.push(user3);
        usr.push(user("fareena",10,msg.sender));//another way of initilizing and pushing the struct into an array
    user storage _user= usr[0];
        _user.score=2;
        delete _user.name;
        _user.name="elati";

    delete usr[1];//this will delete the values which are declared in the the struct of an array at index 1

    
}
}
