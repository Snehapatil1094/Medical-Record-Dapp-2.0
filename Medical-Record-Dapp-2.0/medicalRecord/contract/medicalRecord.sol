pragma solidity ^0.4.23;

contract medicalRecords {
    
    struct Doctor{
        string doctorName;
        string doctorEmail;
        uint doctorContNum;
        string doctorEducation;
        string doctorLocalAddress;
    }
    
    struct Patient{
        string patientName;
        string patientEmail;
        uint patientContNum;
        string patientLocalAddress;
        uint consultedDoctor;
    }
    
    address public OwnerOfHospital;
    address public receptionist;
    
    mapping(uint => Doctor) doctorInfo;
    mapping(uint => Patient) patientInfo;
    mapping(uint => bool) isRecordExist;
    mapping(address => bool) isDoctorValid;
    mapping(address => bool) isPatientValid;
    
    constructor(address _receptionist) public  {
        OwnerOfHospital = msg.sender;
        receptionist = _receptionist;
    }
    
    modifier onlyHospitalOwner {
        require(msg.sender == OwnerOfHospital, "Only Hospital owner can add the Doctor details into the record!");
        _;
    }
    
    modifier onlyReceptionist {
        require(msg.sender == receptionist, "Only Hospital receptionist can add the patient details into the record!");
        _;
    }
    
    function setDoctorDetails(
        uint _dId,
        string memory _dName, 
        string memory _dEmail, 
        uint _dContNum,
        string memory _dEducation,
        string memory _dAdd)  public {
       
        Doctor storage d = doctorInfo[_dId];
        
        d.doctorName = _dName;
        d.doctorEmail = _dEmail;
        d.doctorContNum = _dContNum;
        d.doctorEducation = _dEducation;
        d.doctorLocalAddress = _dAdd;
        
        
        isDoctorValid[msg.sender] = true;
        isRecordExist[_dId] = true;
    }
    
    function setPatientDetails(
        uint _pId, 
        string memory _pName,
        string memory _pEmail, 
        uint _pContNum,
        string memory _padd,
        uint _consultedDoctor)  public {
        
        Patient storage p = patientInfo[_pId];
              
        p.patientName = _pName;
        p.patientEmail = _pEmail;
        p.patientContNum = _pContNum;
        p.patientLocalAddress = _padd;
        p.consultedDoctor = _consultedDoctor;
    
        isPatientValid[msg.sender] = true;
        isRecordExist[_pId] = true;
    }
    
    function getDoctorDetails(uint _dId) public view returns(string memory, 
                                                            string memory,
                                                            uint,
                                                            string memory,
                                                            string memory) {
        Doctor memory s = doctorInfo[_dId];
    
        require(isRecordExist[_dId] == true && (msg.sender == OwnerOfHospital || isDoctorValid[msg.sender] ==  true || msg.sender == receptionist), "Only Doctor/OwnerOfHospital/receptionist can see doctors information");
        return (s.doctorName,
                s.doctorEmail,
                s.doctorContNum,
                s.doctorEducation,
                s.doctorLocalAddress
            );
    }
    
    function getPatientInfo(uint _pId) public view returns(string memory,
                                                           string memory,
                                                           uint, 
                                                           string memory,
                                                           uint) {
        Patient memory a = patientInfo[_pId];
    
        require(isRecordExist[_pId] == true &&(isPatientValid[msg.sender] == true || isDoctorValid[msg.sender] == true), "Only Patient/Doctor/ can see his/her information");
        return (a.patientName,
                a.patientEmail,
                a.patientContNum,
                a.patientLocalAddress,
                a.consultedDoctor
            );
    }
}
