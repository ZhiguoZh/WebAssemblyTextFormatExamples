WebAssembly.instantiate(readbuffer('eg3.wasm'),{}).then(function(rst){ console.log(rst.instance.exports.addTwo(12,13)); });
