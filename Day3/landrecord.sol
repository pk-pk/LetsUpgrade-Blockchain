pragma solidity ^0.4.17 < 0.6.12;

contract LandRecord{
    
    string public owner;
    uint public value;
    string public location;
    string area;
    string legalId;
    // We have not specify public in area and legalID so we cant see it in deployed contract's records
    // Only public vars will be displyed.
    function LandRecord(string newOwner, uint newValue, string newLocation, string newArea, string newLegalId) public {
        // This is a constructor.

        owner = newOwner;
        value = newValue;
        location = newLocation;
        area = newArea;
        legalId = newLegalId;
        
    }
    
    function setLandDetails(string newOwner, uint newValue) public {
        // if we don't define this as public we won't be able to see any details.
        owner = newOwner;
        value = newValue;
    }
    
    function getLandCurrentDetails() public view returns(string, uint, string, string, string){
        return (owner, value, location, area, legalId);
    }
    
}
