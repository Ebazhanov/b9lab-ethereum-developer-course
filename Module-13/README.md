/* 

2 contracts

1) Regulator
2) TollBoothOperator

4 external accounts 

1) owner of Regulator
2) owner of TollBoothOperator
3) individual vehicles
4) individual toll booths

TollBoothOperator
-defines a base route price
-defines a multipler for each vehicle type (e.g. x2, x3)
ENTER
-when faced with a vehicle that wants to enter the road, toll booth confirms the
address of the vehicle
-if proper deposit is made and auto mentions the booth address(?),
the booth opens the gate
EXIT
-triggers the payment off the deposit and refunds the difference to the vehicle
-provides the address of the entry point when takes the deposit
-sends the "secret" to the TollBoothOperator contract to unlock the deposit, 
then pays the fee and refunds the vehicle
-c

Vehicles
-must be registered wwith regulator
-must be alllowed by operator to enter the road
-must make a deposit of the min amount (required for their vehicle type)
EXIT
-vehicle gives a "secret" to tollbooth




*/
