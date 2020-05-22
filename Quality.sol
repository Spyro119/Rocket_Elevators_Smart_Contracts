pragma solidity >=0.4.22 <0.7.0;
// TODO : 
// Quality, Security and Homologation
// Une solution, avant d’être déployée et mise en opération, se doit d’être testée pour sa qualité:
// Garantie que le Test des portes est passé
// Garantie que le Test de câbles est passé
// Garantie que le Test des freins est passé
// Obtention du permis d’opération de la batterie
// Certificat de conformité pour chaque colonne

contract Quality {
    bool isDoorsOk;
    bool isCablesOk;
    bool isBrakesOk;
    bool license;
    address owner;
    uint columnNumber;
    uint certificateId;
    uint[] certificateIdList;
    
    // mapping (address => uint) public users;
    
    function setDoorsStatus(bool status) external {
        // status = true;
        isDoorsOk = status;
    }
    
    function setCablesStatus(bool status) external {
        // status = true;
         isCablesOk = status;
    }
    
    function setBrakesStatus(bool status) external {
        // status = true;
         isBrakesOk = status;
    }
    
    function setLicenseStatus(bool status) external {
        license = status;
    }
    
    function getStatus() public view returns (bool, bool, bool, bool) {

        return (isBrakesOk, isCablesOk, isDoorsOk, license);
    }
    
    function setColumnNumber(uint number) external {
       
        columnNumber = number;
    }
    function setColumnCertificateId() external {
        delete certificateIdList;
        for(uint i = 0; i < columnNumber; i++){
             certificateId++;
            certificateIdList.push(certificateId);
         }
    }
    
    function getColumnCertificateId() view external returns (uint [] memory) {
        return certificateIdList;
    }
    
}