HDWalletProvider = require("@truffle/hdwallet-provider");
solc = require("solc");
fs = require("fs");
Web3 = require("web3");
const mnemonic = fs.readFileSync(".secret").toString().trim();
const provider = new HDWalletProvider(
  mnemonic,
  "https://rinkeby.infura.io/v3/<PROJECT_ID>"
);
var web3 = new Web3(provider);

let data = fs.readFileSync("./contracts/IncDecGet.sol").toString();
var input = {
  language: "Solidity",
  sources: {
    IncDecSol: {
      content: data,
    },
  },
  settings: {
    outputSelection: {
      "*": {
        "*": ["*"],
      },
    },
  },
};
var output = JSON.parse(solc.compile(JSON.stringify(input)));
console.log(output);
var ABI = output.contracts["IncDecSol"]["IncDecGet"].abi;
var byteCode = output.contracts["IncDecSol"]["IncDecGet"].evm.bytecode.object;
console.log(ABI);
console.log(byteCode);
var sourceAccount;
web3.eth.getAccounts().then((result) => {
  sourceAccount = result[0];
  contract = new web3.eth.Contract(ABI, sourceAccount);
  
  contract
    .deploy({ data: byteCode })
    .send({ from: sourceAccount, gas: 444444 })
    .on("receipt", (receipt) => {
      console.log(receipt);
    }).then((data)=>{
        data.methods.get().call((err,value) => {
            console.log(`intital value`,value)
        });
        // data.methods.increment().call((err,value) => {
        //     console.log(`incremented value`,value)
        // });
        // data.methods.get().call((err,value) => {
        //     console.log(`after increment value`,value)
        // });
        // data.methods.decrement().call((err,value) => {
        //     console.log(`decrement value`,value)
        // });
        // data.methods.get().call((err,value) => {
        //     console.log(`after decrement value`,value)
        // });
    })
});

