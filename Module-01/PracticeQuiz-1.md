
### 1. Choose all applicable properties of a Hash

 - [x] A hash is deterministic, in that, calculating it twice yields the same result /CORRRECT/
 - [ ] A small change in the original value yields a smaller change in the hash than a big change in the original value
 - [x] The probability of finding 2 different values that compute to the same hash is extremely low /CORRECT/

### 2. What can we use a Merkle Tree for?
 
 - [ ] Losslessly compress data by calculating the merkle root
 - [x] Compare complex collections of data by comparing the merkle root /CORRECT/
 - [ ] Use the merkle root to calculate the original data set
 
### 3. How would you go about collecting data from a Merkle tree?

 - [ ] Traverse only the nodes of the tree breadth first
 - [ ] Traverse the leaves of the tree breadth-first
 - [x] Traverse the leaves of the tree depth-first /CORRECT/
 
### 4. How does a key/value store where the key is the hash of the value compare to a "standard" key/value store whose content is accessible by arbitrary id? Select all correct answers.
 
 - [ ] a store indexed by arbitrary id is faster
 - [x] a store indexed by hash intrinsically protects me from error and malice, unlike one by arbitrary id /CORRECT ???/
 - [ ] a store indexed by hash can grow much larger than one by arbitrary id
 - [x] a store indexed by arbitrary id can hold duplicate values, unlike one by hash /CORRECT????/
 
### 5. What is the double-spend problem within Bitcoin?
 
 - [ ] someone sends 2 different transactions at the same time to the network, in order to send the same 
 coin to 2 different recipients before the nodes can spot the fraud /CORRECT/
 - [x] someone sends the coin to a recipient in exchange for a consideration, then waits to receive the consideration, 
 then it just so happens that the consensus switches to a fork that does not contain the previous transaction
 - [ ] someone sends the coin to a recipient in exchange for a consideration, then waits to receive the consideration, 
 then builds a fork that does not contain the previous transaction and that is acceptable to the network
 - [ ] the attacker sends the coin to a recipient in exchange for a consideration, then waits to receive the 
 consideration, then sends another transaction to cancel the first transaction
 
### 6. What is an uncle, a.k.a. ommer?
 
 - [ ] an uncle is a block that contains specific information that identifies it as an uncle
 - [ ] an uncle is a block that failed to be identified as the parent of another block /CORRECT ???/
 - [x] an uncle is a block that is referenced by another one according to certain criteria, except as a parent or a parent lineage.
