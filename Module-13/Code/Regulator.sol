pragma solidity >=0.4.25 <0.6.0;
import "./SafeMath.sol";
import './ToolBoothOperator.sol';


contract Regulator {

using SafeMath for uint256;

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

  
 

}
