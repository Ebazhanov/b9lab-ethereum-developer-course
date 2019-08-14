pragma solidity >=0.4.25 <0.6.0;

import "./SafeMath.sol";
import './ToolBoothOperator.sol';
import './FinalProject.sol';
import "./Vehicles.sol";
import "./SafeMath.sol";



contract Regulator {

using SafeMath for uint256;

    //@dev owner of regulator 
    address public regulatorOwner;

    address[] public contracts;

   


    constructor() internal {
        regulatorOwner = msg.sender;
    }
    //@dev only owner
    modifier onlyOwner() {
        require(msg.sender == regulatorOwner, "Only executable by owner");
        _;
    }
    

    function setVehicleTypes() public returns (uint) {

        if (vehicleType == vehicleType0) {
            return _fee1;
        } else if (vehicleType == vehicleType1) {
            return _fee2;
        } else if (vehicleType == vehicleType2) {
            return _fee3;
        } else {
            return _fee4;
        }
    }

    function TollBoothOperator() public returns (address newContract){
        TollBoothOperator n = new TollBoothOperator();
        contracts.push(c);
        return c;
    }
}


