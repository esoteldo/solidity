const HDWalletProvider = require('@truffle/hdwallet-provider');
const provider = new HDWalletProvider({
   privateKeys: ['87d1b0dbc16d2096d61f189d161fbea0a5cce67b25c15e8f1d91153b2275b1cd'],
   providerOrUrl: 'https://data-seed-prebsc-1-s1.binance.org:8545',
})


module.exports = {
  networks: {
    binanceTestnet: {
      provider: () => provider,
      network_id: "97",
      gas: 29000000
    },
    develop: {
      port: 8545
    }
  } 
};
