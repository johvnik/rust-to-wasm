mod external {
    mod imports {
        #[link(wasm_import_module = "imports")]

        extern "C" {
            pub fn random() -> f64;
        }
    }

    pub fn random() -> f64 {
        unsafe { imports::random() }
    }
}

#[export_name = "add"]
pub extern "C" fn add(left: f64, right: f64) -> f64 {
    left + right + external::random()
}
