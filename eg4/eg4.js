WebAssembly.instantiate(readbuffer('eg4.wasm'),{}).then(function(rst){ 
	console.log(rst.instance.exports.IsGreaterThan10(5)); 
	console.log(rst.instance.exports.IsGreaterThan10(100)); 
	console.log(rst.instance.exports.IsGreaterThan10(-5)); 
});

