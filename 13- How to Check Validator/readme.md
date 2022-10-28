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
