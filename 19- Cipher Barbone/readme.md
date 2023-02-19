# Ciphers Barbone (structure)
basic of cryptography has been made thusands years ago in the Caves. if you have key, can decoding.

in this example you can test this in solidity.

### contract info

|  Contract  |         Type        |       Bases      |                  |                 |
|:----------:|:-------------------:|:----------------:|:----------------:|:---------------:|
|     └      |  **Function Name**  |  **Visibility**  |  **Mutability**  |  **Modifiers**  |
||||||
| **Cipher** | Implementation |  |||
| └ | compare | Internal 🔒 |   | |
| └ | _T | Internal 🔒 |   | |
| └ | T | Public ❗️ |   |NO❗️ |
| └ | isValid | Public ❗️ |   |NO❗️ |
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
| └ | <Constructor> | Public ❗️ | 🛑  |NO❗️ |
| └ | _design | Private 🔐 | 🛑  | |
| └ | _T | Internal 🔒 |   | |
| └ | concat | Internal 🔒 |   | |
| └ | _generate | Internal 🔒 |   | |
||||||
| **TestWord** | Implementation | Cipher |||
| └ | generate | Public ❗️ |   |NO❗️ |
| └ | table | Public ❗️ |   |NO❗️ |


 Legend

|  Symbol  |  Meaning  |
|:--------:|-----------|
|    🛑    | Function can modify state |
|    💵    | Function is payable |

### signature hash

| Sighash   |   Function Signature |
|  ---- | ---- | 
| 1f103c31  |  compare(bytes4,bytes4) | 
| f8ef05b5  |  _T(string) | 
| 76e0c274  |  T(string) | 
| 3f862d68  |  isValid(bytes4,string) | 
