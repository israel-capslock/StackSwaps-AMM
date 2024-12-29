# Automated Market Maker (AMM) Smart Contract

A decentralized exchange implementation with automated market making, liquidity provision, and yield farming capabilities built on Clarity.

## Features

- **Automated Market Making**: Implements constant product formula (x \* y = k)
- **Liquidity Pools**: Create and manage token pairs with dynamic pricing
- **Yield Farming**: Earn rewards for providing liquidity
- **Governance Controls**: Adjustable reward rates and protocol parameters
- **Security**: Comprehensive validation and error handling

## Architecture

The AMM consists of several core components:

- **Liquidity Pools**: Pairs of tokens with automated price discovery
- **Token Swapping**: Exchange tokens with 0.3% fee structure
- **Yield Farming**: Reward distribution for liquidity providers
- **Access Control**: Owner-managed token whitelist and parameters

## Quick Start

1. Deploy the contract
2. Add allowed tokens via `add-allowed-token`
3. Create liquidity pools using `create-pool`
4. Users can:
   - Provide liquidity via `add-liquidity`
   - Swap tokens using `swap-tokens`
   - Remove liquidity with `remove-liquidity`
   - Claim rewards through `claim-yield-rewards`

## Contract Interface

### Public Functions

```clarity
(add-allowed-token (token principal))
(create-pool (token1 <ft-trait>) (token2 <ft-trait>) (initial-amount1 uint) (initial-amount2 uint))
(add-liquidity (token1 <ft-trait>) (token2 <ft-trait>) (amount1 uint) (amount2 uint))
(remove-liquidity (token1 <ft-trait>) (token2 <ft-trait>) (shares-to-remove uint))
(swap-tokens (token-in <ft-trait>) (token-out <ft-trait>) (amount-in uint))
(claim-yield-rewards (token1 <ft-trait>) (token2 <ft-trait>))
(set-reward-rate (new-rate uint))
```

## Security Considerations

- Comprehensive input validation
- Protected admin functions
- Overflow protection
- Reentrancy prevention
- Access control checks

## License

MIT License - see LICENSE file for details
