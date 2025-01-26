//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// TODO: Digital ownership
contract AssetFactory {
   struct DigitalAsset {
       string name;
       address owner;
   }

   DigitalAsset[] public digitalAssets;
   uint256 public assetCounter = 0;

   constructor () {
        assetCounter = 0;
        // Additional constructor code if needed
    }

    // Function to mint a new digital asset
    function mint ( string memory _name ) external {
        require(bytes(_name).length < 32);
        digitalAssets.push(DigitalAsset(_name, msg.sender));
        assetCounter++;
    }

    // Internal function to return the owner of an asset
    function ownerOf ( uint256 _assetId ) internal view returns ( address ) {
        // TODO : Implement the ownerOf function
    }

    // Function to transfer ownership of a digital asset
    function transferTo ( address _to , uint256 _assetId ) external {
        require(_assetId < assetCounter);
        require(msg.sender == ownerOf(_assetId));
        digitalAssets[_assetId].owner = _to;
    }

    // Function to edit the name of a digital asset
    function editName ( uint256 _assetId , string memory _name ) external {
        // TODO : Implement the editName function
    }

    // Function to list assets owned by a specific address
    function assetsOf ( address _owner ) public view returns ( uint256 [] memory ) {
        // TODO : Implement the assetsOf function
    }
}

// Auction Contract
contract Auction {
  address payable public beneficiary;
  uint256 public minimumBid;
  address public maxBidder;
  bool public auctionEnded;

  constructor(
      uint256 _minimumBid,
      address payable _beneficiaryAddress
  ) {
      minimumBid = _minimumBid;
      beneficiary = _beneficiaryAddress;
      maxBidder = address(0);
      auctionEnded = false;
  }

  function bid() external payable {
      require(tx.origin != maxBidder);
      require(msg.value > minimumBid);
      require(auctionEnded == false);
    
      if (maxBidder != address(0)) {
          payable(maxBidder).transfer(minimumBid);
      }
      minimumBid = msg.value;
      maxBidder = tx.origin;
  }

  function settleAuction () external {
      require(tx.origin == beneficiary);
      require(auctionEnded == false);	
      //if no bid
      if (maxBidder == address(0)) {
          maxBidder = beneficiary;
      }
      else {
          payable(beneficiary).transfer(minimumBid);
      }
      auctionEnded = true; 
  }
}

// TODO: MarketPlace Contract
contract MarketPlace is AssetFactory {
    mapping ( address => uint256 ) public ownerToAuctionId ;
    mapping ( uint256 => Auction) public idToAuction ;
    mapping ( uint256 => uint256 ) public auctionToObject ;
    uint256 public auctionNumber ;

    function putForSale ( uint256 _minimumBid , uint256 assetId ) public {
        // TODO : Implement the putForSale function
    }

    function bid ( uint256 auctionId ) public payable {
        // TODO : Implement the bid function in MarketPlace
    }

    function settleAuction ( uint256 auctionId ) public {
        // TODO : Implement the settleAuction function in MarketPlace
    }
}