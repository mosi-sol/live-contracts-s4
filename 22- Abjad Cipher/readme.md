# ABJAD Ciphe Simulation

enjoy it!

```js
["s", "o", "s"] = 260 = to
["h", "e", "l", "l", "o"] = 133 =  slc
```

### Abjad cheat table
```js
a - 1
b - 2
c - 3
d - 4
e - 5
f - 6
g - 7
h - 8
i - 9
j - 10
k - 20
l - 30
m - 40
n - 50
o - 60
p - 70
q - 80
r - 90
s - 100
t - 200
u - 300
v - 400
w - 500
x - 600
y - 700
z - 800
```

---

### contract info

|  Contract  |         Type        |       Bases      |                  |                 |
|:----------:|:-------------------:|:----------------:|:----------------:|:---------------:|
|     └      |  **Function Name**  |  **Visibility**  |  **Mutability**  |  **Modifiers**  |
||||||
| **Cipher** | Implementation |  |||
| └ | <Constructor> | Public ❗️ | 🛑  |NO❗️ |
| └ | setup | Private 🔐 | 🛑  | |
| └ | _T | Internal 🔒 |   | |
| └ | _sum | Internal 🔒 |   | |
||||||
| **Test** | Implementation | Cipher |||
| └ | T | Public ❗️ |   |NO❗️ |
| └ | sum | Public ❗️ |   |NO❗️ |


 Legend

|  Symbol  |  Meaning  |
|:--------:|-----------|
|    🛑    | Function can modify state |
|    💵    | Function is payable |

 ---
 
 ### functions signature
 
| Sighash   |   Function Signature |
| ---- | ---- |
| ba0bba40  |  setup() |
| f8ef05b5  |  _T(string) |
| b1373adc  |  _sum(string[]) |
| 76e0c274  |  T(string) |
| 4b4b11bc  |  sum(string[]) |
 
 ---
 
 ### test in truffle
 
 ```js
 var Cipher = artifacts.require("f:\- WEB3 - minter dapp\GH-PAGE\mosi-sol blog\Audit\-contracts\live-contracts-s4\22- Abjad Cipher\Abjad.sol");

contract('Cipher', (accounts) => {
    var creatorAddress = accounts[0];
    var firstOwnerAddress = accounts[1];
    var secondOwnerAddress = accounts[2];
    var externalAddress = accounts[3];
    var unprivilegedAddress = accounts[4]
    /* create named accounts for contract roles */

    before(async () => {
        /* before tests */
    })
    
    beforeEach(async () => {
        /* before each context */
    })

    it('should revert if ...', () => {
        return Cipher.deployed()
            .then(instance => {
                return instance.publicOrExternalContractMethod(argument1, argument2, {from:externalAddress});
            })
            .then(result => {
                assert.fail();
            })
            .catch(error => {
                assert.notEqual(error.message, "assert.fail()", "Reason ...");
            });
        });

    context('testgroup - security tests - description...', () => {
        //deploy a new contract
        before(async () => {
            /* before tests */
            const newCipher =  await Cipher.new()
        })
        

        beforeEach(async () => {
            /* before each tests */
        })

        

        it('fails on initialize ...', async () => {
            return assertRevert(async () => {
                await newCipher.initialize()
            })
        })

        it('checks if method returns true', async () => {
            assert.isTrue(await newCipher.thisMethodShouldReturnTrue())
        })
    })
});

 ```
