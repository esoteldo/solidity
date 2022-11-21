const ContratoInicial=artifacts.require("ContratoInicial");

module.exports = function(deployer) {
    deployer.deploy(ContratoInicial);
};