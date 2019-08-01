pragma solidity >=0.4.25 <0.6.0;

import './Regulator.sol';

contract TollBoothOperator{
	
using SafeMath for uint256;

address public TollBoothOwner;



 //uint256 regulatorRegistration;
// uint256 operatorRegistration;

uint256 _entryBooth;
uint256 _exitBooth;

uint256 _basePrice=10;
uint256 _registered=1;

string[4] memory VehicleTypes [ "vehicleType0", "vehicleType1", "vehicleType2", "vehicleType4"];

uint256 _initialDeposit;
uint256 _deposit=1;


uint256 _fee1=(basePrice ** 1);
uint256 _fee2=(basePrice ** 2);
uint256 _fee3=(basePrice ** 3);
uint256 _fee4=(basePrice ** 4);


constructor() internal {
TollBoothOwner= msg.sender;
 }


 modifier onlyOwner() {
require(msg.sender == TollBoothOwner, "Only executable by owner");
        _;
   } 

modifier isRegistered() {
require(registered[i] == 1, "Only registered cars allowed on the road");
        _;
   } 

 
function finalPrice(uint256 ...VehicleTypes) public  returns(uint) {

        if(vehicleType == vehicleType0 ) {
        return _fee1; 
        }  else if (vehicleType == vehicleType1) {
        return _fee2;
        }  else if (vehicleType == vehicleType2) {
        return _fee3;
        }  else {
        return _fee4;
        }
}
function checkRegistration (uint256 VehicleTypes) {
for (uint i = 0; i < VehicleTypes.length; i++)
VehicleTypes[i]==_registered;
}

function entryDeposit (uint256 VehicleTypes) {
for (uint i = 0; i < VehicleTypes.length; i++)
VehicleTypes[i]==_deposit;
}


function returnDeposit (uint256 VehicleTypes) public return(uint) {
	if(vehicleType == vehicleType0 ) {
        return (initialDeposit-_fee1); 
        }  else if (vehicleType == vehicleType1) {
        return (initialDeposit-_fee2);
        }  else if (vehicleType == vehicleType2) {
        return (initialDeposit-_fee3);
        }  else {
        return (initialDeposit-_fee4);
        }

function enterToll (uint256 _initialDeposit)

	
}


{


}

	
}

}

}
        
    
 














  

