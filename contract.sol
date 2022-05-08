pragma solidity 0.5.1;

contract MyContract {
    string value;

    constructor() public {
        value = "My Default Value";
    }

    function get() public view returns(string) {
        return value;
    }

    function set(_value) public {
        value = _value
    }
}