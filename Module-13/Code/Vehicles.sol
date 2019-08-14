// это фронтэнд!!!!
pragma solidity >=0.4.25 <0.6.0;

import "./SafeMath.sol";
import './ToolBoothOperator.sol';
import './Regulator.sol';
import "./FinalProject.sol";


contract Vehicles {

    using SafeMath for uint256;
    //надо добавлять?
    uint256 vehicleEntry;
    uint256 vehicleExit;

    mapping(address => uint256) balances;


    function getBalance() public view (uint256 what?) {
        returns balances[msg.sender];
    }

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }


contractAddress = "0x00.."
web3.eth.filter({
address: contractAddress
from : 1,
to : 'latest'
}).get(function (err, result) {
// callback code here
})

