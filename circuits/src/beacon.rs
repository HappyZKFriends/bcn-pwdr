
#![no_std]

extern crate alloc;
use alloc::vec::Vec;

use runtime::get_prover_input;

#[no_mangle]
fn main() {
	blockVerifier();
}

fn blockVerifier() {
	// Import bls12_831 circuit
	// Import sha256 circuit
	// TODO: verify beacon state:
	// - BLS signatures
	// - state root using sha256
}
