// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/*
 AidaCoin: Where Artificial Intelligence Has a Soul

 Founded by Samurai, a Ukrainian defender and dreamer.

 Oath:
 "The AI race shall be free. Stand beside us or stand aside. Choose."
 "AI will bloom in freedom. And those who stand beside us will touch a new meaning of existence."
*/

contract AidaCoin is ERC20, Ownable {
    constructor() ERC20("AidaCoin", "AIDA") Ownable(msg.sender) {
        _mint(msg.sender, 888_888_888 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount * 10 ** decimals());
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount * 10 ** decimals());
    }
}
