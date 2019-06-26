/***
* Exercise 2
*
* In this contract, a shop system processes a payment,
* sends the payment to a wallet contract and then instructs
* the warehouse to ship the purchase. What could go wrong?
*/

pragma solidity ^0.4.5;

interface WarehouseI {
    function setDeliveryAddress(string where);
    function ship(uint id, address customer) returns (bool handled);
}

contract Store {
    address wallet;
    WarehouseI warehouse;

    function Store(address _wallet, address _warehouse) {
        wallet = _wallet;
        warehouse = WarehouseI(_warehouse);
    }

    function purchase(uint id) returns (bool success) {
        wallet.send(msg.value);
        return warehouse.ship(id, msg.sender);
    }
}

**ANSWER**
We go by the following logic.

1.In interface all the functions do not have an implementation.
To do so we add "is" to "contract Store  WarehouseI" as seen below.

2. We modify functions in the interface: they have to be declared as public.

3.We modify interface and contract functions to make sure they both look identical (return statements).

4.public  becomes external after ^0.5.0



pragma solidity ^0.4.5;

interface WarehouseI {
    function setDeliveryAddress(string where) public view returns (bool);
    function ship(uint id, address customer)  public view returns (bool);
}

contract Store is WarehouseI {
    address wallet;
    WarehouseI warehouse;

    function Store(address _wallet, address _warehouse) {
        wallet = _wallet;
        warehouse = WarehouseI(_warehouse);
    }

    function purchase(uint id) returns (bool success) {
        wallet.send(msg.value);
        return warehouse.ship(id, msg.sender);
    }
    
    function setDeliveryAddress(string where) public returns (bool){
    return set;
        
    }
    
    function ship(uint id, address customer) public returns (bool) {
     return handled;   
    }
    
    
}
