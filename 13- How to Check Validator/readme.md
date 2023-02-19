# How to check block validator
- function `check` have 2 arguments.
- 1- block id
- 2- block generator account
- answer is a boolean

Enjoy it!

---

### step by step:
- deploy contract
- automaticly generate id 0 is/as genesis block
- run function `gen` by different accounts
- run function `review` by using generated id (0,1,2...) - this is just for test/watching the block hash
- run function `check` by id & account-address. if data current then answer is true, otherwise false.

---

### contract info

|  Contract  |         Type        |       Bases      |                  |                 |
|:----------:|:-------------------:|:----------------:|:----------------:|:---------------:|
|     └      |  **Function Name**  |  **Visibility**  |  **Mutability**  |  **Modifiers**  |
||||||
| **CheckBlock** | Implementation |  |||
| └ | <Constructor> | Public ❗️ | 🛑  |NO❗️ |
| └ | gen | Public ❗️ | 🛑  |NO❗️ |
| └ | _gen | Private 🔐 |   | |
| └ | review | Public ❗️ |   |NO❗️ |
| └ | check | Public ❗️ |   |NO❗️ |
||||||
| **AuctionNFT** | Implementation | Ownable, ReentrancyGuard |||
| └ | <Constructor> | Public ❗️ | 🛑  |NO❗️ |
| └ | startAuction | External ❗️ | 🛑  | onlyOwner |
| └ | bid | External ❗️ |  💵 |NO❗️ |
| └ | end | External ❗️ | 🛑  | onlyOwner |
| └ | _startAuction | Internal 🔒 | 🛑  | |
| └ | _bid | Internal 🔒 | 🛑  | |
| └ | _end | Internal 🔒 | 🛑  | |
| └ | withdraw | External ❗️ | 🛑  | nonReentrant |
| └ | onERC721Received | Public ❗️ | 🛑  |NO❗️ |
||||||
| **StakingRewards** | Implementation |  |||
| └ | <Constructor> | Public ❗️ | 🛑  |NO❗️ |
| └ | rewardPerToken | Public ❗️ |   |NO❗️ |
| └ | earned | Public ❗️ |   |NO❗️ |
| └ | stake | External ❗️ | 🛑  | updateReward |
| └ | withdraw | External ❗️ | 🛑  | updateReward |
| └ | getReward | External ❗️ | 🛑  | updateReward |
||||||
| **IERC20** | Interface |  |||
| └ | totalSupply | External ❗️ |   |NO❗️ |
| └ | balanceOf | External ❗️ |   |NO❗️ |
| └ | transfer | External ❗️ | 🛑  |NO❗️ |
| └ | allowance | External ❗️ |   |NO❗️ |
| └ | approve | External ❗️ | 🛑  |NO❗️ |
| └ | transferFrom | External ❗️ | 🛑  |NO❗️ |
||||||
| **IERC721** | Interface |  |||
| └ | balanceOf | External ❗️ |   |NO❗️ |
| └ | ownerOf | External ❗️ |   |NO❗️ |
| └ | safeTransferFrom | External ❗️ |  💵 |NO❗️ |
| └ | safeTransferFrom | External ❗️ |  💵 |NO❗️ |
| └ | transferFrom | External ❗️ |  💵 |NO❗️ |
| └ | approve | External ❗️ |  💵 |NO❗️ |
| └ | setApprovalForAll | External ❗️ | 🛑  |NO❗️ |
| └ | getApproved | External ❗️ |   |NO❗️ |
| └ | isApprovedForAll | External ❗️ |   |NO❗️ |
||||||
| **IERC165** | Interface |  |||
| └ | supportsInterface | External ❗️ |   |NO❗️ |
||||||
| **IERC721TokenReceiver** | Interface |  |||
| └ | onERC721Received | External ❗️ | 🛑  |NO❗️ |
||||||
| **IERC721Metadata** | Interface |  |||
| └ | name | External ❗️ |   |NO❗️ |
| └ | symbol | External ❗️ |   |NO❗️ |
| └ | tokenURI | External ❗️ |   |NO❗️ |
||||||
| **IERC721Enumerable** | Interface |  |||
| └ | totalSupply | External ❗️ |   |NO❗️ |
| └ | tokenByIndex | External ❗️ |   |NO❗️ |
| └ | tokenOfOwnerByIndex | External ❗️ |   |NO❗️ |
||||||
| **ICO** | Implementation | Ownable |||
| └ | <Constructor> | Public ❗️ | 🛑  |NO❗️ |
| └ | <Receive Ether> | External ❗️ |  💵 |NO❗️ |
| └ | release | Public ❗️ | 🛑  | onlyOwner |
| └ | setValue | Public ❗️ | 🛑  | onlyOwner |
| └ | claim | Public ❗️ |  💵 |NO❗️ |
| └ | targetIco | Public ❗️ | 🛑  | onlyOwner |
| └ | viewHolders | Public ❗️ |   |NO❗️ |
| └ | wd | Private 🔐 | 🛑  | |
||||||
| **BlockchainSimulation** | Implementation |  |||
| └ | <Constructor> | Public ❗️ | 🛑  |NO❗️ |
| └ | <Receive Ether> | External ❗️ |  💵 |NO❗️ |
| └ | _genesis | Internal 🔒 |   | |
| └ | getFee | Public ❗️ |   |NO❗️ |
| └ | getGenesis | Public ❗️ |   |NO❗️ |
| └ | getBlock | Public ❗️ |   |NO❗️ |
| └ | getOwnerById | Public ❗️ |   |NO❗️ |
| └ | getOwnerByAddress | Public ❗️ |   |NO❗️ |
| └ | _generate | Internal 🔒 | 🛑  | |
| └ | WD | Internal 🔒 | 🛑  | |
| └ | starting | Public ❗️ | 🛑  | onlyAdmin |
| └ | setFee | Public ❗️ | 🛑  | onlyAdmin |
| └ | claim | Public ❗️ |  💵 | isStart |


 Legend

|  Symbol  |  Meaning  |
|:--------:|-----------|
|    🛑    | Function can modify state |
|    💵    | Function is payable |

### signature hash 

| Sighash   |   Function Signature | 
| ---- | ---- | 
| b42dfa0d  |  gen() | 
| f4ff1f9f  |  _gen() | 
| e1e96c9b  |  review(uint256) | 
| 007f1f88  |  check(uint256,address) | 
