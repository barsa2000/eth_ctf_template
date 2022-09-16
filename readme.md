# Foundry based template to solve CTF challenges

## Getting started

After installing foundry[^1] run:

```
$ forge init --template https://github.com/barsa2000/eth_ctf_template "<name_of_the_project>"
$ forge build
```

## Usage

### Testing with the foundry

1. Write your test in `test/Solve.s.sol`.
2. Test it (see below)

```
$ forge test
```

To show the traces[^2] of your tests:

```
$ forge test -vvvv
```

### Testing with a local testnet node (anvil)

1. Configure your project (see the [configuration section](#Configuration)).
2. Write your exploit contract in `src/Solve.sol`
3. Write your script in `script/Solve.s.sol`
4. Deploy it (see below)

Start the local testnet node with:

```
$ anvil
```

Then deploy your challenge with:

```
$ cast create <challenge_src_file>:<challenge_contract> --rpc-url <RPC_URL>
```

*example: `cast create src/Setup.sol:Setup --rpc-url 127.0.0.1:8545`*

Then run your script with:

```
$ forge script <script_file>:<script_contract> --rpc-url <RPC_URL> --broadcast
```

*example: `forge script test/Solve.s.sol:SolveScript --rpc-url http://127.0.0.1:8545 --broadcast`*

If you want to call a function on a contract:

```
cast call <contract_address> "<function_signature>" --rpc-url <RPC_URL>
```

*example: `cast call 0x5FbDB2315678afecb367f032d93F642f64180aa3 "isSolved()(bool)" --rpc-url local`*

### Running your script on a remote RPC

1. Configure your project (see the [configuration section](#Configuration)).
2. Write your exploit contract in `src/Solve.sol`
3. Write your script in `script/Solve.s.sol`
4. Deploy it with:

```
$ forge script <script_file>:<script_contract> --rpc-url <RPC_URL> --broadcast
```

*example: `forge script test/Solve.s.sol:SolveScript --rpc-url ropstein --broadcast`*


## Configuration

### .env

1. Add your private key with `PRIVATE_KEY=<your_private_key>`.
2. If you need to deploy to a testnet or mainnet node add your infura API key with `INFURA_API_KEY=<your_api_key>`

A `.env` file template is provided in `.env.template`.

### foundry.toml[^3]

3 rpc endpoints are added by default:

- goerli: The Goerli testnet (needs Infura API key).
- ropstein: The ropstein testnet (needs Infura API key).
- local: a local testnet node hosted on your machine.

For more configurations see notes[^3]

## Resources

- [Solidity docs](https://docs.soliditylang.org/en/latest/)
- [Foundry book](https://book.getfoundry.sh/)
- [Foundry github repo](https://github.com/foundry-rs/foundry)
- [Cheatcodes reference](https://book.getfoundry.sh/cheatcodes/)

## Notes

[^1]: https://book.getfoundry.sh/getting-started/installation
[^2]: https://book.getfoundry.sh/forge/traces
[^3]: https://github.com/foundry-rs/foundry/tree/master/config
