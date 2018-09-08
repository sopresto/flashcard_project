// load the things we need
var express = require('express');
var app = express();
var mysql = require("mysql");
app.set('view engine', 'ejs');

//you need this to be able to process information sent to a POST route
var bodyParser = require('body-parser');

// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }));

// parse application/json
app.use(bodyParser.json());

var path = require("path");

// Serve static content for the app from the "public" directory in the application directory.
// you need this line here so you don't have to create a route for every single file in the public folder (css, js, image, etc)
//index.html in the public folder will over ride the root route
app.use(express.static("public"));

// Initializes the connection variable to sync with a MySQL database
var connection = mysql.createConnection({
host: "localhost",

// Your port; if not 3306
port: 3306,

// Your username
user: "root",

// Your password
password: "honey123",
database: "flashcard_db"
});

// index page 
app.get('/index', function(req, res){
	res.sendFile(path.join(__dirname, "public/index.html"));
});

app.get('/new-card', function(req, res){
	res.sendFile(path.join(__dirname, "public/new-card.html"));
});

app.get('/cards', function(req, res){
	connection.query("SELECT * FROM card_values",
	function(err, response) {
		res.render('cards', {
			cards: response
		});
	}
);
});

app.post('/submit', function(req, res){
	// res.json(req.body);
  
	connection.query(
		"INSERT INTO card_values (question, define) VALUES (?,?)",
		[req.body.question, req.body.define],
		function(err, response) {
		  res.redirect('/index');
		}
	  );
  });



  app.get('/flashcards', function(req, res){
	connection.query(
		"SELECT * FROM card_values",
		function(err, response) {
		  res.json(response);
		}
	  );
  });

  

// app.get('/flashcards', function(req, res){
// 	  connection.query('SELECT * FROM card_values', function (error, results, fields) {
// 	    if (error) throw error;
// 		res.json(results);
// 	  });

// 	});




app.listen(3003);