# Bitwise Average Numbers
we have 2 number and need to know the average, the easy solution is `numa + numb / 2`. 

in this solution we have : `(numa & numb) + (numa ^ numb) / 2;`
- a = (numa & numb) 
- b = (numa ^ numb)
- avg = (a+b) / 2

this solution before solidity 0.8.x for overflow.

Enjoy it!
