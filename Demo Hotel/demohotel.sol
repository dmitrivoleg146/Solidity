pragma solidity ^0.8.17;

contract Hotel{
    address payable tenant;
    address payable landlord;

    uint public no_of_rooms=0;
    uint public no_of_agreement=0;
    uint public no_to_rent=0;

    struct Room{
        uint roomId;
        uint agreementId;
        string roomname;
        string roomaddress;
        uint rent_per_month;
        uint securityDepartment;
        uint timestamp;
        bool vacant;
        address payable landlord;
        address payable currentTenant;
    }

    mapping (uint=>Room) public Room_by_No;

    struct Agreement{
        uint rentno;
        uint roomid;
        uint agreementId;
        string Roomname;
        string RoomAddress;
        uint rent_per_month;
        uint securityDeposit;
        uint lockInPeriod;
        uint timestamp;
        address payable tenantAddress;
        address payable landlordAddress;
    }
    mapping(uint=>Agreement) public RoomAgreement_by_No;

    struct Rent{
        uint rentno;
        uint roomid;
        uint agreementid;
        string roomname;
        string roomAddress;
        uint rent_pay_month;
        uint timestamp;
        address payable tenantAddress;
        address payable landlordAddress;
    }

    mapping(uint=>Rent) public Rent_by_No; // works like an array

    // Modifier helps you to write more secure code
    
    modifier onlyLandLord( uint _index){
        require(msg.sender == Rent_by_No[_index].landlordAddress, "Only landlord can access this");
        _;
    }

    modifier notLandLord(uint _index){
        require(Room_by_No[_index].vacant == true, "Room is currently occupied");
        _;
    }

    modifier enoughtLand( uint _index){
        require(msg.value >= uint(Room_by_No[_index].rent_per_month), "Not enought Ether in your wallet");
        _;
    }
    modifier AgreementTimesUp(uint _index){
        uint _AgreementNo = Room_by_No[_index].agreementId;
        uint time = RoomAgreement_by_No[_AgreementNo].timestamp + RoomAgreement_by_No[_AgreementNo].lockInPeriod;
        require(block.timestamp > time, "Left");
        _;
    }
}