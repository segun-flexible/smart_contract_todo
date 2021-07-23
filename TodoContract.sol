pragma solidity ^0.8.6;

contract TodoContract{
    //List
    string[] list;
    
    //Add New
    function addNew(string memory _value) external {
        list.push(_value);
    }
    
    //Get One By Id
    function getTodoByIndex(uint _index) external view returns (string memory) {
        require(_index >= 0,"Index Position Cannot Be Empty");
        return list[_index];
    }
    
    //Get All
    function getTodos() external view returns (string[] memory) {
        return list;
    }
    
    //Delete By Id
    function deleteTodoByIndex(uint _id) external {
        delete list[_id];
    }
    
    
    
    
}