# Snark-enabled light client

- write the bls curve pairing arithmetic in pil (almost done, but need to test)
  - https://members.loria.fr/AGuillevic/pairing-friendly-curves/
  - https://eprint.iacr.org/2019/1371.pdf
  - Hardcode the `.asm` file as builtin in our powdr fork. It is required to be builtin in the [riscV compiler](https://github.com/HappyZKFriends/powdr/blob/main/riscv/src/compiler.rs), so it will be available to be used by the rust code.
- write bls signature scheme in rust using the added builtin curve.
  - Spec: https://datatracker.ietf.org/doc/html/draft-irtf-cfrg-bls-signature-04#section-2.7
  - https://en.wikipedia.org/wiki/BLS_digital_signature
- write sha256 hasher in pil/rust (no-std). Not sure if [this repo](https://github.com/jedisct1/rust-hmac-sha256/blob/master/src/lib.rs) works though, but was the only no-std implementation that I found.
- write rust module that uses the powdr API (not the powdr CLI, to build the circuits programatically). All the rust circuits can be part of this module or a rust submodule.
- write rust circuit in powdr to verify beacon chain state transition (initially only BLS signatures and block hash)
  - https://eth2book.info/capella/part3/containers/state/#beaconstate
  - https://eth2book.info/capella/part3/transition/
- write a light client module that will start the light client and retrive the blocks headers. We can base our implementation in [this light client here](https://github.com/a16z/helios).
- write cmd line rust app that receives/collect the beacon chain state roots by interacting with the light client api and call the calls the ZK verifier module in powdr.
- create a diagram explaining the idea (sent on telegram)
- format the block header info to be used as input to the circuits (need to fit the BLS prime field)
