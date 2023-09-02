use clap::Parser;
use clap::Subcommand;

use powdr_compiler::compile_pil_or_asm;
use powdr_number::GoldilocksField;

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
					let inputs: Vec<GoldilocksField> = vec![];
					let circuit_file = "./zkbeacon_verifier/asm/arith384.asm";
					compile_pil_or_asm(
						circuit_file,
						inputs,
						&mktemp::Temp::new_dir().unwrap(), //TODO: save generated witnesses and constants
						true,
						None //TODO: allow use of other backends, e.g. Halo2
					)
					.unwrap();
				}
			}
		}
	};
}
