;; AMM (Automated Market Maker) Contract
;; 
;; This contract implements a decentralized exchange with automated market maker functionality,
;; liquidity provision, and yield farming rewards. It uses the constant product formula (x * y = k)
;; for price determination and includes safety checks for all operations.
;;
;; Features:
;; - Liquidity pool creation and management
;; - Token swapping with 0.3% fee
;; - Yield farming rewards for liquidity providers
;; - Governance controls for reward rate adjustment
;; - Comprehensive error handling and input validation

;; Trait Imports
(use-trait ft-trait .ft-trait.ft-trait)

;; Error Codes
(define-constant ERR-INSUFFICIENT-FUNDS (err u1))
(define-constant ERR-INVALID-AMOUNT (err u2))
(define-constant ERR-POOL-NOT-EXISTS (err u3))
(define-constant ERR-UNAUTHORIZED (err u4))
(define-constant ERR-TRANSFER-FAILED (err u5))
(define-constant ERR-INVALID-TOKEN (err u6))
(define-constant ERR-INVALID-PAIR (err u7))
(define-constant ERR-ZERO-AMOUNT (err u8))
(define-constant ERR-MAX-AMOUNT-EXCEEDED (err u9))
(define-constant ERR-SAME-TOKEN (err u10))

;; Protocol Constants
(define-constant REWARD-RATE-PER-BLOCK u10)
(define-constant MIN-LIQUIDITY-FOR-REWARDS u100)
(define-constant MAX-TOKENS-PER-POOL u2)
(define-constant MAX-REWARD-RATE u1000000)
(define-constant MAX-UINT u340282366920938463463374607431768211455) ;; 2^128 - 1