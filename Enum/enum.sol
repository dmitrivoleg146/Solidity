// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Enum{
    // Enum representing shipping status
    enum Status{
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }
    //the default value is the first element listed in = Pending 
    Status public status; //Pending = 0, Shipped = 1 ,... //0
    function get() public view returns(Status){
        return status;
    }

    function set(Status _status) public {
        status = _status;
    }

    function cancel() public {
        status=Status.Canceled;
    }

    function reset() public {
        delete status;
    }
}