pragma solidity >=0.4.25 <0.6.0;
import "./SafeMath.sol";
import './ToolBoothOperator.sol';
import './FinalProject.sol;
import "./Vehicles.sol";


contract Regulator {

using SafeMath for uint256;

address[] public contracts;
address public regulatorOwner;
uint256 _isAllowed=1;

 
constructor() internal {
regulatorOwner = msg.sender;
 }
 
 modifier onlyOwner() {
 require(msg.sender == regulatorOwner, "Only executable by owner");
        _;
    }  
modifier isAllowed() {
require(_isAllowed[i] == 1, "Cars on the road must be allowed by the regulator");
        _;
   }  

 function setVehicleTypes () public  returns(uint) {

        if(vehicleType == vehicleType0 ) {
        return _fee1; 
        }  else if (vehicleType == vehicleType1) {
        return _fee2;
        }  else if (vehicleType == vehicleType2) {
        return _fee3;
        }  else {
        return _fee4;
        }

function TollBoothOperator() public
returns (address newContract)
{
	TollBoothOperator n = new TollBoothOperator();
	contracts.push(c);
	return c ;
}
}
 

}


