function JSNthFibo(n) {
	var v0 = 0, v1 = 1, v2;
	if ( n == 0 ) return v0;
	if ( n == 1 ) return v1;
	for ( var i = 2; i <= n; ++i ) {
		v2 = v0 + v1;
		v0 = v1;
		v1 = v2;
	}
	return v2;
}

WebAssembly.instantiate(readbuffer('eg7.wasm'),{}).then(function(rst){ 
	console.log("NthFibo(24)=",rst.instance.exports.NthFibo(24));
	console.log("Reference is 46368");
	for (var i = 0; i < 40; ++i) {
		if ( rst.instance.exports.NthFibo(i) != JSNthFibo(i) ) {
			console.log("wrong, i=", i);
			return;
		}
	}
	console.log("All right!");
});

