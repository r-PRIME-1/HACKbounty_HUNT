# BountyHunter Project

The **BountyHunter** project is a Solidity smart contract deployed on the Edu Chain. It allows users to create, assign, and complete tasks (bounties) with rewards distributed to bounty hunters upon task completion.

## Features

1. **Create Bounties**:
   - Allows anyone to create new bounties by providing a task description and specifying a reward.
   
2. **Assign Hunters**:
   - Bounties can be assigned to specific bounty hunters (identified by their Ethereum address).
   
3. **Mark Tasks as Completed**:
   - Once the bounty hunter finishes the assigned task, they can mark the task as completed.
   
4. **Claim Rewards**:
   - After completing a task, the bounty hunter can claim their reward, which is transferred to their address.

5. **View Total Bounties**:
   - Users can query the total number of bounties added to the system.

## Smart Contract Address

The BountyHunter contract has been deployed on the **Edu Chain** at the following address:

**`0x4250593748e6d45d0b51eFcFb5bf2cdb5fD82D1E`**

## How It Works

1. **Adding Bounties**: A user creates a bounty by specifying a task description and a reward amount (in Wei). The bounty is stored on the blockchain but remains unassigned initially.

2. **Assigning Bounty Hunters**: The bounty can be assigned to a specific hunter by their Ethereum address, and only that hunter can complete and claim the reward for the task.

3. **Completing the Task**: The assigned hunter marks the bounty as completed once the task is done.

4. **Claiming the Reward**: After marking the bounty as completed, the hunter can claim the reward, which is automatically transferred to their address.

## Deployment

The contract is live on the Edu Chain network. You can interact with the deployed contract using any Ethereum-compatible wallet or interface (such as Remix, MyEtherWallet, or web3.js).

### Example Deployment Steps (if redeploying)

1. Open [Remix IDE](https://remix.ethereum.org/).
2. Paste the Solidity code into a new file.
3. Compile the contract with Solidity compiler version `^0.8.26`.
4. Connect to Edu Chain using MetaMask or another provider.
5. Deploy the contract.
6. Use the contract functions to interact with bounties.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
