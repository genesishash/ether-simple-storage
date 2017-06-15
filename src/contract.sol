pragma solidity ^0.4.8;

contract SimpleStorage
{
  string public current_value;

  address public last_changed_by;
  address owner;

  event value_changed(string value, address addr);
  event contract_created(string name);

  //
  function SimpleStorage(string value){
    owner = msg.sender;

    current_value = value;
    last_changed_by = msg.sender;

    contract_created(name);
    value_changed(current_value,last_changed_by);
  }

  function change_value(string value){
    current_value = value;
    last_changed_by = msg.sender;
    value_changed(current_value,last_changed_by);
  }

  function current_value() constant returns (string){
    return current_value;
  }

  //
  function kill(){
    if(msg.sender==owner){
      selfdestruct(owner);
    }
  }
}

