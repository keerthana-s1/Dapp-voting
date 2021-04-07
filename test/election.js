var Election = artifacts.require("./contracts/Election");

contract("Election", function(accounts){
 
    it("initialise",function() {
        return Election.deployed().then(function(instance){
            return instance.totalcandidates();
        }).then(function(count) {
            assert.equal(count,2);
        });
    });
});