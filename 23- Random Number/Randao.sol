
pragma solidity 0.8.18; // <-- Solidity 0.8.18 brought a new global variable - block.prevrandao. 

contract RandomGen {
	function getRandomNftId() internal view returns (uint256) {
		return block.prevrandao;
	}
}

