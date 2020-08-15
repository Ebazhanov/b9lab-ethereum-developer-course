pragma solidity >=0.4.25 <0.6.0;

import './Regulator.sol';
import './SafeMath.sol';
import './FinalProject.sol';

/// @author Sergei Stadnik <sergeisqa@gmail.com>
/// @notice B9lab Certified Ethereum Developer Course

contract TollBoothOperator {
    
    // how to implement safemath?
    using SafeMath for uint256;

    //@dev all tollbooths on the road
    struct Tollbooths {
    uint256 boothNumber;
    uint256 entryTollBooth;
    uint256 exitTollBooth;
    address boothAddress; 
    }

    //@dev all car types
    struct Cars {
    uint256 vin;
    uint256 vehicleType0;
    uint256 vehicleType1;
    uint256 vehicleType2;
    uint256 vehicleType3;
    uint256 isRegisteredByRegulator;
    uint256 isAllowedByOperator;
    uint256 isAllowedOnTheRoad=true;
    mapping (address => Tollbooths) public tollBooths;
    }
    
    uint256 public numCarsId = 0;
    mapping (address => Cars) public cars;

    uint256  basePrice = 10;

    uint256  fee1 = (basePrice ** 1);
    uint256  fee2 = (basePrice ** 2);
    uint256  fee3 = (basePrice ** 3);
    uint256  fee4 = (basePrice ** 4);

    

    //@dev owner of the toll booth
    address public TollBoothOwner;

    //@dev confirms initial owner
    constructor() internal {
        TollBoothOwner = msg.sender;
    }

    //@dev only owner
    modifier onlyOwner() {
        require(msg.sender == TollBoothOwner, "Only executable by owner");
        _;
    }
    
    modifier isAllowed() {
        require( cars[vin]isAllowedByOperator == 1, "Cars on the road must be allowed by the operator");
        _;
    }
  
    modifier isRegistered() {
        require( cars[vins]isRegisteredByRegulator == 1, "Cars on the road must be registered with regulator");
        _;
    }
    function checkCarRegistration(uint256 isRegisteredByRegulator, uint256 isAllowedByOperator) public view isRegistered isAllowed
    returns (unit256 carId) {  
    var registration = cars[numCarsId];
    registration.isRegisteredByRegulator = isRegisteredByRegulator;
    registration.isAllowedByOperator = isAllowedByOperator;
    numCarsId ++;
    carId = numCarsId;    
}
   

   /*function checkVehicleIsAllowed () returns(bool res) 
    // счётчик машин и создания уникального вина для каждой машины
    vin = ++numCars;
       address[] memory tollBooths = new address[]
       if vin [isAllowedByOperator] =1 || [isRegisteredByRegulator]=1
       isAllowedOnTheRoad = true;
       else
       isAllowedOnTheRoad = false;
    }
    */
    

    //TODO
    //@dev deposits to enter/exit
    uint256 _initialDeposit;
    uint256 _deposit = 1;
    uint256 _openGate = false;


    //TODO
    //@dev check deposit to enter the road
    function checkEntryDeposit(???) {
        for (uint i = 0; i < ???.length; i++)
            ????[i] == _deposit;
        
    }

    //TODO
    //@dev conditions to exit toll gate
    function  exitTollGate (uint256 ) public return () {
    if ((_deposit == 1) && (_tollAddressConfirmed= true))
    return _openGate = true;
    }



















