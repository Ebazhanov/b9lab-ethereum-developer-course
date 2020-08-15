### 1. When I deploy a contract, its address is:

- [ ]  Random
- [ ]  Calculated from a hash of the bytecode
- [ ]  Calculated from a hash of my address
- [x]  Calculated from a hash of my address and the transaction nonce

```
EXPLANATION

See the Javascript calculation here.
```

 ### 2. When I deploy a contract, compared to the transaction data, the final contract bytecode is:

 - [x] Shorter
 - [ ] Identical
 - [ ] Longer

```
EXPLANATION

The transaction data also contains the constructor and the code to unpack.
```
### 3. What benefit do the ABI and Web3 contracts give?

- [ ] They compile Solidity code to the proper bytecode
- [x] They format transaction data to make Solidity compiled code behave as if it had functions
- [ ] They help us call Solidity functions
```
EXPLANATION

To call a Solidity function is an artefact, which is made possible by proper formatting of transaction data by Web3 and the ABI.
```

### 4. An Ethereum contract executes its code when:

- [x] a. It is the recipient of a transaction
- [ ] b. Its address is mentioned in a transaction
- [x] c. It receives a call
- [ ] d. Its address is mentioned in a call
- [ ] e. When its original deployer sends a transaction
- [x] f. When its original deployer sends a transaction to it

```
EXPLANATION

a, c and f.

A call is when the code is run outside of a transaction, like a dry run.

Contracts have no idea when their address is mentioned anywhere. After all, their address is just a series of bits, and there is no reason to assume that a bit-wise match necessarily refers to its address.

The account that deployed the contract can make other transactions without the deployed contract jumping on it when it is not the target of it.
```

### 5. When deploying a contract in a transaction, what is the recipient of the transaction?

- [ ] The blockchain central registry of contracts
- [ ] The owner of the contract
- [x] The recipient is absent

### 6. What are the dependencies?

- [x] Geth <-> RPC <-> Web3
- [ ] RPC <-> Geth <-> Web3
- [ ] RPC <-> Web3 <-> Geth
