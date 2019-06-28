/**
 *
 * Exercise 1
 *
 * In this contract, the specs are such that value that is sent by the owner is being stored
 * only if it is sent by the owner. It is returned in full when the contract is destroyed after the owner,
 * and only the owner, sends the password to the kill function.
 * This contract has already been deployed, so keep the pragma as it is.
 *
 * */

pragma solidity 0.4.19;

contract PiggyBank {
    address owner;
    uint248 balance;
    bytes32 hashedPassword;

    function piggyBank(bytes32 _hashedPassword) {
        owner = msg.sender;
        balance += uint248(msg.value);
        hashedPassword = _hashedPassword;
    }

    function () payable {
        if (msg.sender != owner) revert();
        balance += uint248(msg.value);
    }

    function kill(bytes32 password) {
        if (keccak256(owner, password) != hashedPassword) revert();
        selfdestruct(owner);
    }
}
 
 **ANSWER**:
 
 
1) no visibility specified.
Change to:  function piggyBank(bytes32 _hashedPassword) public {...}

2) msg.value used in non-payble function
Change to:  function piggyBank(bytes32 _hashedPassword) public payable {...}

3) no visiblity specified
Change to: function () public payable {...}

4) no visbility specified
Change to: function kill(bytes32 password) public {...}

5)add require statement to make sure only the creator of contract can interact
Change to: require( msg.sender == owner);

6)Function kill returns true in case of success and also requires only the creator of the contract to be the one wwho can initiate it


pragma solidity 0.4.19;

contract PiggyBank {
    address owner;
    uint248 balance;
    bytes32 hashedPassword;

    function  piggyBank(bytes32 _hashedPassword) public payable {
        require( msg.sender == owner);
        balance  += uint248(msg.value);
        hashedPassword = _hashedPassword;
    }

    function () public payable {
        if (msg.sender != owner) revert();
        balance += uint248(msg.value);
    }

    function kill() public returns (bool){
    require(msg.sender == owner);
    if (keccak256(owner, hashedPassword) != hashedPassword) revert();
    selfdestruct(owner);
    return true;
    }
}
