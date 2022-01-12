// https://eth-ropsten.alchemyapi.io/v2/BYCfm905GQjCewStT9fi4a9_RhC1uZSh

require('@nomiclabs/hardhat-waffle');

module.exports = {
  solidity: '0.8.0',
  networks: {
    ropsten: {
      url: 'https://eth-ropsten.alchemyapi.io/v2/BYCfm905GQjCewStT9fi4a9_RhC1uZSh',
      accounts: [
        '7bc3b7095f537945c236c20bc2f44e321e77e01c2f81a360b0b97727db3c6eac',
      ],
    },
  },
};
