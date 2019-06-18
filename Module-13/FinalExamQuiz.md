##### Unit-13-Final-Quiz
80 POINTS POSSIBLE (GRADED)

Blockchain Theory
-----------------
*****************
This sections covers the underlying theory of how blockchain technology works. Questions with radio buttons have one answer, questions with checkboxes may have more than one correct answer.

#### 1.1. In the context of blockchain, what is the most fundamental definition of a transaction?
 - [ ] A transmission of a message between nodes
 - [x] An atomic event that is allowed by the underlying protocol
 - [ ] Exchange of a hash table between two peers
 
#### 1.2. In the context of a distributed ledger, how do you define blockchain? Which of the following statements are correct?
 - [x] As the ordered list of all transactions since inception
 - [x] As a well-ordered set of blocks
 - [ ] As a chain of transactions
 - [x] As a well-ordered set of data, on which all peers eventually agree.
 - [ ] As a shared real-time transaction network
 
#### 1.3. Thinking about traditional network and database architecture, what does a transaction do in a blockchain environment?
 - [ ] Update one table on one machine
 - [x] Update separate tables of accounts for the whole network
 
#### 1.4. In Blockchain, what is the truth?
 - [ ] The truth is what Vitalik Buterin says
 - [ ] The truth is what the developer community agrees on
 - [ ] The truth is what the biggest miner considers the truth
 - [x] The truth is the set of data that all participants eventually agree on
 
#### 1.5. What does a cryptographic hash function do?
 - [ ] It cracks a password challenge
 - [x] It converts an input, a.k.a. the message, into an output, a.k.a the hash
 
#### 1.6. Take the example of the KECCAK-256 hashing algorithm. Can the message easily be calculated from the hash with a normal desktop computer?
 - [ ] Yes
 - [x] No
 
#### 1.7. What is the difference between the KECCAK-256 hashes of "bird" and of "bard"?
 - [ ] One letter in the hash is different
 - [ ] At most 50% of the content differ
 - [x] The hashes differ fundamentally
 
#### 1.8. Are there two different messages that have the same SHA-512 hash value?
 - [ ] Yes, and the likelihood of finding two messages with the same hash value is quite high
 - [x] Yes, but the likelihood is extremely low, no example has been found yet
 - [ ] No, all hashes are unique
 
#### 1.9. Can hash functions be used to index messages?
 - [x] Yes, by mapping hashes to their messages
 - [ ] No, because hashes are not unique
 
#### 1.10. Can a hash be used to check that a message has not been changed?
 - [ ] No
 - [x] Yes
 
#### 1.11. Where is data stored in a Merkle Tree?
 - [x] In each node of the tree
 - [ ] In the leaves of the tree
 - [ ] In the root of the tree
 
#### 1.12. How is data collected from a Merkle tree?
 - [x] The tree is traversed depth-first and data is read from each leaf
 - [ ] The tree is traversed depth-first and data is read from every node
 - [ ] The data is extracted from the merkle root
 
#### 1.13. What is a node in a Merkle Tree?
 - [ ] A node contains the data of its parent nodes
 - [x] A node contains the hash of its children
 
#### 1.14. How is a gossip network defined?
 - [ ] A gossip network stores data on a central server accessible to a set of machines
 - [x] In a gossip network each node relays received data to its other peers
 
#### 1.15. What is the Byzantine General's Problem?
 - [ ] How to distribute data in a hierarchy-free, permission-less and failure-prone network
 - [x] How to reach consensus in a hierarchy-free, permission-less and failure-prone network
 - [ ] How to find peers in a hierarchy-free, permission-less and failure-prone network
 
#### 1.16. Does the Byzantine General's problem have an absolute solution?
 - [x] No, it can only be mitigated
 - [ ] Yes, it has been solved by the Byzantine General's Solution
 
#### 1.17. In the ethash Proof-of-Work consensus algorithms, what determines whether a block is valid?
 - [x] A hash calculation of a combination of merkle roots, block number, previous block hash, beneficiary address, timestamp and nonce has the right number of leading 0's
 - [ ] A hash calculation of a combination of merkle roots, block number, previous block hash, timestamp and nonce has the right number of leading 0's

