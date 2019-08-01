pragma solidity >=0.4.25 <0.6.0;
import "./SafeMath.sol";
import './ToolBoothOperator.sol';


contract Regulator {

using SafeMath for uint256;

address public regulatorOwner;
 
constructor() internal {
regulatorOwner = msg.sender;
 }
 
 modifier onlyOwner() {
 require(msg.sender == regulatorOwner, "Only executable by owner");
        _;
    }   

  //vehicles must be registered w/regulator
  // require(msg.sender)

function (bla bla bla) {
 
        }
}
