#![no_std]

extern crate alloc;
use alloc::vec::Vec;

use runtime::get_prover_input;

#[no_mangle]
fn main() {
	verifyBLS12_831();

fn verifyBLS12_831() {
	// TODO: import asm/arith384.asm and implement the bls signature verification
}
