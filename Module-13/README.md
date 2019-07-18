
2 contracts:

1.Regulator

2.TollBoothOperator

**Regulator**

-keeps track of vehicle types
-deploy new TollBoothOperator
-collects no fees
-type of `0` means unregistered vehicle
-assign `type` 1 for motorbikes, 2 for cars and 3 for trucks
-the latest `type` is the valid type, even if regulator changed it

**TollBoothOperator**

-can be paused / resumed to pause the vehicle-facing operations. // is Pausable
-keeps track of the regulator.
-keeps track of the base deposit.
-keeps track of the multipliers of vehicle types.
-keeps track of the toll booths.
-keeps track of the route base prices.
-accepts deposits from vehicles.
-accepts exit calls from toll booths.
-accepts messages to clear the exit backlog.
-lets vehicles withdraw their refunds.
-lets the owner of the vehicle withdraw the collected fees.

4 external accounts 

1. owner of `Regulator`
2. owner of `TollBoothOperator`
3. individual vehicles
4. individual toll booths

**Owner of Regulator**

-updates the vehicle type
-deploys new TollboothOperators
-unregisters TollBoothOperator

**Owner of TollBoothOperator**

-updates the base deposit
-update the base price of routes
-updates the multiplier for all vehicles
-withdraw collection fees

If a vehicle just completed a route for which there is a base price of 0, the TollBoothOperator owner should put a price to the route before anyone can unlock the deposit.

If a vehicle type has a multiplier of 0, then the road system will not let vehicles of this type enter. It will let them exit.


**TollBoothOperator**

-defines a base route price
-defines a multipler for each vehicle type 

**Toll**

ENTER

-when faced with a vehicle that wants to enter the road, toll booth confirms the
address of the vehicle

-if proper deposit is made and auto mentions the  entry booth address,
the booth opens the gate

EXIT

-triggers the payment off the deposit and refunds the difference to the vehicle

-provides the address of the entry point when takes the deposit

-sends the "secret" to the TollBoothOperator contract to unlock the deposit, 

 then pays the fee and refunds the vehicle



**Vehicles**

-must be registered wwith regulator

-must be alllowed by operator to enter the road

-must make a deposit of the min amount (required for their vehicle type)

EXIT

-vehicle gives a "secret" to tollbooth
 
 
**For simplicity**
 
-One booth may have as many gates as there are lanes on the road.
-Base route price of 0 denotes an absence of information.
-Multiplier of 0 denotes an unauthorised vehicle type on the road system.
-The entry and exit booths of a route cannot be the same address.
-TollBoothOperator has total control over the deposit, the base route prices, and the multipliers.
-Latest route base price is the valid route base price, even if the toll booth operator changed the price after the vehicle entered the road system.

**Charging system**

-before entering the system, the vehicle deposits the required amount into the TollBoothOperator, and passes along the address of the entry booth and a unique hashed secret of its own choice. The vehicle keeps the secret until the end of the trip.

-when faced with the entry toll booth it mentioned when depositing, it proves its identity off-chain (we talk about this identity proof but you need not implement it), after which the booth opens the gate.

-when exiting the road system at a booth, the vehicle gives the exit toll booth its unhashed secret off-chain. Again, we talk about this off-chain exchange but you do not need to implement it.

-the exit toll booth then submits this secret to the TollBoothOperator, which unlocks the deposit for payment and refund of the difference, if applicable.

-if the fee is equal to or higher than the deposit, then the whole deposit is used and no more is asked of the vehicle, now or before any future trip.

-if the fee is smaller than the deposit, then the difference is returned to the vehicle.

-if the fee is not known at the time of exit, i.e. if the fee is 0, the pending payment is recorded, and one "base route price required" event is emitted, and listened to by the operator's oracle.

-when the oracle receives a new base route price request, it submits the base fee, which also clears one pending payment.
- if there are more than 1 pending payments on a given route, an additional function is there to progressively clear the backlog a set number of pending payments of said route at a time in a FIFO manner.

-If both vehicleA and vehicleB entered at the same booths and exited at the same booths, then if vehicleA exited before vehicleB, then vehicleA should pop from the FIFO ahead of vehicleB.

-the vehicle type and multiplier to be used are those at the time of entry.





