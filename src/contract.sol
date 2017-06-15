pragma solidity ^0.4.8;

contract SimpleStorage
{
  string public current_value;
  address public last_changed_by;

  function SimpleStorage(string value)
  {
    current_value = value;
    last_changed_by = msg.sender;
  }

  function change(string value)
  {
    current_value = value;
    last_changed_by = msg.sender;
  }
}

