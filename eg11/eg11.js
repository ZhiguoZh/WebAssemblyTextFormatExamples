tbl = new WebAssembly.Table({initial:2, element:"anyfunc"});
glb = new WebAssembly.Global({value:"i32", mutable:true}, 100);

importObj = { js:{table:tbl}, other:{glob: glb} }

WebAssembly.instantiate(readbuffer('eg11.wasm'), importObj).then(function(rst){ 
	add3 = rst.instance.exports.add3;
	add5 = rst.instance.exports.add5;
	tbl.set(0, add3);
	tbl.set(1, add5);
	console.log(rst.instance.exports.inc(0));
	console.log(rst.instance.exports.inc(1));
	console.log(rst.instance.exports.inc(0));
});

