pragma solidity >=0.4.21 <0.7.0;
pragma experimental ABIEncoderV2;

contract SimpleStorage {

  struct LegalCase {
  	uint caseNo;
  	string childName;
  	string lawyer;
  	string date;
  	string socialWorker;
  	string court;
  	string caseHash;
  }

  struct Report {
  	uint reportNo;
  	string date;
  	string socialWorker;
  	string reportIpfs;
  }

  struct FosterHome {
  	uint id;
  	string firstName;
  	string lastName;
  	uint rating;
  	string spouse;
  	string houseAddress;
  	string dateJoined;
  	string employer;
  	string backgroundIpfs;
  	Report[] reports;
  }

  struct FosterKid {
  	uint id;
  	string firstName;
  	string lastName;
  	Report[] reports;
  }

  struct Agency {
  	string name;
  	string location;
  }

  mapping(address => Agency) public agency;
  mapping(address => string) public status;
  mapping(address => FosterHome[]) public registeredHome;
  mapping(address => FosterKid[]) public fosterKid;
  mapping(address => LegalCase[]) public cases;

  function setUser(address _address, string memory _status) public{
    require(msg.sender == _address);
    status[_address] = _status;
  }

  function getUser(address _address) public view returns (string memory){
      return status[_address];
  }

  // function addHome(string memory _firstName, string memory _lastName, uint _rating, string memory _spouse, address _address, string memory _houseAddress, string memory _dateJoined, string memory _employer, string memory hash) public {
  // 	require(keccak256(abi.encodePacked(status[msg.sender])) == keccak256(abi.encodePacked('Agency')));
  // 	//require(keccak256(abi.encodePacked(status[_address])) == keccak256(abi.encodePacked('Home')));
  // 	Report[] memory reports;
  // 	uint index = registeredHome[msg.sender].length;
  // 	registeredHome[msg.sender].push(FosterHome(index, _firstName, _lastName, _rating, _spouse, _houseAddress, _dateJoined, _employer, hash, reports));
  // }

  // function addReport(string partyInvolved, uint _reportNo, string memory date, string memory _socialWorker, string memory hash) public {
  // 	require(keccak256(abi.encodePacked(status[msg.sender])) == keccak256(abi.encodePacked('Agency')));
  // 	if(partyInvolved == ''){
  // 		uint index = report[_address].length;
  // 		registeredHome[msg.sender]().push(Report(_reportNo, date, _socialWorker, hash));
  // 	}
  // 	else{
  // 		fosterKid[msg.sender](index).push(Report(_reportNo, date, _socialWorker, hash));
  // 	}
  // 	// report[_address].push(Report(_reportNo, date, _socialWorker, hash));
  // }

  function viewHomes() public view returns (FosterHome[] memory){
  	require(keccak256(abi.encodePacked(status[msg.sender])) == keccak256(abi.encodePacked('Agency')));
      return registeredHome[msg.sender];
  }

  function viewHome(uint id) public view returns (FosterHome memory){
  	require(keccak256(abi.encodePacked(status[msg.sender])) == keccak256(abi.encodePacked('Agency')));
  	FosterHome[] memory homes = registeredHome[msg.sender];
     return homes[id];
     // return homes(id);
  }

  function viewFosterKids() public view returns (FosterKid[] memory){
    require(keccak256(abi.encodePacked(status[msg.sender])) == keccak256(abi.encodePacked('Agency')));
	return fosterKid[msg.sender];
  }

  function viewFosterKid(uint id) public view returns (FosterKid memory){
    require(keccak256(abi.encodePacked(status[msg.sender])) == keccak256(abi.encodePacked('Agency')));
    FosterKid[] memory kids = fosterKid[msg.sender];
	return kids[id];
	// return fosters(id);
  }

  function addCase(uint _caseNo , string memory _name, string memory _lawyer, string memory _date, string memory _socialWorker, string memory _court, string memory hash) public {
  	require(keccak256(abi.encodePacked(status[msg.sender])) == keccak256(abi.encodePacked('Agency')));
  	uint index = cases[msg.sender].length;
  	cases[msg.sender].push(LegalCase(_caseNo, _name, _lawyer, _date, _socialWorker, _court, hash));
  }

  function viewCases() public view returns (LegalCase[] memory) {
  	require(keccak256(abi.encodePacked(status[msg.sender])) == keccak256(abi.encodePacked('Agency')));
  	return cases[msg.sender];
  }

  function viewCase(uint id) public view returns (LegalCase memory) {
  	require(keccak256(abi.encodePacked(status[msg.sender])) == keccak256(abi.encodePacked('Agency')));
  	// return cases[msg.sender](id);
  	LegalCase[] memory legalCases = cases[msg.sender];
  	return legalCases[id];
  }

}
