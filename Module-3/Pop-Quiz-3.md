### 1. Why is Solidity the currently preferred language?
  - [x] There is no real reason.
  - [x] It is well supported.
  - [x] It is better than the alternatives.
  
### 2. Which of these are valid types in Solidity?
  - [x] a. uint
  - [ ] b. uint1
  - [x] c. uint8
  - [x] d. uint32
  - [ ] e. uint134
  - [x] f. uint256
  - [ ] g. uint512
  
### 3. Which of these are valid types in Solidity?
  - [x] a. bytes
  - [x] b. bytes1
  - [x] c. bytes8
  - [x] d. bytes32
  - [ ] e. bytes134
  - [x] f. bytes256
  - [ ] g. bytes512
  
### 4. Preventing a wrap-around when manipulating large numbers. Here, add `uint a;` and `uint b;`
 - [x] Write the code for that, then check your answer with the explanation after you click Show Answer.

*Use SAFEMATH library*
```
function add(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    assert(c >= a);
    return c;
  }
```

### 5. What can you use struct for?
 - [x] Pack fixed size data together in storage.
 - [x] Conceptually organise data.
 - [x] Express the developer's intent.
 
### 6. Which one consumes more space?
A:

```struct Student {
	uint age;
	bytes32 name;
}
mapping (bytes32 => Student) students;
```
B:

```
mapping (bytes32 => uint) studentAges;
mapping (bytes32 => bytes32) studentNames;
``` 
 - [ ] A
 - [ ] B
 - [x] Storage is laid out differently although there is no difference in storage consumption.
 - [ ] There is no difference either in storage layout or in storage consumption.
 
 ```
EXPLANATION

The location of a mapped value is calculated from the key at read or write. 
The key is not saved. Think of a mapping as 2 functions, one that sets and 
the other that gets from the storage in a pseudo-random fashion.
```
 
### 7. Which one consumes more space?
A:

```
struct Student {
	uint8 age;
	bytes31 name;
}
mapping (bytes32 => Student) students;
```
```B:

mapping (bytes32 => uint8) studentAges;
mapping (bytes32 => bytes31) studentNames;
```
- [ ] A
- [x] B
- [ ] Storage is laid out differently although there is no difference in storage consumption.
- [ ] There is no difference either in storage layout or in storage consumption.


```
EXPLANATION

See the previous explanation first. The difference here is that a struct is packed tightly.
 It just happens that 1 uint8 and 1 bytes31 can fit side by side in a single 32-byte-long storage slot. In B's case, each value is placed in an unrelated location.

```
### 8. Which one consumes more space?
A:
```struct Student {
	uint8 age;
	bytes31 name;
}
Student alice;
```
B:
```
uint8 ageAlice;
bytes31 nameAlice;
```

- [ ] A
- [ ] B
- [ ] Storage is laid out differently although there is no difference in storage consumption.
- [x] There is no difference either in storage layout or in storage consumption.

```
EXPLANATION

See the previous 2 explanations first. Here, everything is packed tightly in slot 0, 
with the age in the 8 lower bits and the name in the 248 upper bits.
```

### 9. How do I get the list of keys of a mapping named myMap?
- [ ] myMap.getKeys().
- [ ] Mapping.keys(myMapp).
- [ ] myMap itself is an enumerable.
- [x] There is no such thing.

```
EXPLANATION

The location of a mapped value is calculated from the key at read or write. The key is not saved.

```

### 10. Which types can be assigned memory or storage locations?
- [ ] None.
- [ ] Arrays only.
- [x] Arrays and structs only.
- [ ] Arrays, structs and mappings only.
- [ ] All.

