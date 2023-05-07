// // SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;


import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";



contract nftCreat is ERC721URIStorage{
    address public owner;

    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

constructor() ERC721("MyNft", "MNFT"){
    owner=msg.sender;

}
function mintNFT(address recipient, string memory tokenURL) PUBLIC RETURNS(UINT256){
    
    uint256 newTokenId= _tokenIds.current();
    _mint(recipient,newTokenId);
    _setTokenURI(newTokenId,tokenURL);
     _tokenIds.increment();

    return newTokenId;
}
function transferBalance( address payable_to)public{
    require(msg.sender==owner,"only owner can transfer balance");
    -to.transfer(address(this).balance);
}
function getBalance()public view returns(uint256){
    return address(this).balabnce;
}

}
