/// This example demonstrates the `json-using-serde` feature.
use minreq::Error;
use serde_json::Value;

pub fn get_beacon_block_verifiers() -> Result<Value, Error> {
    let response = minreq::get("https://beacon-nd-995-871-887.p2pify.com/c9dce41bab3e120f541e4ffb748efa60/eth/v1/beacon/states/finalized/validators")
        .send()?;

    let json: Value = response.json()?;
    println!("\"Hello, world!\" == {}", json["data"]);

    Ok(json)
}
