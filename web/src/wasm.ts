const importObject = {
  imports: {
    random: () => Math.random(),
  },
};

const wasm = await fetch("core.wasm");
const { instance: core } = await WebAssembly.instantiateStreaming(wasm, importObject);

// @ts-ignore: add is function
const output: number = core.exports.add(40, 2);
console.log(output);
console.log(core.exports.memory);
console.log(core.exports.__data_end);
console.log(core.exports.__heap_base);

// needed to coerce into a module
export { }
