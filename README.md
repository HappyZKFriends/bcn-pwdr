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
cargo run rust ../zkbeacon/zkbeacon_verifier/src/lib.rs --output-directory ../zkbeacon/verifier_data --force --inputs 1,2,3
```

3. Compiling a pil circuit

- Compile and run pil/asm circuit
```
cd powdr
cargo run pil ../zkbeacon/zkbeacon_verifier/asm/arith384.asm --output-directory ../zkbeacon/verifier_data --force
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