#### 1.18. In the ethash and hashcash Proof-of-Work consensus algorithms, what is a nonce?
 - [ ] A random string that has never been used
 - [ ] The hash of the current timestamp used by the miner
 - [x] A one-time word that is varied by the miner to achieve different hashes

#### 1.19. In the ethash and hashcash Proof-of-Work consensus algorithms, what does the difficulty determine?
 - [x] The number of blocks a miner has to propose before the network accepts one
 - [ ] The number of leading zeros required in a block hash calculation required for a valid block
 - [ ] The time a transaction has to remain in the transaction pool

#### 1.20. What does the CAP theorem stand for?
 - [ ] Consistency, Affirmability, Partition
 - [ ] Christopher Antonopolous Programme
 - [x] Consistency, Availability, Partition tolerance
 
#### 1.21. For a malicious node to remove or insert transactions, it would need to update the root hash of the containing block's Merkle tree, update the nonce of the containing block, update the hash of the containing block and do the same for all subsequent blocks. Under what circumstances is that possible?
 - [ ] If the attacker issues at least 50% of all transactions
 - [x] If the attacker controls more than 50% of the mining power in a blockchain network
 
#### 1.22. What does a generic block header contain?
 - [ ] List of Transactions
 - [ ] State changes resulting from transactions
 - [x] Merkle Root of transactions
 - [x] Hash of previous block
 - [ ] Signatures of all senders of transactions
 
#### 1.23. Where is the Merkle root used in the context of blockchain?
 - [x] The genesis block
 - [x] The root hash of a Merkle tree containing all transactions in a block
 - [ ] The root hash of a Merkle tree of all previous blocks
 
#### 1.24. What can we use a Merkle Tree for?
 - [ ] Compress data by calculating the Merkle root
 - [x] Compare complex collections of data by comparing the Merkle root
 - [ ] Use the Merkle root to calculate the original dataset
 
#### 1.25. How does a hashtable, whose keys are hashed from the values, compare to a table whose content is indexed by arbitrary id? Select all correct statements.
 - [ ] a table indexed by arbitrary id is faster to read
 - [x] a table indexed by hash allows incorporation of checks for protection from error and malice, unlike one by arbitrary id
 - [ ] a table indexed by hash can grow much larger than one by arbitrary id
 - [x] a table indexed by arbitrary id can hold duplicate values, unlike one by hash
 
#### 1.26. What is the double-spend attack within Bitcoin?
 - [ ] the attacker sends 2 different transactions at the same time to the network, in order to send the same coin to 2 different recipients before the nodes can spot the fraud
 - [x] the attacker sends the coin to a recipient in exchange for a consideration, then waits to receive the consideration, then builds a fork that does not contain the previous transaction and that is still acceptable to the network
 - [ ] the attacker sends the coin to a recipient in exchange for a consideration, then waits to receive the consideration, then sends another transaction to cancel the first transaction

#### 1.27. Select all statements that are true for Proof-of-Work
 - [x] Any miner can propose new blocks
 - [ ] Potential miners must get approval by the network
 - [ ] More than one miner can find a correct block in the same time

#### 1.28. What is an uncle, a.k.a. ommer?
 - [ ] an uncle is a block that contains specific information that identifies it as an uncle
 - [ ] an uncle is a block that failed to be identified as the parent of another block
 - [x] an uncle is a block that is referenced by another one according to certain criteria

#### 1.29. What is the difficulty in a blockchain network?
 - [x] The difficulty determines how likely it is for a miner to find a valid block
 - [ ] The difficulty sets the fees a user has to pay for a transaction
 - [ ] The difficulty sets how difficult it is for clients to connect to the network

#### 1.30. Without thinking about specific implementations, select all statements that are sought after, or true, for desirable Proof-of-Stake algorithms
 - [ ] Anyone can propose new blocks
 - [ ] Miners with a stake in the network can propose blocks
 - [ ] More than one miner can find a correct block in the same time
 - [x] The hypothesis for PoS suggests that participants with a large stake are more trustworthy
 
Ethereum
--------
********
This section covers the Ethereum stack specifically. This includes some questions on how Ethereum works, on Solidity, Web3 and Go-ethereum. Questions with radio buttons have one answer, questions with checkboxes may have more than one correct answer.

