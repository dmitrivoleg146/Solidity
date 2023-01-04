// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract EventTicket{
    uint256 public numberOfTicket;
    uint256 public ticketPrice;
    uint256 public totalAmount;
    uint256 public startAt;
    uint256 public endAt;
    uint256 public timeRange;
    string public message = "Buy your first Event ticket";

    constructor(uint256 _ticketPrice){
        ticketPrice = _ticketPrice;
        startAt = block.timestamp;
        endAt = block.timestamp + 7 days;
        timeRange = (endAt - startAt) /60/60/24;

    }

    function buyTicket(uint256 _value) public returns(uint256 ticketId){
        numberOfTicket++;
        totalAmount+=_value;
        ticketId = numberOfTicket;

    }
}