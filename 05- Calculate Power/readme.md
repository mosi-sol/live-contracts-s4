# Calculate Power using recursion
the logic of Power in the simple function.

### short if explain
```solidity
powerNum != 0 ? result = baseNum * power(baseNum, powerNum - 1) : result = 1;
```
**same as:**
```solidity
if(powerNum != 0) {
  result = baseNum * power(baseNum, powerNum - 1);
} else {
  result = 1;
}
```

### normal solution
```solidity
function powerNormal(uint baseNum, uint powerNum) public pure returns (uint result) {
    result = baseNum ** powerNum;
}
```

enjoy!