#### 2.1. Select all statements that apply to the Ethereum public network
 - [ ] Ethereum utilises cryptoeconomic incentives
 - [ ] Account balances are hidden on Ethereum
 - [x] *When a group or individual controls a large majority of mining power, the integrity of past blocks is not necessarily compromised
 - [x] All you need to participate is a client and an internet connection
 - [ ] Blocks are approved by a central clearinghouse
*However their **finality** might be compromised.Possessing a majority of hashing power and enough time are necessary conditions for rollback (statistically), but not **sufficient**.

#### 2.2. How does Ethereum protect itself against infinite loops in EVM bytecode?
 - [x] Every computational step costs gas, a sub-currency of Ether
 - [ ] The EVM only allows 1024 computational steps per call
 - [ ] Solidity does not allow for infinite loops

#### 2.3. What happens if computational steps finish before all gas in a transaction is used up?
 - [x] The remaining gas is returned to the originator of the transaction
 - [ ] The remaining gas is transferred to the miner of the block
 - [ ] The remaining gas is destroyed

#### 2.4. What is the difference between a message and a transaction in Ethereum?
 - [ ] Messages and transactions are the same thing
 - [x] Messages are internal between contracts or accounts, transactions are messages and originate from an externally owned account
 - [ ] Transactions are internal between contracts or accounts, messages are transactions and originate from an externally owned account

SOLIDITY BASICS
---------------
***************
#### 3.1. In Solidity, what member of the address type returns the balance of the associated account?
 - [ ] address.amount
 - [x] address.balance
 
#### 3.2. Which data types are of fixed size?
 - [ ] uint
 - [x] uint128
 - [ ] bytes
 - [x] bytes32
 - [ ] string
 
#### 3.3. What is the correct syntax for inheriting from a contract?
Assume a contract named MetaCoin exists
 - [ ] `contract NewCoin => MetaCoin {}`
 - [x] `contract NewCoin is MetaCoin {}`
 - [ ] `contract NewCoin inherits MetaCoin {}`
 
#### 3.4. How do you attach value as part of a function call within Solidity
 - [x] `myContract.myFunction.value(1 ether)(arg1)`
 - [ ] `myContract.myFunction(arg1, {value: 1 ether})`
 
#### 3.5. In Solidity, how is Ether typically sent?
 - [ ] `transfer(address)`
 - [x] `address.transfer`
 
#### 3.6. In Solidity, how can a function call the fallback function of a remote contract instance, in the context of the remote contract instance?
 - [ ] `address.delegatecall("")`
 - [x] `address.call("")`
 - [ ] `address.send(123)`
 - [ ] `address.transfer(123)`
 
#### 3.7. In Solidity, which of the following are fixed array types?
 - [ ] `bytes`
 - [x] `bytes1`
 - [ ] `bytes32`
 
#### 3.8. What is the `struct` type?
 - [ ] Struct is an array type
 - [x] Struct is a reference type
 
#### 3.9. What is the correct syntax to declare an array of unsigned integers?
 - [ ] `uint numbers[];`
 - [ ] `array[uint] numbers;`
 - [x] `uint[] numbers;`
 
#### 3.10. What is the difference between an array stored in memory and an array stored in storage?
 - [ ] Arrays in memory are more limited in size
 - [x] Storage arrays cost more gas because storage operations increase the size of the state database
 
#### 3.11. What is the mapping type?
 - [ ] A mapping lets the developer collate disparate values
 - [x] A mapping acts like a table that can store or return a value when provided a key
 
#### 3.12. How can values be found in a mapping?
 - [ ] Iterate through the mapping and find the right value
 - [x] Values can only be found when knowing the key
 - [ ] Call `myMapping.contains(value)`
 
#### 3.13. What is the default visibility of state variables?
 - [ ] private: only the contract it is declared in can see it
 - [x]* internal: only the contract it is declared in and its child contracts can see it
 - [ ] public: all can access it
 *Functions are public by default
 
FUNCTIONS
---------
*********
#### 4.1. Which of the following function declarations is correct?
 - [ ] `function sendCoin(uint amount) adminOnly() internal external returns(bool decision) {}`
 - [ ] `function sendCoin {}`
 - [x] `function sendCoin(uint amount) adminOnly() internal returns(bool decision) {}`
 
