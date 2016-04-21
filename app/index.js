
var express = require('express');
var app = express();
var http = require('http').Server(app);
var io = require('socket.io')(http);

app.use(express.static(__dirname + '/pub'));

io.on('connection', function(socket){
  console.log('a user connected');
	socket.on('msg', function(data){
    console.log("msg get:", data);
		socket.broadcast.emit('msg', data);
	});
});

http.listen(3000, function(){
  console.log('listening on *:3000');
});
