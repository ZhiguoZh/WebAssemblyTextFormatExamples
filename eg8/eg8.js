WebAssembly.instantiate(readbuffer('eg8.wasm'),{}).then(function(rst){ 
	var v1 = 2, v2 = 100;
	console.log("Ref Mean=", (v1+v2)/2.);
	console.log("Mean=",rst.instance.exports.MeanOrGeomean(v1, v2, 0));
	console.log("Ref Geomean=", Math.sqrt(v1*v2));
	console.log("Geomean=",rst.instance.exports.MeanOrGeomean(v1, v2, 1));
});

