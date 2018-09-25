WebAssembly.instantiate(readbuffer('eg6.wasm'),{}).then(function(rst){ 
	var mem = rst.instance.exports.mem;
	let intView = new Int32Array(mem.buffer);

	var len = 7;
	for (i = 0; i <= len; ++i) {
		console.log(intView[i]);
	}
	len = rst.instance.exports.NegOddElem();
	console.log("Length of array is: ", len)
	for (i = 0; i <= len; ++i) {
		console.log(intView[i]);
	}

});

