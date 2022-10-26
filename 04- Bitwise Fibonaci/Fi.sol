// SPDX-License-Identifier: MIT
pragma solidity 0.8;

contract Fi {
    
    function BitwiseFi(uint n) external pure returns(uint a) { 
        if (n == 0) return 0;   
        
        uint b = 1;
        uint c;
        uint mesh = n / 2; 
        uint mask = 1;

        while(mask <= mesh) mask <<= 1;

        mask >>= 1;
        a = 1;

        while(mask > 0) {
            c = a * a + b * b;          
            if (n & mask > 0) {
                b = b * (b + 2 * a);  
                a = c;                
            } else {
                a = a * (2 * b - a);  
                b = c;                
            }
            mask >>= 1;
        }
        
        return a;
    }

}
