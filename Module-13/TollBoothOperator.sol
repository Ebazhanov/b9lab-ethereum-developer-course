pragma solidity >=0.4.25 <0.6.0;

import './Regulator.sol';
contract TollBoothOperator
//вторичный контракт
{
using SafeMath for uint256;

 address public TollBoothOwner;
 uint256 vehicleType0;
 uint256 vehicleType1;
 uint256 vehicleType2;
 uint256 vehicleType3;
// Если много vehicles, то как их указать?; 
// structs?
 uint256 tollbooth1;
 uint256 tollbooth2;
 uint356 basePrice;
 address public entryToll;
 address public exitToll; 
 
 uint256 basePrice;

 function defineBasePrice () {
 
// owner = msg.sender;
        }

function multiplier (uint256 basePrice, ) {

}