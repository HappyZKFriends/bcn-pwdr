use std::{path::PathBuf, str::FromStr};

use env_logger::Env;
use ethers::{types::Address, utils};
use eyre::Result;
use helios::{config::networks::Network, prelude::*};

pub mod beacon_apis;

use beacon_apis::get_beacon_block_verifiers;

#[tokio::main]
async fn main() -> Result<()> {
    let data = get_beacon_block_verifiers().unwrap();

    println!("Verifiers: {}", data);

    // env_logger::Builder::from_env(Env::default().default_filter_or("info")).init();

    // let mainnet_rpc_url = "https://eth-mainnet.g.alchemy.com/v2/SPWo8qBxuzCQqpiyI0HdwoPoAwQmOJPG";
    // println!("Using untrusted RPC URL [REDACTED]");

    // let consensus_rpc = "http://public-mainnet-node.ethereum.org/";
    // println!("Using consensus RPC URL: {}", consensus_rpc);

    // let mut client: Client = ClientBuilder::new()
    //     .network(Network::MAINNET)
    //     .consensus_rpc(consensus_rpc)
    //     .execution_rpc(mainnet_rpc_url)
    //     .data_dir(PathBuf::from("/tmp/helios"))
    //     .build()?;

    // println!(
    //     "Built client on network \"{}\" with external checkpoint fallbacks",
    //     Network::MAINNET
    // );

    // client.start().await?;

    // let head_block_num = client.get_block_by_number(BlockTag::Number((18047230)), true).await?;
    // let addr = Address::from_str("0x00000000219ab540356cBB839Cbe05303d7705Fa")?;
    // let block = BlockTag::Latest;
    // let balance = client.get_balance(&addr, block).await?;

    // println!("synced up to block: {}", head_block_num.unwrap().hash);
    // println!(
    //     "balance of deposit contract: {}",
    //     utils::format_ether(balance)
    // );

    Ok(())
}
