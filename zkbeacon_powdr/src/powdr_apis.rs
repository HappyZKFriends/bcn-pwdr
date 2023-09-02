use powdr_compiler::compile_pil_or_asm;
use powdr_number::GoldilocksField;

pub fn generate_proof(file_name: &str, inputs: Vec<GoldilocksField>) {
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


