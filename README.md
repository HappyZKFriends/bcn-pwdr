## How to run

1. Clone or install our [powdr fork](https://github.com/HappyZKFriends/powdr).

2. Compiling a rust circuit
```
cd powdr
cargo run rust ../zkbeacon/src/main.rs --force --output-directory /tmp --inputs 1,2,3
```

3. Compiling a pil circuit

```
cd powdr
cargo run pil ../zkbeacon/asm/arith384.asm --output-directory /tmp --force
```

