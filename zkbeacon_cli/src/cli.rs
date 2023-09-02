use clap::Parser;
use clap::Subcommand;

use zkbeacon_powdr::powdr_backend::generate_pil_proof;

#[derive(Subcommand)]
enum ZKBeaconCommands {
	Run,
}
#[derive(Subcommand)]
enum Commands {
	ZKVerifier {
		#[command(subcommand)]
		command: ZKBeaconCommands,
	},
}

#[derive(Parser)]
#[command(version, about)]
struct Cli {
	#[command(subcommand)]
	command: Commands,
}

// TODO: add light client module
// TODO: add retrieve beacon chain block header
pub fn run_cli() {
	let cli = Cli::parse();
	match &cli.command {
		Commands::ZKVerifier { command } => {
			match command {
				ZKBeaconCommands::Run => {
					// TODO: call verifier implementation
					let circuit_file = "./zkbeacon_verifier/asm/arith384.asm";
					generate_pil_proof(circuit_file, vec![]);
				}
			}
		}
	};
}
