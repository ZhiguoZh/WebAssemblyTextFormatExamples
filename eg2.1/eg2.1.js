WebAssembly.instantiate(readbuffer('eg2.1.wasm'),{}).then(function(rst){ console.log(rst.instance.exports.ret_arg(1023, 2)); });
