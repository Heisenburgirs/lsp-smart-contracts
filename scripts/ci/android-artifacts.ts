// This script generates the ABI + Binaries of the `@lukso/lsp-smart-contracts`
// so that the Java wrappers for Android can be generated using Web3j
const fs = require("fs");
const hre = require("hardhat");
const { exec } = require("child_process");

/**
 * @dev temporarily exclude the LSP7/8 Compatible contracts as these contain two `Transfer` and `Approve` events
 * with the same name and different parameters. This causes Web3j to crash when building the java artifacts
 */
const excludedContracts = [
  "LSP7CompatibleERC20",
  "LSP7CompatibleERC20InitAbstract",
  "LSP7CompatibleERC20Mintable",
  "LSP7CompatibleERC20MintableInit",
  "LSP8CompatibleERC721",
  "LSP8CompatibleERC721InitAbstract",
  "LSP8CompatibleERC721Mintable",
  "LSP8CompatibleERC721MintableInit",
];

hre.run("prepare-package").then(async () => {
  // create directory to write contract abi + binary files
  exec("mkdir android android/abi android/bin", () => {
    const contracts = hre.config.packager.contracts;

    for (const contract of contracts) {
      /**
       * TODO: re-include these contracts once the issue from Web3j is fixed
       * @see https://github.com/web3j/web3j/issues/1781
       */
      if (excludedContracts.includes(contract)) {
        continue;
      }

      let artifact = fs.readFileSync(`./artifacts/${contract}.json`);

      // create temporary file to use as sources for web3j
      let abiFile = `./android/abi/${contract}.abi`;
      let binFile = `./android/bin/${contract}.bin`;

      // write the abis + binary generated by Hardhat into temporary files
      // we want to rely on solidity compiler version + optimizer settings
      // defined in Hardhat project configs, not on external solc setting
      let abi = JSON.parse(artifact).abi;
      let bin = JSON.parse(artifact).bytecode;

      fs.writeFile(abiFile, JSON.stringify(abi), { flag: "w" }, (err) => {
        if (err) console.error(err);
      });

      fs.writeFile(binFile, bin, { flag: "w" }, (err) => {
        if (err) console.error(err);
      });
    }
  });
});