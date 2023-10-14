#![no_std]

use sha256::*;

pub fn compute_block_hash() {
    // Block header data
    let slot: u32 = 7238208;
    let proposer_index: u32 = 696231;
    let parent_root = hex_literal::hex!(
        "f1e2bd63f8f3f27d363a6a8ad9315e84eda0bf0606d1c6ed4e057db86690e0f7"
    );
    let state_root = hex_literal::hex!(
        "1b3afa1e9ac16a4f6b7a69f13bed39915da6161e824b4b9bed4a299b3b17ac4f"
    );
    let body_root = hex_literal::hex!(
        "cddf3db0869d9e7922a2221c229ab0b158f00e2d7f7c782622b839174b2626f7"
    );

    // Initialize the hash
    let mut hasher = Hash::new();

    // Update the hash with block header data
    hasher.update(&slot.to_be_bytes());
    hasher.update(&proposer_index.to_be_bytes());
    hasher.update(&parent_root);
    hasher.update(&state_root);
    hasher.update(&body_root);

    // Finalize the hash to obtain the block hash
    let block_hash = hasher.finalize();

    // Print the block hash
    println!("Block Hash: {:?}", block_hash);
}
