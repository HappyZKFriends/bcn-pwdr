/// This example demonstrates the `json-using-serde` feature.
use minreq::Error;
use serde_json::{to_string_pretty, Value};

pub fn get_beacon_all_block_verifiers() -> Result<Value, Error> {
    let response = minreq::get("https://beacon-nd-995-871-887.p2pify.com/c9dce41bab3e120f541e4ffb748efa60/eth/v1/beacon/states/finalized/validators")
        .send()?;

    let json: Value = response.json()?;
    println!("\"Validators\" == {}", json["data"]);

    Ok(json)
}


// Expected output
//
// }
//     "Verifiers": {
//         "execution_optimistic": false,
//         "data": {
//             "index": "0",
//             "balance": "32053314216",
//             "status": "active_ongoing",
//             "validator": {
//                 "pubkey": "0x933ad9491b62059dd065b560d256d8957a8c402cc6e8d8ee7290ae11e8f7329267a8811c397529dac52ae1342ba58c95",
//                 "withdrawal_credentials": "0x0100000000000000000000000d369bb49efa5100fd3b86a9f828c55da04d2d50",
//                 "effective_balance": "32000000000",
//                 "slashed": false,
//                 "activation_eligibility_epoch": "0",
//                 "activation_epoch": "0",
//                 "exit_epoch": "18446744073709551615",
//                 "withdrawable_epoch": "18446744073709551615"
//             }
//         }
//         }
// }
pub fn get_beacon_block_verifiers() -> Result<Value, Error> {
    let state_slot = 7241435;
    let validator_id = "0x933ad9491b62059dd065b560d256d8957a8c402cc6e8d8ee7290ae11e8f7329267a8811c397529dac52ae1342ba58c95";

    let response = minreq::get(format!("https://beacon-nd-995-871-887.p2pify.com/c9dce41bab3e120f541e4ffb748efa60/eth/v1/beacon/states/{}/validators/{}", state_slot, validator_id))
        .send()?;

    let json: Value = response.json()?;
    println!("\"Validator\" == {}", json["data"]);

    Ok(json)
}


