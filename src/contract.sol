pragma solidity ^0.4.8;

contract SimpleStorage
{
  string public current_value;

  address public last_changed_by;
  address owner;

  // const
  function SimpleStorage(string value){
    owner = msg.sender;

    current_value = value;
    last_changed_by = msg.sender;
  }

  // change current value
  function change_value(string value){
    current_value = value;
    last_changed_by = msg.sender;
  }

  // return current value
  function current_value() constant returns (string){
    return current_value;
  }

  // recover funds
  function kill(){
    if(msg.sender==owner){
      selfdestruct(owner);
    }
  }
}