#### 4.2. Which of these coding patterns is, or are, to be avoided?
 - [x] looping through an array of addresses to send value to each of the addresses
 - [ ] letting individual account owners call a refund function
 - [ ] sending value to an address, then flagging the transfer as done
 
#### 4.3. What is a `constant` function?
 - [ ] A function that cannot be changed
 - [x] A function that does not change the state of the blockchain
 - [ ] A function that returns the same value every time
 
#### 4.4. How can the timestamp of the current block be acquired?
 - [ ] `block.stamp`
 - [ ] `timestamp`
 - [x] `block.timestamp`
 
#### 4.5. What is the difference between `msg.sender` and `tx.origin`?
 - [ ] They are the same
 - [ ] `msg.sender` shows the originator of the current function call, `tx.origin` is the sender of the outermost transaction
 - [x] `tx.origin` shows the originator of the current function call, `msg.sender` is the sender of the outermost transaction
 
#### 4.6. What variable holds the value of the current message?
 - [ ] `tx.value`
 - [ ] `block.value`
 - [x] `msg.value`
 
#### 4.7. What effect does calling `revert()` have on code execution?
 - [x] it stops the execution of the transaction
 - [ ] it pauses the execution of the transaction
 
#### 4.8. When calling `revert()`, what happens to steps executed so far?
 - [ ] The state is preserved as per the time of revert()
 - [ ] The state is rolled back to before the last function call
 - [x] The state is rolled back to before the transaction
#### 4.9. As of Byzantium, when calling `revert()`, what happens to the gas included in the function call?
 - [x] All remaining gas is returned to the caller
 - [ ] All remaining gas is collected by the miner
 - [ ] All remaining gas is forever lost
 
#### 4.10. Under what circumstances can structs be returned from a function call?
 - [x] Struct types can only be returned on internal function calls, and publicly from v0.4.17, with the experimental ABI encoder.
 - [ ] Struct types can always be returned from function calls
 
#### 4.11. What is a function modifier?
 - [x] A code fragment that can be attached to functions
 - [ ] A piece of executable code that does not consume gas
 - [ ] A transaction that lets the owner change the code of a function
```javascript
 contract Purse {
    address owner;
    
    modifier onlyMe() {
        require(msg.sender == owner);
        _;
    }

    function pay(address whom, uint howMuch) 
        onlyMe()
        public returns (bool) {
        // ...
        }
    }
```
#### 4.12. In the example above, if `pay()` is called, when is the modifier `onlyMe()` executed?
 - [x] Before the function body of `pay()`
 - [ ] After the function body of `pay()`
 
#### 4.13. Select the correct syntax to declare a function modifier called `onlyAdmin`
 - [x] `modifier onlyAdmin { }`
 - [ ] `onlyAdmin modifier { }`
 - [ ] `modifier_onlyAdmin { }`
 
#### 4.14. How is the `onlyAdmin` modifier attached to a function?
 - [x] `function widthdraw() onlyAdmin() { }`
 - [ ] `function onlyAdmin withdraw() { }`
 - [ ] `modifier withdraw() onlyAdmin() { }`
 
#### 4.15. What is the default accessibility setting of a function?
 - [ ] Functions are hidden by default, which means they are not stored on the blockchain
 - [ ] Functions are public by default, which means they can be called from anywhere
 - [x] Functions are internal by default, which means they can be only be called internally
 
#### 4.16. What is the most detailed, and accurate, syntax to deploy a contract from within another contract. Assume a contract named `MetaCoin` has been imported
 - [ ] `address m = new MetaCoin();`
 - [ ] `MetaCoin m = new MetaCoin();`
 - [x] `Contract m = new MetaCoin();`
 
#### 4.17. What is the correct syntax for declaring a constant variable?
 - [x] `address constant m;`
 - [ ] `constant address m;`
 - [ ] `address m is constant;`
 
#### 4.18. What is the syntax for declaring the fallback function of a contract?
 - [ ] `fallback() constant {}`
 - [ ] `function _() {}`
 - [x] `function () {}`
 
#### 4.19. What happens when a transaction is sent to a contract without specifying a function to execute?
 - [ ] Nothing happens
 - [x] The fallback function is executed
 - [ ] The value of the transaction is sent back to the caller
 
