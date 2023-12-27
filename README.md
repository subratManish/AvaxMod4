# ShieldBearerToken

ShieldBearerToken is an Ethereum-based ERC-20 token smart contract that provides a basic implementation for managing and distributing tokens. The contract is built using the OpenZeppelin library and includes functionalities for token minting, reward claiming, and burning.

## Overview

### Token Details

- **Name:** ShieldBearerToken
- **Symbol:** SBT
- **Initial Supply:** 1000 tokens

### Contract Features

1. **Minting Tokens:**
   - Function: `mintTokens(address account, uint amount)`
   - Description: This function allows the owner of the contract to mint additional tokens and assign them to a specified account.

2. **Reward Claiming:**
   - Function: `claimReward()`
   - Description: Token holders can claim rewards by calling this function. To be eligible, the caller must have a balance greater than or equal to the initial supply, and rewards can only be claimed once per address.

3. **Burning Tokens:**
   - Function: `annihilate(uint amount)`
   - Description: Token holders can burn (destroy) a specified amount of their tokens. This function is useful for reducing the total supply of tokens.

## Getting Started

To deploy the ShieldBearerToken contract and interact with its functionalities, follow these steps:

1. Deploy the smart contract to the Ethereum blockchain.
2. Mint additional tokens using the `mintTokens` function if needed.
3. Token holders can claim rewards using the `claimReward` function.
4. Token holders can burn their tokens using the `annihilate` function.

## Smart Contract Deployment

To deploy the ShieldBearerToken contract, use a development environment like Remix or deploy it through a script on a testnet or the Ethereum mainnet.
