// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Fundraiser {
   uint256 public targetAmount;
   address public owner;
   mapping(address => uint256) public donations;

   uint256 public raisedAmount = 0;
   uint256 public finishTime = block.timestamp + 2 weeks;

   constructor (uint256 _targetAmount) {
        targetAmount = _targetAmount;
        owner = msg.sender;
   }
}