#### 4.20. What happens when a transaction is sent to a contract specifying a function to execute that does not exist in the contract?
 - [ ] Nothing happens
 - [x] The fallback function is executed
 - [ ] The value of the transaction is sent back to the caller
 
#### 4.21. Using the Go-ethereum client, what two pieces of data are needed to start a new blockchain network other than the public network?
 - [x] a network id
 - [ ] an enode id
 - [ ] a blockchain key
 - [x] a genesis block file
 
#### 4.22. In Go-ethereum, how is a node identified?
 - [ ] Every running Geth is identifiable by a private key
 - [ ] Every running Geth is identifiable by a URL
 - [x] Every running Geth is identifiable by an enode id
 
CONTRACTS
---------
*********
#### 5.1. How is a new contract deployed on an Ethereum blockchain?
 - [ ] At least two specially crafted transaction are sent
 - [x] A single, specially crafted transaction is sent
 - [ ] Another contract is duplicated and overwritten
 
#### 5.2. How can a contract be identified?
 - [ ] A contract is uniquely identifiable by its name
 - [x] A contract is uniquely identifiable by its signature
 - [ ] A contract is uniquely identifiable by its immutable address
 
#### 5.3. Can the same contract code with the same name be deployed more than once on an Ethereum blockchain?
 - [ ] No, every contract can only be deployed once
 - [x] Yes, the unique identifier is the address, not the name
 - [ ] Yes, but only from another account
 
#### 5.4. In what form is a contract's code stored on the blockchain?
 - [ ] Solidity
 - [ ] Ethereum Java
 - [x] EVM Bytecode
 
#### 5.5. What is the ABI of a contract?
 - [x] The ABI describes the functions and fields of the contract
 - [ ] The ABI describes the bytecode of a contract
 - [ ] The ABI describes the local node client interface
 
#### 5.6. What is an event?
 - [ ] a function with a single parameter
 - [ ] what is sent when a function call failed
 - [x] a way for the contract to inform outsiders about the transaction processing status
 - [ ] a way to push data into the contract
 
#### 5.7. What is the correct syntax for defining an event?
 - [ ] function LogTrigger(address sender) event;
 - [x] event LogTrigger(address sender);
 - [ ] LogTrigger(address sender);
 
#### 5.8. What is the lifetime of an event?
 - [ ] 2016 blocks
 - [ ] Permanent, unless there is a fork reorganisation and it is on the discarded fork
 - [x] Permanent
 - [ ] User-defined
 
WEB3
----
- - - - 
#### 6.1. Select all correct web3.js v0.20.x calls that send a transaction to a non-constant (neither `view` nor `pure`) function called `sendCoin` in a contract named `MetaCoin`. Assume that `metacoin = web3.eth.contract(metacoinABI).at(metacoinAddress)` has been executed successfully.
 - [x] `metacoin.sendCoin.sendTransaction(web3.eth.accounts[1], {from: web3.eth.coinbase, gas: 60000});`
 - [ ] `metacoin.sendCoin(web3.eth.accounts[1], {from: web3.eth.coinbase, gas: 60000});`
 - [ ] `metacoin.sendCoin.call(web3.eth.accounts[1], {from: web3.eth.coinbase, gas: 60000});`
 
#### 6.2. Select all correct web3.js v0.20.x calls that call, without a transaction, a constant (`view` or `pure`) function called `getBalance` in a contract named MetaCoin. Assume that `metacoin = web3.eth.contract(metacoinABI).at(metacoinAddress)` has been executed successfully.
 - [ ] `metacoin.getBalance.sendTransaction(web3.eth.accounts[1], {from: web3.eth.coinbase, gas: 60000});`
 - [ ] `metacoin.getBalance(web3.eth.accounts[1], {from: web3.eth.coinbase, gas: 60000});`
 - [x] `metacoin.getBalance.call(web3.eth.accounts[1], {from: web3.eth.coinbase, gas: 60000});`
 
#### 6.3. Select all valid statements about libraries:
 - [ ] Libraries can store data
 - [ ] Libraries can define constant variables
 - [ ] When using library-defined structures, the data is stored in the calling contract
 - [x] Library functions can be called by contracts
 - [ ] Library functions can be called by other libraries
 - [x] Libraries must be deployed again for each new contract using them
