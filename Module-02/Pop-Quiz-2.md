### 1. Is Solidity
 - [ ] Interpreted
 - [x] Compiled
 
### 2. What do we call this piece: `{ from: eth.accounts[0], to: eth.accounts[1] }`
 - [x] The transaction parameters object
 - [ ] The transaction object
 - [ ] The transaction

### 3. Why do you always need a genesis file?
 - [ ] We need something on which to mine
 - [x] We can only believe the tip of the blockchain if it links all the way back to the agreed genesis
 - [ ] Those miners are out there to trick us
 
### 4. Which network ids should be avoided for a private network?
 - [ ] a. 1-2
 - [ ] b. 1-3
 - [x] c. 1-4
 - [x] d. I should keep on the lookout because things change

### 5. Nodes A and B have been mining on different forks and are now synchronising together. If A has been mining for longer than B, who wins? 
 - [ ] A
 - [x] It depends 
 - [ ] B
 
 ```
 EXPLANATION
    
    A may have mined for longer, but if its hash rate is lower than that of B, the difficulty of its fork will be lower, so less likely to win.
    
    On the other hand, if A's fork has more transactions, then it is more likely to win.
    
    Only the details fed into the protocol will be able to decide this case.
```
 
### 6. If nodes A and B want to ensure they are on the same network what test is the strongest?
 - [ ] A and B see the same balance on a given address
 - [x] A and B see 2 blocks (one with A, the other with B) with identical hashes at the same height
 - [ ] A and B see the same latest block number
 - [ ] A and B see 2 transactions (one with A, the other with B) with identical hashes

```
EXPLANATION
   
   An identical balance is an extremely weak test. Likewise for same block number.
   
   Because a transaction may, in certain circumstances, be replayed on another network, a transaction hash is not a proper test. See this example:
   
   ETH: https://etherscan.io/tx/0x27248ac19a3c209ce777a4e06e4cdcd0cd7ca6150e1a1b2d82efa535a6f1728e on block 1,922,096
   
   ETC: https://gastracker.io/tx/0x27248ac19a3c209ce777a4e06e4cdcd0cd7ca6150e1a1b2d82efa535a6f1728e on block 1,920,144
   
   Also, because a network may fork, the "block" test works best if you pick a block that was created after the fork.
```

### 7. How to figure out whether my transaction is mined?
 - [ ] a. My sending account has fewer Ethers
 - [ ] b. `eth.getTransaction(hash)` returns something
 - [x] c. `eth.getTransactionReceipt(hash)` returns something
 - [x] d. `eth.getTransaction(hash)`.blockNumber is not null
 - [ ] e. It is found in `txpool`
 
 ```
 EXPLANATION
    
    c and d.
    
    If your transaction is mined alongside another transaction that sent you Ether, your account may well have more Ether after mining.

```
 
### 8. What is the result of `PUSH1 0x10`, `PUSH1 0x05`, `PUSH1 0x04`, `MUL`, `ADD`:
 - [ ] `0x54`
 - [ ] `0x45`
 - [x] `0x24`
 
 ```
 EXPLANATION
    
    We have to look at the sequence of stack, in hexadecimal. Don't forget that 0x10 in hex is 16 in decimal:
    
    Empty -> 0: 0x10 -> 0: 0x05 -> 0: 0x04 -> 0: 0x14 -> 0: 0x24
                        1: 0x10    1: 0x05    1: 0x10
                                   2: 0x10
 ```
 
 https://www.calculator.net/hex-calculator.html?number1=04&c2op=x&number2=05&calctype=op&x=92&y=14
 <img src="https://monosnap.com/image/nz4TvVWPLcubRiacMouTHG7YJcUg8I.png">
 
### 9. Which actions are from gas-cheap to gas-expensive?
 - [x] Stack action < Memory action < Storage action
 - [ ] Memory action < Stack action < Storage action
 - [ ] Memory action < Storage action < Stack action
 - [ ] Storage action < Memory action < Stack action
