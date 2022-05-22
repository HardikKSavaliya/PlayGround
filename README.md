# PlayGround

 *Step to create and deploy first solidity contract on Truffle and Metamask*

Here assuming that truffle,node and metamask are already installed.

>truffle init

![image](https://user-images.githubusercontent.com/7431331/169679202-70efc153-1e6d-46e0-b89a-ec75d58c0507.png)

Once, you are ready to create an first contract

>truffle create contract HelloWorld

above command will create an file as below image

![image](https://user-images.githubusercontent.com/7431331/169679265-b8281fb7-a744-4cad-a801-eb7a63605b17.png)

>truffle compile

![image](https://user-images.githubusercontent.com/7431331/169679296-38894d88-e533-41b6-bc70-6e212479b2a6.png)

>truffle dashboard

![image](https://user-images.githubusercontent.com/7431331/169679321-a795bf79-32dc-4034-adbc-789b60e53903.png)

it will ask in browser to permission for wallet connect. here you can connect metamask and any test network, please make sure that you have an balance on that account for an contract deployment and execution.

open an truffle-config.js and paste below code to route an port for deployment

>  dashboard: {
    port: 24012,
  },

after that, run below command

> truffle migrate --network dashboard

![image](https://user-images.githubusercontent.com/7431331/169679466-f37cf29f-6f56-4f46-ad0d-dc7a03e76980.png)
![image](https://user-images.githubusercontent.com/7431331/169679473-601dbdca-ebc1-4034-9bc6-9ee2ab2c6b24.png)

that`s it. your contract is now on ethereum blockchain. in deployment process you need to approve an wallet transactions. you will also get etherscan link for your contract in terminal.
