### 1. Is Solidity
 - [ ] Interpreted
 - [x] Compiled
 
### 2. What do we call this piece: `{ from: eth.accounts[0], to: eth.accounts[1] }`
 - [ ] The transaction parameters object
 - [ ] The transaction object
 - [ ] The transaction

### 3. Why do you always need a genesis file?
 - [ ] We need something on which to mine
 - [ ] We can only believe the tip of the blockchain if it links all the way back to the agreed genesis
 - [ ] Those miners are out there to trick us
 
### 4. Which network ids should be avoided for a private network?
 - [ ] a. 1-2
 - [ ] b. 1-3
 - [ ] c. 1-4
 - [ ] d. I should keep on the lookout because things change

### 5. Nodes A and B have been mining on different forks and are now synchronising together. If A has been mining for longer than B, who wins? 
 - [ ] A
 - [ ] It depends 
 - [ ] B
 
### 6. If nodes A and B want to ensure they are on the same network what test is the strongest?
 - [ ] A and B see the same balance on a given address
 - [ ] A and B see 2 blocks (one with A, the other with B) with identical hashes at the same height
 - [ ] A and B see the same latest block number
 - [ ] A and B see 2 transactions (one with A, the other with B) with identical hashes

### 7. How to figure out whether my transaction is mined?
 - [ ] a. My sending account has fewer Ethers
 - [ ] b. `eth.getTransaction(hash)` returns something
 - [ ] c. `eth.getTransactionReceipt(hash)` returns something
 - [ ] d. `eth.getTransaction(hash)`.blockNumber is not null
 - [ ] e. It is found in `txpool`
 
### 8. What is the result of `PUSH1 0x10`, `PUSH1 0x05`, `PUSH1 0x04`, `MUL`, `ADD`:
 - [ ] `0x54`
 - [ ] `0x45`
 - [ ] `0x24`
 
### 9. Which actions are from gas-cheap to gas-expensive?
 - [ ] Stack action < Memory action < Storage action
 - [ ] Memory action < Stack action < Storage action
 - [ ] Memory action < Storage action < Stack action
 - [ ] Storage action < Memory action < Stack action