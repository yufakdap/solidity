//SPDX-License-Identifier: UNLICENSED
pragma solidity^0.8.0;

contract todoList{
    struct toDo{
        string words;
        bool state;
    }
    toDo[] public todo;

    function thingstoDo(string calldata _words)external {
        todo.push(toDo({words:_words,state:false}));


    }
    function updatetoDo(string calldata _nWord, uint _index)external{
        todo[_index].words=_nWord;//uses less gas when updating single field, and uses high ga when updating multiple fields. accesing the array multiple times uses more gas 

        //toDo storage todos=todo[_index];//uses less gas when there are multiple fields to update.
        //todos.words= _nWord;

    }

    function changeState(bool newState,uint _index)external {
        todo[_index].state=newState;
    }
    function get(uint _index)external view returns(string memory, bool){
        if(_index==_index){
          revert("please enter a valid number");}
        
        toDo memory to = todo[_index];
        return (to.words, to.state);
    }
}
