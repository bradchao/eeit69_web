window.onload = function(){
	let initBlock = document.getElementById("init");
	let mesgBlock = document.getElementById("mesgBlock");
	let connect = document.getElementById("connect");
	let userName = document.getElementById("userName");
	let send = document.getElementById("send");
	let mesg = document.getElementById("mesg");
	let log = document.getElementById("log");
	
	let webSocket;
	
	connect.addEventListener('click', function(){
		console.log("connecting...");
		webSocket = new WebSocket("ws://localhost:8080/Web5/myserver");
		webSocket.onopen = function(event){
			console.log("onopen...");
		};
		webSocket.onclose = function(event){
			console.log("onclose...");
		};
		webSocket.onerror = function(event){
			console.log("onerror...");
		};
		webSocket.onmessage = function(event){
			console.log("onmessage...");
		};
		
	});
	
	send.addEventListener('click', function(){});
	
	initBlock.style.display = 'block';
	mesgBlock.style.display = 'none';
}