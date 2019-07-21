pragma solidity >=0.4.25 <0.6.0;

import './Regulator.sol';
contract TollBoothOperator{
using SafeMath for uint256;

 address public TollBoothOwner;

 uint256 vehicleType0;
 uint256 vehicleType1;
 uint256 vehicleType2;
 uint256 vehicleType3;

 
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
function finalPrice(uint256 vehicleType0,uint256 vehicleType1, uint256 vehicleType2, uint256 vehicleType3) public  returns(uint) {

        if(vehicleType0) {
        return (basePrice ** 1);
        } 
        else if (vehicleType1) {
        return (basePrice ** 2); 
        else if (vehicleType2) {
        return (basePrice ** 3); 
        else  ( {
        return (basePrice ** 4); 
        }
    }


//Пример
//function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-solidity/pull/522
       // if (a == 0) {
       //     return 0;
       // }
