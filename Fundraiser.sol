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

   receive() external payable {
        require(block.timestamp < finishTime, "Fundraiser Campaign is over");
        donations[msg.sender] += msg.value;
        raisedAmount += msg.value;
   }

   function withdrawDonations() external {
        require(msg.sender == owner, "Only the owner can withdraw donations");
        require(raisedAmount >= targetAmount, "The project campaign did not reach the target amount");
        require(block.timestamp > finishTime, "The campaign is not over yet");
        payable(owner).transfer(raisedAmount);
   }
}