// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.17;

bytes4 constant _INTERFACEID_LSP26 = 0x2b299cea;

// keccak256('LSP26FollowerSystem_FollowNotification')
bytes32 constant _TYPEID_LSP26_FOLLOW = 0x71e02f9f05bcd5816ec4f3134aa2e5a916669537ec6c77fe66ea595fabc2d51a;

// keccak256('LSP26FollowerSystem_UnfollowNotification')
bytes32 constant _TYPEID_LSP26_UNFOLLOW = 0x9d3c0b4012b69658977b099bdaa51eff0f0460f421fba96d15669506c00d1c4f;

// keccak256('LSP26FollowerSystem_RemoveFollowerNotification')
bytes32 constant _TYPEID_LSP26_REMOVE_FOLLOWER = 0x1e4d1b7dbb4a5a9e7a5a4a91a1e26a24e4c04e6bfa3b823b896f3d5d6d4d72f2;

// keccak256('LSP26FollowerSystem_BlockNotification')
bytes32 constant _TYPEID_LSP26_BLOCK = 0x8f7b879cb22d038f5c5f5c5cba1b055021c1f6c3a4d2c0716f20d8a8d9e3d93a;

// keccak256('LSP26FollowerSystem_UnblockNotification')
bytes32 constant _TYPEID_LSP26_UNBLOCK = 0x07d26bcb0de905f78b6f3cdd1e1c09c0a5c6c4e1c9b1b37990fdc8ef4b0c6e2b;

// keccak256('LSP26FollowerSystem_RequiresApprovalSetNotification')
bytes32 constant _TYPEID_LSP26_REQUIRES_APPROVAL_SET = 0x4f8f55ae0e5f905057cf0069e0f4c0b556f7d291a7b6e4a4cbbdbd7b0c3a1f2a;

// keccak256('LSP26FollowerSystem_FollowRequestSent')
bytes32 constant _TYPEID_LSP26_FOLLOW_REQUEST_SENT = 0x4f8f55ae0e5f905057cf0069e0f4c0b556f7d291a7b6e4a4cbbdbd7b0c3a1f2a;

// keccak256('LSP26FollowerSystem_FollowRequestApproved')
bytes32 constant _TYPEID_LSP26_FOLLOW_REQUEST_APPROVED = 0x4f8f55ae0e5f905057cf0069e0f4c0b556f7d291a7b6e4a4cbbdbd7b0c3a1f2a;

// keccak256('LSP26FollowerSystem_FollowRequestRejected')
bytes32 constant _TYPEID_LSP26_FOLLOW_REQUEST_REJECTED = 0x4f8f55ae0e5f905057cf0069e0f4c0b556f7d291a7b6e4a4cbbdbd7b0c3a1f2a;
