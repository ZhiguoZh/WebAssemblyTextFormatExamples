var memory = new WebAssembly.Memory({initial:1});
var view = new Uint16Array(memory.buffer);
var str = "Hello, world";
var len = str.length;
for (var i = 0; i < len; ++i) {
	view[i] = str.charCodeAt(i);
}
function printStr(offset, length) {
	var buf_view = new Uint16Array(memory.buffer, offset, length);
	var buf_str = String.fromCharCode.apply(null, buf_view);
	console.log(buf_str);
}
WebAssembly.instantiate(readbuffer('eg10.wasm'),{func: {log: printStr}, mem: {memory}}).then(function(rst){ 
	rst.instance.exports.PrintStr(0, str.length)
});

