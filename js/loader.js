class WasmLoader {
  constructor() {
    this._imports = {
      index: {
        log(valueA, valueB) {
          console.log(valueA, valueB);
        },
      },
    };
  }

  async wasm(path, imports = this._imports) {
    if (!loader.instantiateStreaming) {
      return this.wasmFallback(path);
    }

    const instance = await loader.instantiateStreaming(
      fetch(path),
      imports
    );

    return instance?.exports;
  }

  async wasmFallback(path, imports = this._imports) {
    const response = await fetch(path);
    const bytes = await response.arrayBuffer();

    const instance = await loader.instantiate(bytes, imports);

    return instance?.exports;
  }
}
