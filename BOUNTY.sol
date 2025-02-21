// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract BountyBoard {
    // Struct to define each bounty
    struct Bounty {
        string description;
        uint reward;
        bool completed;
        address payable assignedHunter;
    }

    // Array to store all bounties
    Bounty[] public bounties;

    // Mapping to track assigned bounty hunters
    mapping(address => uint) public hunterAssignedBounty;

    // Function to add a new bounty (Only contract owner)
    function addBounty(string memory _description, uint _reward) public {
        Bounty memory newBounty = Bounty({
            description: _description,
            reward: _reward,
            completed: false,
            assignedHunter: payable(address(0))
        });

        bounties.push(newBounty);
    }

    // Function to assign a bounty to a hunter
    function assignBounty(uint _bountyIndex, address payable _hunter) public {
        require(_bountyIndex < bounties.length, "Invalid bounty index");
        require(bounties[_bountyIndex].assignedHunter == address(0), "Bounty already assigned");

        bounties[_bountyIndex].assignedHunter = _hunter;
        hunterAssignedBounty[_hunter] = _bountyIndex;
    }

    // Function for bounty hunter to mark task as completed
    function completeBounty(uint _bountyIndex) public {
        require(_bountyIndex < bounties.length, "Invalid bounty index");
        require(msg.sender == bounties[_bountyIndex].assignedHunter, "Not assigned hunter");

        bounties[_bountyIndex].completed = true;
    }

    // Function to pay bounty reward if task is completed
    function claimReward(uint _bountyIndex) public {
        require(_bountyIndex < bounties.length, "Invalid bounty index");
        require(bounties[_bountyIndex].completed, "Task not completed");
        require(msg.sender == bounties[_bountyIndex].assignedHunter, "Not assigned hunter");

        uint reward = bounties[_bountyIndex].reward;
        bounties[_bountyIndex].reward = 0;
        bounties[_bountyIndex].assignedHunter.transfer(reward);
    }

    // Function to view total number of bounties
    function totalBounties() public view returns (uint) {
        return bounties.length;
    }
}

