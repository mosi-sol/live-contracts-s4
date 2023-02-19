# Caesar Cipher

In cryptography, a Caesar cipher, also known as Caesar's cipher, the shift cipher, Caesar's code or Caesar shift, is one of the simplest and most widely known encryption techniques. 

It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. 

For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. 

The method is named after Julius Caesar, who used it in his private correspondence.

---

- data source

```js
input: ["-","h","i","-"] 
output-> bjkb
input: ["h","e","l","l","o"] 
output-> jgnnq
```

### contract info


|  Contract  |         Type        |       Bases      |                  |                 |
|:----------:|:-------------------:|:----------------:|:----------------:|:---------------:|
|     └      |  **Function Name**  |  **Visibility**  |  **Mutability**  |  **Modifiers**  |
||||||
| **Cipher** | Implementation |  |||
| └ | <Constructor> | Public ❗️ | 🛑  |NO❗️ |
| └ | _design | Private 🔐 | 🛑  | |
| └ | _T | Internal 🔒 |   | |
| └ | concat | Internal 🔒 |   | |
| └ | _generate | Internal 🔒 |   | |
||||||
| **TestWord** | Implementation | Cipher |||
| └ | generate | Public ❗️ |   |NO❗️ |
| └ | table | Public ❗️ |   |NO❗️ |
||||||
| **Cipher** | Implementation |  |||
| └ | compare | Internal 🔒 |   | |
| └ | morse_to_char | Internal 🔒 |   | |
| └ | char_to_morse | Internal 🔒 |   | |
| └ | hash | Internal 🔒 |   | |
| └ | dehash | Internal 🔒 |   | |
||||||
| **Test** | Implementation | Cipher |||
| └ | receiveMsg | Public ❗️ |   |NO❗️ |
| └ | sendMsg | Public ❗️ |   |NO❗️ |
||||||
| **TestWord** | Implementation | Cipher |||
| └ | concat | Internal 🔒 |   | |
| └ | morse | Public ❗️ |   |NO❗️ |
||||||
| **Cipher** | Implementation |  |||
| └ | compare | Internal 🔒 |   | |
| └ | char_to_morse_code | Internal 🔒 |   | |
||||||
| **Test** | Implementation | Cipher |||
| └ | morse | Public ❗️ |   |NO❗️ |
||||||
| **Cipher** | Implementation |  |||
| └ | <Constructor> | Public ❗️ | 🛑  |NO❗️ |
| └ | _design1 | Internal 🔒 | 🛑  | |
| └ | _design2 | Internal 🔒 | 🛑  | |
| └ | _T | Internal 🔒 |   | |
| └ | concat | Internal 🔒 |   | |
| └ | _generate | Internal 🔒 |   | |
| └ | _pattern_1 | Internal 🔒 | 🛑  | |
| └ | _pattern_2 | Internal 🔒 | 🛑  | |
||||||
| **TestWord** | Implementation | Cipher |||
| └ | unMerge | Public ❗️ |   |NO❗️ |
| └ | generate | Public ❗️ |   |NO❗️ |
| └ | table | Public ❗️ |   |NO❗️ |
| └ | pattern_1 | Public ❗️ | 🛑  |NO❗️ |
| └ | pattern_2 | Public ❗️ | 🛑  |NO❗️ |
||||||
| **Cipher** | Implementation |  |||
| └ | compare | Internal 🔒 |   | |
| └ | _T | Internal 🔒 |   | |
| └ | T | Public ❗️ |   |NO❗️ |
| └ | isValid | Public ❗️ |   |NO❗️ |


 Legend

|  Symbol  |  Meaning  |
|:--------:|-----------|
|    🛑    | Function can modify state |
|    💵    | Function is payable |

### signature hash

 | Sighash   |   Function Signature |
| ---- | ---- |
| 82faca74  |  _design() | 
| f8ef05b5  |  _T(string) | 
| 89c19ddb  |  concat(string,string) | 
| b7d84f1b  |  _generate(string[]) | 
| 1940649d  |  generate(string[]) | 
| 04ff4c43  |  table(string) | 
