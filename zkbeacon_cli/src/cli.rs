use clap::Parser;
use clap::Subcommand;

use compiler::compile_pil_or_asm;
use number::GoldilocksField;

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

fn generate_proof(file_name: &str, inputs: Vec<GoldilocksField>) {
	compile_pil_or_asm(
		file_name,
		inputs,
		&mktemp::Temp::new_dir().unwrap(), //TODO: save generated files
		true,
		// TODO: choose zk backend with command-line
		None
	)
	.unwrap();
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
					generate_proof(circuit_file, vec![]);
				}
			}
		}
	};
}
