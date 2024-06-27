/*Problem Statement 1: Crowdfunding Platform
Objective: Create a contract named Crowdfunding that enables users to initiate fundraising campaigns for innovative projects. The contract should allow contributions from the community and enable campaign creators to withdraw the funds upon reaching their goals.
•	Users should be able to create campaigns with a specific monetary goal.
•	The community can contribute Ether to these campaigns.
•	Campaign creators can withdraw contributions once the campaign goal is met.
•	Implement safeguards to ensure only the creator can withdraw funds and only when the goal is achieved.*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract crowdFunding{

    uint public campaignId;

    struct campaign{
        address payable creator;
        uint goal;
        uint totalContribution;
    }

    mapping(uint =>campaign) public campaigns;
    mapping(uint=>mapping(address=>uint))public contibutions;

    function createCampaign(uint _goal) public{
        campaigns[campaignId]=campaign(payable (msg.sender),_goal,0);
        campaignId++;
    }

    function contribution(uint _campaignId) public payable {
         campaign storage newcampaign=campaigns[_campaignId];
         newcampaign.totalContribution+=msg.value;
         contibutions[_campaignId] [msg.sender]+=msg.value;

    }

    function withdraw(uint _campaignId) public{
        campaign storage newCampaign=campaigns[_campaignId];
        require(msg.sender==newCampaign.creator,"you are not creator ,only creator can withdraw");
        require(newCampaign.totalContribution >= newCampaign.goal,"goal is not achieved");
        newCampaign.creator.transfer(newCampaign.totalContribution);

       
    }
}