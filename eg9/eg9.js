WebAssembly.instantiate(readbuffer('eg9.wasm'),{}).then(function(rst){ 
	var times = 0;
	for (var i = 0; i < 10000; ++i)
		times = rst.instance.exports.CallTimes()
	console.log(times);

});

