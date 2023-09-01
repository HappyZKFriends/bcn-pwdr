## How to run

1. Clone or install [powdr](https://github.com/powdr-labs/powdr).

2. Compiling a rust circuit
```
powdr rust ./src/main.rs --force --output-directory /tmp --inputs 1,2,3

```

3. Compiling a pil circuit

```
powdr pil ./asm/arith384.asm --force --output-directory /tmp
```

