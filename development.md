### Compiling Rust source into a circuit

```bash
rustup target add riscv32imac-unknown-none-elf
cd powdr
cargo run rust ../bcn-powdr/circuits/src/sha256.rs --output-directory ../bcn-powdr/circuits_data --force
```

### Compiling a circuit written in PIL using powdr CLI

```bash
cd powdr
cargo run pil ../bcn-powdr/circuits/asm/arith384.asm --output-directory ../bcn-powdr/circuits_data --force
```
