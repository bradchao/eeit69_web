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
		webSocket = new WebSocket("ws://10.0.101.187:8080/Web5/myserver");
		webSocket.onopen = function(event){
			console.log("onopen...");
			initBlock.style.display = 'none';
			mesgBlock.style.display = 'block';
			
			var sendMesg = {
				mode : 1,
				user : userName.value
			};
			webSocket.send(JSON.stringify(sendMesg));			
			
		};
		webSocket.onclose = function(event){
			console.log("onclose...");
			initBlock.style.display = 'block';
			mesgBlock.style.display = 'none';
		};
		webSocket.onerror = function(event){
			console.log("onerror...");
			initBlock.style.display = 'block';
			mesgBlock.style.display = 'none';
		};
		webSocket.onmessage = function(event){
			console.log("onmessage...");
			
			var obj = JSON.parse(event.data);
			log.innerHTML += obj.user + ":" + obj.message + "<br />";
			
		};
		
	});
	
	send.addEventListener('click', function(){
		console.log("send...");
		var sendMesg = {
			mode : 2,
			message : mesg.value
		};
		webSocket.send(JSON.stringify(sendMesg));
		
	});
	
	initBlock.style.display = 'block';
	mesgBlock.style.display = 'none';
}