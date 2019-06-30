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
