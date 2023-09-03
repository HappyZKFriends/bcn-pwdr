# B𝕖𝕒c𝕠n P𝕠wd𝕖r

Beacon Powder is a proof of concept of rapid development of blockchain consensus verification based on zero-knowledge proofs.
The main feature is the use of [powdr](https://github.com/powdr-labs/powdr) framework to compile the state transition code written
in an imperative language directly into a ZK circuit that could be used by a light client to trustlessly verify
all the information it receives.

## Project status

At this stage the prototype does not verify the full state transition.
To show off the capability we focused on verifying the BLS signatures in consensus blocks, which is one of the more challenging
elements when building such circuits by hand.

The project was meant support many different consensus protocols, including those used by Aleph Zero and Celo, but currently
the repository only provides a prototype targeting the Ethereum's beacon chain.

## How to run

### Install Rust toolchain

```
# replace the toolchain for whatever one you use
rustup toolchain install nightly-2023-08-03-x86_64-unknown-linux-gnu
rustup component add rust-src --toolchain nightly-2023-08-03-x86_64-unknown-linux-gnu

# optional
rustup component add rust-analyzer --toolchain nightly-2023-08-03-x86_64-unknown-linux-gnu
```

### Running

#### Running using powdr_cli

1. Clone or install our [powdr fork](https://github.com/HappyZKFriends/powdr).

2. Compiling a rust circuit

```
rustup target add riscv32imac-unknown-none-elf
cd powdr
mkdir circuits_data
cargo run rust ../zkbeacon/circuits/src/sha256.rs --output-directory ../zkbeacon/circuits_data --force
```

3. Compiling a pil circuit

- Compile and run pil/asm circuit
```
cd powdr
mkdir circuits_data
cargo run pil ../zkbeacon/circuits/asm/arith384.asm --output-directory ../zkbeacon/circuits_data --force
```

### Running using the zkbeacon CLI and powdr API

- Install PILCOM
```
git clone https://github.com/0xPolygonHermez/pilcom.git
cd pilcom
npm install
```


```
cd zkbeacon
PILCOM=$(PATH_TO_PILCOM)/pilcom/ cargo run --all-features zk-verifier run
```
