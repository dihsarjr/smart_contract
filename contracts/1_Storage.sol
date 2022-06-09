// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract Todo {

    //this list will hold all todos
   TodoModel[] todoList;

    // this function helps to get all todos
   function getTodoList() public view returns(TodoModel[] memory){
       return todoList;
   }

    // this function helps to add todos to [todoList]
   function addTodo(string memory todoName) public {
    todoList.push(TodoModel(false,todoName));
   }

    // this function helps to change state of single todo
   function changeToDoState(bool state,uint256 index) public {
    todoList[index].isComplete = state;
   }

}

struct TodoModel{
    bool isComplete;
    string todoName;
}