### 1. What is the point of Truffle?

 - [ ] I can control the versions of Solidity and Web3.
 - [x] It does many actions with a few commands.

### 2. How do I get out of Truffle console?

- [ ]  exit
- [x]  .exit
- [ ]  quit
- [ ] .quit

### 3. When I call truffle migrate --network xxx, xxx is:

 - [x] a string
 - [ ] a number

### 4. MetaCoin.deployed().then(instance => instance.address) resolves to:

- [ ]  the address at which MetaCoin was deployed.
- [ ]  the address at which MetaCoin was deployed given the network id I gave to Truffle.
- [x]  the address at which MetaCoin was deployed given the network id Truffle picked from the node.

```
EXPLANATION

Truffle automagically picks the network id on start. In fact, if you forgot to --rpcapi "net", then the network id is unknown.

```
### 5. If MyContract has the function function nameOfIt() view returns (bool) {}, what do I get with MyContract.deployed().then(instance => instance.nameOfIt.sendTransaction()) ?

- [ ]  A bool.
- [ ]  A transaction hash.
- [ ]  Nothing because I forgot the callback.
- [ ]  A promise that resolves to a bool.
- [x]  A promise that resolves to a transaction hash.
- [ ]  A promise that resolves to a composite object that contains a transaction hash.

```
EXPLANATION

A promise because it is an instance of truffle-contract. Something about a transaction because you asked for a transaction. The straight hash because you did it with .sendTransaction.
```
 ### 6. If MyContract has the function function nameOfIt() returns (bool) {}, what do I get with MyContract.deployed().then(instance => instance.contract.methods.nameOfIt().send()) ?

- [ ] A bool.
- [ ] A transaction hash.
- [ ] Nothing because I forgot the callback.
- [ ] A promise with a bool.
- [ ] A promise with a transaction hash.
- [x] A promise with a transaction receipt.
- [ ] A promise with a composite object that contains transaction hash and receipt.

```
EXPLANATION

A Promise because it was executed inside a promise. A transaction receipt because we called the function with .send() and it is the Web3 version of it, not the truffle-contract.

```

 ### 7. If MyContract has the function function nameOfIt() returns (bool) {}, what is the difference between (1) MyContract.deployed().then(instance => instance.nameOfIt()) and (2) MyContract.deployed().then(instance => instance.nameOfIt.sendTransaction()) ?

- [ ] They both yield right away.
- [ ] (1) yields right away, (2) yields when the transaction is mined.
- [x] (2) yields right away, (1) yields when the transaction is mined.
- [ ] They both yield when the transaction is mined.

### 8. What is the difference between a contract instance in Web3 and another in truffle-contract?

- [x] a. A truffle-contract instance wraps around a Web3 instance.
- [ ] b. A Web3 instance wraps around a truffle-contract instance.
- [ ] c. truffle-contract uses callbacks, Web3 uses Promises.
- [x] d. They both use uses Promises.

### 9. Can I send a transaction to a view function?

- [x] Yes
- [ ] No

### 10. If I want to see how a transaction would be packed I can do:

- [ ] myContractInstance.myFunction(arg1)
- [ ] myContractInstance.myFunction.encodeABI(arg1)
- [x] myContractInstance.contract.methods.myFunction(arg1).encodeABI()
- [ ] myContractInstance.myFunction.contract.methods.encodeABI(arg1)

### 11. Why use BN big numbers?

- [ ] No need to use them.
- [x] Work with large numbers without rounding errors.
- [ ] Throw off hackers.

### 12. What will happen with the code below:
```javascript
contract('MyContract', function(accounts) {
  it("should run", function () {
    let instance;
    MyContract.deployed()
    .then(_instance => {
      instance = _instance;
      return instance.doSomething();
    })
    .then(success => {
      assert.isTrue(success, "failed to do something");
      return instance.doSomethingElse.call();
    })
    .then(function (resultValue) {
      assert.equal(resultValue.toString(10), "3", "there should be exactly 3 things at this stage");
    });
  });
});
```

- [ ] It will fail on the first assert.
- [ ]  It will fail on the second assert.
- [ ]  It will always fail.
- [x]  It will always pass.
- [ ]  It will hang.

```
EXPLANATION

Because you did not return the whole promise chain, it will always pass. After the tests have passed, you may see some logs telling you the individual results of asserts. But that did not prevent the unit test from passing.
```

### 13. What will happen with the code below:
```javascript
contract('MyContract', function(accounts) {
  it("should run", function (done) {
    let instance;
    MyContract.deployed()
    .then(_instance => {
      instance = _instance;
      return instance.doSomething();
    })
    .then(function (txObject) {
      assert.isOk(txObject, "failed to do something");
      return instance.doSomethingElse.call();
    })
    .then(function (resultValue) {
      assert.equal(resultValue.toString(10), "3", "there should be exactly 3 things at this stage");
    })
    .catch(done);
  });
});
```

- [ ] It will fail on the first assert.
- [ ] It will fail on the second assert.
- [ ] It will always fail.
- [ ] It will always pass.
- [x] It will time out.
```
EXPLANATION

done() needs to be called after the second assert. Truffle is waiting for it, it never comes. So it times out.

```
 ### 14. Why would you truffle build --network somename?

- [ ] To get the proper addresses of my contracts into "development".
- [x] To have Truffle fail fast if the deployed Geth does not match.
- [ ] To have Truffle deploy on the correct network.

 ### 15. Migration files:

- [ ] Always deploy one contract per file.
- [ ] Typically deploy one contract per file.
- [x] Deploy as many contracts as are requested in the file.
