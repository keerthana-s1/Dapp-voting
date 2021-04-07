//SPDX-License-Identifier: MIT
pragma solidity >=0.4.22;

contract Election {
    struct Candidate {
        uint id;
        string name;
        uint votecount;
    }
  mapping(uint => Candidate) public candidates;  
    uint public totalcandidates;
    constructor() public{
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }
    function addCandidate (string memory _name) private {
        totalcandidates++;
        candidates[totalcandidates] = Candidate(totalcandidates, _name,0);
    }
}