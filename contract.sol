// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;
import "MathLib.sol";

contract MyContract {

    uint256 public value;

    function calculate(uint _value1, uint _value2) public {
        value = Math.divide(_value1, _value2);
    }
}