## Random Number On-chain

Solidity **0.8.18** brought a new global variable - `block.prevrandao` <br />
The `prevrandao` value comes from the **Beacon chain randomess generator* called `RANDAO` <br />
there’s no official DAO behind the process. “Only” *Proof of Stake* validators.

```solidity
pragma solidity 0.8.18; // <-- Solidity 0.8.18 brought a new global variable - block.prevrandao. 
```
