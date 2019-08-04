pragma solidity >=0.4.25 <0.6.0;

import './Regulator.sol';

/// @author Sergei Stadnik <sergeisqa@gmail.com>
/// @notice B9lab Certified Ethereum Developer Course


contract TollBoothOperator{

using SafeMath for uint256;//надо ли что то добавлять?

//@dev owner of the toll booth
address public TollBoothOwner;

//@dev struct for toll booth units
//надо ли делать несколько будок?

struct Results{
address TollBooth;
uint256 tollDeposit;
}
//порядок имеет значение?
//mapping дешевле, чем array
mapping (address => Results) public  balances;
bool tollAddressConfirmed=false;

//@dev checks the address of the toll booth by which cars enter
function checkTollAddress (address TollBooth, uint256 tollDeposit)  returns( bool addressConfirmed ) {
var check = balances[addressConfirmed];
balances.tollDeposit= tollDeposit;
}

//@dev entry and exit boothes
uint256 _entryBooth;
uint256 _exitBooth;


//@dev car is registered and allowed on the road
uint256 _registered=1;
bool _isAllowedOnRoad=false;

//@dev array for vehicle types
string[4] memory VehicleTypes [ "vehicleType0", "vehicleType1", "vehicleType2", "vehicleType4"];

//@dev deposits to enter/exit
uint256 _initialDeposit;
uint256 _deposit=1;
uint256 _openGate=false;

//@dev price calculation per vehicle type
uint256 _baseFee=10;
uint256 _fee1=(baseFee ** 1);
uint256 _fee2=(baseFee ** 2);
uint256 _fee3=(baseFee ** 3);
uint256 _fee4=(baseFee ** 4);

//@dev confirms initial owner
constructor() internal {
TollBoothOwner= msg.sender;
 }

//@dev only owner
modifier onlyOwner() {
require(msg.sender == TollBoothOwner, "Only executable by owner");
        _;
   } 
//@dev isRegistered
//нет ли повторений с линией 40
modifier isRegistered() {
require(_registered[i] == 1, "Only registered cars allowed on the road");
//он унаследует isAllowed?
        _;
   } 

modifier hasEntryTollAddress() {
require(//????????, "Only cars with exact entry toll address are allowed on  the road");
        _;
   } 


 //@dev  fee to use the road per vehicle type
function entryFeePErVehicle (uint256 ...VehicleTypes) public  returns(uint) {

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
//@dev checking existing car registration
// а не надо ли проверять не типы, а все существующие машины?
function checkRegistration (uint256 VehicleTypes) {
for (uint i = 0; i < VehicleTypes.length; i++)
VehicleTypes[i]==_registered;
}
//@dev check deposit to enter the road
//а не надо ли проверять не типы, а все существующие машины?
function checkEntryDeposit (uint256 VehicleTypes) {
for (uint i = 0; i < VehicleTypes.length; i++)
VehicleTypes[i]==_deposit; //=1?
}

//@dev deposit to be returned at exit
function exitToll (uint256 VehicleTypes) public return(uint) {
	if(vehicleType == vehicleType0 ) {
        return (initialDeposit-_fee1); 
        }  else if (vehicleType == vehicleType1) {
        return (initialDeposit-_fee2);
        }  else if (vehicleType == vehicleType2) {
        return (initialDeposit-_fee3);
        }  else {
        return (initialDeposit-_fee4);
        }

//??????    
//@dev conditions to exit toll gate
function  exitTollGate (uint256 _initialDeposit) public return() {
if (( _deposit ==1) && ( _tollAddressConfirmed=true))
return _openGate =true;
}
//надо заплатить оператору на выезде, можно ли включить в exitToll?????


//@dev only vehicles registered with regulator and allowed by operator are allowed to enter
function registeredWithRegulator() public return(bool) {
if ((_registered[i] == 1 && (_isAllowed[i] == 1))
	return (_isAllowedOnRoad=true);

}




}

	
}


{


}

	
}

}

}
        
    
 














  

