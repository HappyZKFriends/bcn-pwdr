use powdr_backend::BackendType;
use powdr_compiler::compile_pil_or_asm;
use powdr_number::GoldilocksField;

pub fn generate_halo2_proof(file_name: &str, inputs: Vec<GoldilocksField>) {
	compile_pil_or_asm(
		file_name,
		inputs,
		&mktemp::Temp::new_dir().unwrap(), //TODO: save generated files
		true,  
        Some(BackendType::Halo2)
	)
	.unwrap();
}

pub fn generate_halo2_mock_proof(file_name: &str, inputs: Vec<GoldilocksField>) {
	compile_pil_or_asm(
		file_name,
		inputs,
		&mktemp::Temp::new_dir().unwrap(), //TODO: save generated files
		true,  
        Some(BackendType::Halo2Mock)
	)
	.unwrap();
}

pub fn generate_pil_proof(file_name: &str, inputs: Vec<GoldilocksField>) {
	compile_pil_or_asm(
		file_name,
		inputs,
		&mktemp::Temp::new_dir().unwrap(), //TODO: save generated files
		true,  
        Some(BackendType::PilcomCli)
	)
	.unwrap();
}

