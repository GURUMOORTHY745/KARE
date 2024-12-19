// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BloodDonation {
    struct Request {
        uint id;
        string username;
        string phone;
        string bloodType;
        uint units;
        string hospital;
        string city;
        string reason;
        string status;
    }

    Request[] public requests;

    function addRequest(string memory _username, string memory _phone, string memory _bloodType, uint _units, string memory _hospital, string memory _city, string memory _reason, string memory _status) public {
        requests.push(Request(requests.length, _username, _phone, _bloodType, _units, _hospital, _city, _reason, _status));
    }

    function getRequest(uint _id) public view returns (Request memory) {
        return requests[_id];
    }
}