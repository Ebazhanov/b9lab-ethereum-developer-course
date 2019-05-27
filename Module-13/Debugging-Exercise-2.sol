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
