# Homework 3 for the BoilerBlockchain Technical Course (Spring 2025)

## Setup

1. Download NodeJS if you don’t already have it: [https://nodejs.org/en/download/](https://nodejs.org/en/download/)
2. Clone the GitHub repository:

   ```bash
   https://github.com/Boiler-Blockchain/homework-3-spring25.git
   ```
3. Open a terminal in the folder that was cloned.
4. Type `npm install` (this should download all necessary packages).

You can now place your smart contract inside the `contracts` folder, and run `npx hardhat test` in the terminal to test the smart contract.

## Introduction

Assignment 3 involves the development of a digital asset management system and an integrated marketplace using Solidity. Students will create a smart contract, `AssetFactory`, to mint, transfer, and edit digital assets, and extend it by developing a `MarketPlace` contract that allows users to put their assets up for sale in auctions and bid on others' assets.

> **Note**: The `Auction` contract is provided to simulate an auction environment for the test cases.  
> While you are not required to modify this contract to receive credit, it is highly recommended that you review and understand its functionality as part of the learning process.

## AssetFactory Overview

The `AssetFactory` contract enables the creation and management of digital assets. Each asset is represented as a struct with a name and an owner. The contract includes functions for minting new assets, transferring ownership, editing asset details, and querying assets owned by a particular address.

### The `DigitalAsset` Struct

The `DigitalAsset` struct represents a digital asset with the following fields:
- **name**: The name of the digital asset.
- **owner**: The address of the asset’s owner.

### Function Descriptions

#### 1. `mint` Function
Mints a new digital asset with a given name, assigning ownership to the caller.

#### 2. `transferTo` Function
Transfers ownership of a digital asset to another address.

#### 3. `editName` Function
Allows the owner of a digital asset to change its name.

#### 4. `assetsOf` Function
Returns a list of asset IDs owned by a specific address.

## MarketPlace Overview

The `MarketPlace` contract extends the `AssetFactory` contract to manage digital assets. It includes functionality for listing assets in auctions, bidding on auctions, and settling auctions, transferring asset ownership to the highest bidder.

### Key Features

- **Creating auctions for digital assets.**
- **Bidding in auctions.**
- **Settling auctions and transferring asset ownership.**

### Function Descriptions

#### 1. `putForSale` Function
Allows an asset owner to create an auction for their asset.

#### 2. `bid` Function
Enables users to bid in an auction using the auction ID.

#### 3. `settleAuction` Function
Settles an auction, transferring ownership of the asset to the highest bidder.

## Submission (100 points)

Submit the following on Brightspace:

- **Completed Code**: Ensure the code is well-documented and adheres to coding standards.
- **Analysis**: A brief report describing your approach, challenges faced, and learning outcomes.

## Notes

- Make sure to thoroughly test your contracts with the provided test scripts.
- Follow the coding standards discussed in class for smart contract development.
- If you encounter issues, refer to the Solidity documentation or reach out for help during office hours (The schedule can be found in the syllabus on Brightspace)