pragma solidity ^0.4.17 < 0.6.12;

contract ReportCardSubmission{
    // name, rollNo, batch, 4 subject marks, status Pass or Fail
    string public name;
    uint public rollNo;
    string batch;
    string public status;
    uint maths;
    uint science;
    uint english;
    uint computer;

    // We have only specified public in rollNo and status so we cant see it in deployed report card's details

    function ReportCardSubmission(string Name, uint RollNo, string Batch, string Status, uint Maths, uint Science, uint English, uint Computer) public {
        // This is a constructor.
        name = Name;
        rollNo = RollNo;
        batch = Batch;
        status = Status;
        maths = Maths;
        science = Science;
        english = English;
        computer = Computer;
        
    }

    
    function GetReportCardDetails() public view returns(string, uint, string, string, uint, uint, uint, uint, uint){
        uint total;
        total = maths + science + english + computer;
        return (name, rollNo, batch, status, maths, science, english, computer, total);
    }
    
}
