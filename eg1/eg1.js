WebAssembly.instantiate(readbuffer('eg1.wasm'),{}).then(function(rst){ console.log(rst.instance.exports.ret3(2)); });
