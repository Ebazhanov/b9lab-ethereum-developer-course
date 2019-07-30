pragma solidity >=0.4.25 <0.6.0;

import './Regulator.sol';
contract TollBoothOperator{
using SafeMath for uint256;

 address public TollBoothOwner;

 struct vehicles {
 uint256 vehicleType0;
 uint256 vehicleType1;
 uint256 vehicleType2;
 uint256 vehicleType3;
 }

 uint256 registered=1;
 //uint256 regulatorRegistration;
// uint256 operatorRegistration;


 uint256 entryBooth;
 uint256 exitBooth;

 uint256 basePrice=10;



constructor() internal {
TollBoothOwner= msg.sender;
 }
 
modifier onlyOwner() {
require(msg.sender == TollBoothOwner, "Only executable by owner");
        _;
   } 

}
function finalPrice(uint25 ...vehicleType) public  returns(uint) {

        if(vehicleType == vehicleType0 ) {
        return (basePrice ** 1);
        } 
        else if (vehicleType == vehicleType1) {
        return (basePrice ** 2); }
        else if (vehicleType == vehicleType2) {
        return (basePrice ** 3); }
        else  ( {
        return (basePrice ** 4); 
        }

    }
 
function registeredVehicle (uint registered) {
 
if (registered) == 1

   }

