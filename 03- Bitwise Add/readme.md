# Bitwise Add Method

simple use case for bitwise operator in real world programming.

Enjoy it!

### simple use by library [example]
```solidity
library BitAdd {
    function add(uint a, uint b) public pure returns (uint) {
        uint c;
        while(b != 0){
            c = a & b;
            a = a ^ b;
            b = c << 1;
        }
        return a;
    }
}

contract test {
    using BitAdd for uint;
    function adds(uint a, uint b) public pure returns (uint) {
        return a.add(b);
    }
}
```