### 11. Which of these statements are true when it comes to a mapping?
 - [ ] a. Overwriting an existing value always fails.
 - [ ] b. Overwriting an existing value may fail.
 - [x] c. Overwriting an existing value never fails.
 - [ ] d. Directly writing on the storage location of an existing value always fails.
 - [ ] e. Directly writing on the storage location of an existing value may fail.
 - [x] f. Directly writing on the storage location of an existing value never fails.
 - [ ] g. Reading an unset value always fails.
 - [ ] h. Reading an unset value may fail.
 - [x] i. Reading an unset value never fails.
 - [ ] j. Directly reading the storage location of an existing value always fails.
 - [ ] k. Directly reading the storage location of an existing value may fail.
 - [x] l. Directly reading the storage location of an existing value never fails.
 - [x] m. Two different keys may point to the same location.
 - [ ] n. Two different keys never point to the same location.
 
 ```
 EXPLANATION
 
 Read / Write never fails. It means it may overwrite or read rubbish. 
 Because of the key hashing mechanism, you may have collisions.
 ```
 
 
### 12. Make contract Child inherit from contract Parent:
 - [ ] contract Child : Parent {}
 - [x] contract Child is Parent {}
 - [ ] contract Child extends Parent {}
 - [ ] contract Child inherits Parent {}
 
### 13. Make contract Child's constructor call contract Parent's constructor
 - [x] constructor(uint arg) Parent(arg) {}
 - [ ] constructor(uint arg) is Parent(arg) {}
 - [ ] constructor(uint arg) : Parent(arg) {}
 - [ ] constructor(uint arg) { Parent(arg); }
 
### 14. With the following contracts, when you deploy Child, what is the value of a?
```
contract Parent {
    uint a;
    constructor() {
        a = 1;
    }
}
contract Child is Parent {
    constructor() {
        a++;
    }
}
```
 - [ ] You cannot deploy.
 - [ ] 0
 - [ ] 1
 - [x] 2
 
### 15. With the following contracts, when you deploy Child with value , what is the value of a?
```
contract Parent {
    uint a;
    constructor(uint initial) {
        a = initial;
    }
}
contract Child is Parent {
    constructor(uint initial) {
        a++;
    }
}
```
 - [x] You cannot deploy.
 - [ ] 0
 - [ ] 1
 - [ ] 2
 
 ```
 EXPLANATION
 
 When the parent constructor takes arguments, it has to be called explicitly. So here, the compiler cannot create a bytecode for Child. Changing Child's constructor to constructor(uint initial) Parent(initial) { fixes it.
 
 ```
 
### 16. Make contract Child override contract Parent's function named actOn() and call the parent one:
  - [x] a. function actOn() { super.actOn(); }
  - [x] b. function actOn() { Parent.actOn(); }
  - [ ] c. function actOn() { parent.actOn(); }
  - [ ] d. function actOn() : actOn {}
  
### 17. What does revert do?
  - [ ] It interrupts execution.
  - [ ] It interrupts the current execution scope.
  - [x] It stops and rolls back the current transaction it is in, only.
  - [ ] It stops and rolls back the current transaction and all transactions up to the main transaction.

```
EXPLANATION

It is the responsibility of the internal transaction creator to check whether the execution went ok, and to revert or not in order to cancel the outer transaction.

In particular:

1. If you call another contract with otherContract.actOn(), then the compiler will propagate the throw.
2. If you call another contract with otherAddress.call(bytes4(sha3("function actOn()"))), then it is your responsibility to check the bool return value and act accordingly.
```


### 18. How can my function return more than one value?
  - [ ] a. function actOn() returns bool, uint {}
  - [x] b. function actOn() returns (bool, uint) {}
  - [ ] c. function actOn() returns bool success, uint count {}
  - [x] d. function actOn() returns (bool success, uint count) {}

### 19. Which functions return 1 and 2?
 - [ ] a. function actOn() returns (uint, uint) { return 1, 2; }
 - [x] b. function actOn() returns (uint, uint) { return (1, 2); }
 - [ ] c. function actOn() returns (uint value1, uint) { return 1, 2; }
 - [x] d. function actOn() returns (uint value1, uint) { return (1, 2); }
 - [ ] e. function actOn() returns (uint value1, uint value2) { return 1, 2; }
 - [x] f. function actOn() returns (uint value1, uint value2) { return (1, 2); }
 - [ ] g. function actOn() returns (uint value1, uint) { value1 = 1; return 2; }
 - [ ] h. function actOn() returns (uint, uint value2) { value2 = 2; return 1; }
 - [x] i. function actOn() returns (uint value1, uint value2) { value1 = 1; value2 = 2; }

