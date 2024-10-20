// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract SocialflyApprovals {
    mapping(address => mapping(bytes32 => bool)) private nestedMap;

    function setApproval(string memory ipfsCid, bool value) public {
        bytes32 ipfsHash = keccak256(abi.encodePacked(ipfsCid));
        nestedMap[msg.sender][ipfsHash] = value;
    }

    function getApproval(
        address user,
        string memory ipfsCid
    ) public view returns (bool) {
        bytes32 ipfsHash = keccak256(abi.encodePacked(ipfsCid));
        return nestedMap[user][ipfsHash];
    }
}
