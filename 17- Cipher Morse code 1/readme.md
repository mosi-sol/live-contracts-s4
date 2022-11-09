# Cipher series, Morse Code
- this is the **single Character** to **Morse-Code** 

### how to test
- character to morse: run this part of code
```solidity
contract Test is Cipher {
    function morse(string memory c) public pure returns (string memory cipher) {
        return char_to_morse_code(c);
    }
}
```

- morse to character: run this part of code
```solidity
contract Test is Cipher {
    function morse(string memory c) public pure returns (string memory cipher) {
        return morse_to_char(c);
    }
}
```

- Word Encode & Decode: example data
```json
["...","---","..."," ","...","---","..."]
["s","o","s"," ","s","o","s"]
```

**Enjoy it!**