### 20. Which statements are correct?
 - [ ] a. When I call a function on the same contract while prefixing it with this. it is the same memory and stack.
 - [x] b. When I call an internal function on the same contract without prefixing it with this. it is the same memory and stack.
 - [x] c. When I call a public function on the same contract without prefixing it with this. it is the same memory and stack.
 - [ ] d. When I call an external function on the same contract without prefixing it with this. it is the same memory and stack.
 - [ ] e. When I call a public function not marked as external on another contract, it is the same memory and stack.
 - [x] f. When I call a public function not marked as external on another contract, an internal transaction is created.

```
EXPLANATION

b, c and f.

Prefixing a public function with this. makes it behave like an external function, i.e., 
it generates an internal transaction. You cannot prefix a function with this., unless it is public. In all other cases, you are in the same memory and stack.

```

### 21. Given this contract, what is the value of a after deployment?
```
contract NotEasyToFindAnExpressiveName {
    uint a;
    function notEasyToFindAnExpressiveName() {
        a++;
    }
}
```
 - [ ] You cannot deploy.
 - [ ] null
 - [x] 0
 - [ ] 1
 - [ ] 2
 
```
EXPLANATION

function notEasyToFindAnExpressiveName looks like the constructor, 
but because of a typo, it only looks like it. In fact, the compiler parsed it as a regular function. Because it is not the constructor, it is not called on deployment. Thus a remains unset. Unset storage values are 0
```
 
### 22. Given the below contract, what will be the output of the test function?
```
pragma solidity ^0.4.17;
contract Alpha {
    struct Beta {
        uint test;
    }
    Beta public beta;
    function test()
        public
        returns (uint betaStor, uint betaMem, uint simple) {
        beta.test = 1;
        storageSet(beta);
        set(beta);        
        Beta memory intMem = beta;
        set(intMem);
        uint testInt = 1;
        setInt(testInt);
        return (beta.test, intMem.test, testInt);
    }
    function storageSet(Beta storage d)
        internal {
        d.test = 2;
    }
    function set(Beta d)
        internal
        pure {
        d.test = 3;
    }
    function setInt(uint i)
        internal
        pure {
        i = 4;
    }
}
```
 - [ ] 1, 1, 1
 - [ ] 1, 3, 1
 - [ ] 1, 1, 4
 - [ ] 1, 3, 4
 - [ ] 2, 1, 1
 - [x] 2, 3, 1
 - [ ] 2, 1, 4
 - [ ] 2, 3, 4
 - [ ] 3, 1, 1
 - [ ] 3, 3, 1
 - [ ] 3, 1, 4
 - [ ] 3, 3, 4
 
```
EXPLANATION

Function storageSet's input is a storage reference, so when you make an update to it, it updates the storage. It is a reference because this is a struct. It would not work with a uint.

Function Set's input is a memory object, so when you pass it a storage object, it will first make a memory copy of it, then when you update the memory copy, it leaves the original storage object intact.

This explains why betaStor == 2.

Function Set's input is a memory object, so when you pass it a memory object internally, it will pass a reference to the memory object. So if you make a change to it, you update the original memory object.

This explains why betaMem == 3.

Function setInt's input is never a reference because it is a uint. So changing it has no effect on the original.

This explains why testInt == 1.

To confirm in Remix, click on the "Details" button after your transaction, and look for "decoded output".
```
 
### 23. Given the contract above, what will be the output of the test function if we call it with .call?
 - [ ] 1, 1, 1
 - [ ] 1, 3, 1
 - [ ] 1, 1, 4
 - [ ] 1, 3, 4
 - [ ] 2, 1, 1
 - [x] 2, 3, 1
 - [ ] 2, 1, 4
 - [ ] 2, 3, 4
 - [ ] 3, 1, 1
 - [ ] 3, 3, 1
 - [ ] 3, 1, 4
 - [ ] 3, 3, 4

```
EXPLANATION

.call runs a full simulation so you obtain the same result. Except that the outcome was not saved for real.

```
