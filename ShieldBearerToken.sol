
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ShieldBearerToken is ERC20, Ownable(msg.sender)  {
    mapping(address => bool) private rewardsClaimed;
    uint public constant initialSupply = 1000;

    constructor() ERC20("ShieldBearerToken", "SBT") {
        _mint(msg.sender, initialSupply);
    }

    function mintTokens(address account, uint amount) public onlyOwner {
        _mint(account, amount);
    }

    function claimReward() public {
        require(balanceOf(msg.sender) >= initialSupply, "Insufficient balance");
        require(!rewardsClaimed[msg.sender], "Rewards already claimed");

        rewardsClaimed[msg.sender] = true;
        _burn(msg.sender, initialSupply);
    }

    function annihilate(uint amount) public {
        _burn(msg.sender, amount);
    }
}
