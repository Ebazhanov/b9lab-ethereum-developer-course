

### 1. Why is Solidity the currently preferred language?
  - [ ] There is no real reason.
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
  - [ ] a. bytes
  - [x] b. bytes1
  - [x] c. bytes8
  - [x] d. bytes32
  - [ ] e. bytes134
  - [ ] f. bytes256
  - [ ] g. bytes512
  
### 4. Preventing a wrap-around when manipulating large numbers. Here, add `uint a;` and `uint b;`
 - [x] Write the code for that, then check your answer with the explanation after you click Show Answer.

### 5. What can you use struct for?
 - [ ] Pack fixed size data together in storage.
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
 - [x] B
 - [ ] Storage is laid out differently although there is no difference in storage consumption.
 - [ ] There is no difference either in storage layout or in storage consumption.
 
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
- [x] A
- [ ] B
- [ ] Storage is laid out differently although there is no difference in storage consumption.
- [ ] There is no difference either in storage layout or in storage consumption.

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

- [x] A
- [ ] B
- [ ] Storage is laid out differently although there is no difference in storage consumption.
- [ ] There is no difference either in storage layout or in storage consumption.

### 9. How do I get the list of keys of a mapping named myMap?
- [x] myMap.getKeys().
- [ ] Mapping.keys(myMapp).
- [ ] myMap itself is an enumerable.
- [ ] There is no such thing.

### 10. Which types can be assigned memory or storage locations?
- [ ] None.
- [ ] Arrays only.
- [x] Arrays and structs only.
- [ ] Arrays, structs and mappings only.
- [ ] All.

### 11. Which of these statements are true when it comes to a mapping?
 - [ ] a. Overwriting an existing value always fails.
 - [x] b. Overwriting an existing value may fail.
 - [ ] c. Overwriting an existing value never fails.
 - [ ] d. Directly writing on the storage location of an existing value always fails.
 - [x] e. Directly writing on the storage location of an existing value may fail.
 - [ ] f. Directly writing on the storage location of an existing value never fails.
 - [ ] g. Reading an unset value always fails.
 - [x] h. Reading an unset value may fail.
 - [ ] i. Reading an unset value never fails.
 - [ ] j. Directly reading the storage location of an existing value always fails.
 - [x] k. Directly reading the storage location of an existing value may fail.
 - [ ] l. Directly reading the storage location of an existing value never fails.
 - [ ] m. Two different keys may point to the same location.
 - [x] n. Two different keys never point to the same location.
 
### 12. Make contract Child inherit from contract Parent:
 - [ ] contract Child : Parent {}
 - [x] contract Child is Parent {}
 - [ ] contract Child extends Parent {}
 - [ ] contract Child inherits Parent {}
 
### 13. Make contract Child's constructor call contract Parent's constructor
 - [ ] constructor(uint arg) Parent(arg) {}
 - [ ] constructor(uint arg) is Parent(arg) {}
 - [x] constructor(uint arg) : Parent(arg) {}
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

### 18. How can my function return more than one value?
  - [ ] a. function actOn() returns bool, uint {}
  - [x] b. function actOn() returns (bool, uint) {}
  - [ ] c. function actOn() returns bool success, uint count {}
  - [x] d. function actOn() returns (bool success, uint count) {}

### 19. Which functions return 1 and 2?
 - [x] a. function actOn() returns (uint, uint) { return 1, 2; }
 - [x] b. function actOn() returns (uint, uint) { return (1, 2); }
 - [ ] c. function actOn() returns (uint value1, uint) { return 1, 2; }
 - [ ] d. function actOn() returns (uint value1, uint) { return (1, 2); }
 - [x] e. function actOn() returns (uint value1, uint value2) { return 1, 2; }
 - [x] f. function actOn() returns (uint value1, uint value2) { return (1, 2); }
 - [ ] g. function actOn() returns (uint value1, uint) { value1 = 1; return 2; }
 - [ ] h. function actOn() returns (uint, uint value2) { value2 = 2; return 1; }
 - [x] i. function actOn() returns (uint value1, uint value2) { value1 = 1; value2 = 2; }

### 20. Which statements are correct?
 - [ ] a. When I call a function on the same contract while prefixing it with this. it is the same memory and stack.
 - [ ] b. When I call an internal function on the same contract without prefixing it with this. it is the same memory and stack.
 - [ ] c. When I call a public function on the same contract without prefixing it with this. it is the same memory and stack.
 - [ ] d. When I call an external function on the same contract without prefixing it with this. it is the same memory and stack.
 - [ ] e. When I call a public function not marked as external on another contract, it is the same memory and stack.
 - [ ] f. When I call a public function not marked as external on another contract, an internal transaction is created.

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
 - [ ] 2, 3, 1
 - [ ] 2, 1, 4
 - [ ] 2, 3, 4
 - [ ] 3, 1, 1
 - [ ] 3, 3, 1
 - [ ] 3, 1, 4
 - [ ] 3, 3, 4
 
### 23. Given the contract above, what will be the output of the test function if we call it with .call?
 - [ ] 1, 1, 1
 - [ ] 1, 3, 1
 - [ ] 1, 1, 4
 - [ ] 1, 3, 4
 - [ ] 2, 1, 1
 - [ ] 2, 3, 1
 - [ ] 2, 1, 4
 - [ ] 2, 3, 4
 - [ ] 3, 1, 1
 - [ ] 3, 3, 1
 - [ ] 3, 1, 4
 - [ ] 3, 3, 4
