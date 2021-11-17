var express = require('express');
var mysql = require('mysql');
var app = express();
app.use(express.static('public')); //ワンちゃんこの文いらない

var connection = mysql.createConnection({
  host: 'us-cdbr-east-04.cleardb.com',
  user: 'b431019deb93b8',
  password: '3ecab8a6',
  database: 'heroku_67ebfde3e758845'
});


connection.connect((err) => {
    if (err) {
      console.log('error connecting: ' + err.stack);
      return;
    }
    console.log('success');
  });

  app.use(express.static('public'));
  app.use(express.urlencoded({extended:false}));



  app.get('/', (req, res) => {
    pool.getConnection(function(err, connection){
      connection.query(
        'SELECT \
           id,ブルワリー,name,IBU,ABV,スタイル \
         FROM \
           beers',
          (error, results) => {
              res.render('top.ejs', {beers: results});
              connection.release();
          }
      );
    });
  });

  app.get('/Food',(req,res) => {
    pool.getConnection(function(err, connection){
      connection.query(
        'SELECT \
           name,price,genre,info \
         FROM \
           foods \
         ORDER BY \
           genre asc,name asc,id asc',
          (error, results) => {
              res.render('Food.ejs', {foods: results});
              connection.release();
          }
      );
    });
  });

  app.get('/Drink',(req,res) => {
    pool.getConnection(function(err, connection){
      connection.query(
        'SELECT \
           name,price,genre,base1 \
         FROM \
           drinks \
         ORDER BY \
           genre asc,base1 asc,name asc',
          (error, results) => {
              res.render('Drink.ejs', {drinks: results});
              connection.release();
          }
      );
    });
  });

  app.get('/Limited',(req,res) => {
    pool.getConnection(function(err, connection){
      connection.query(
        'SELECT \
           name,price,genre,info \
         FROM \
           limiteds \
         ORDER BY \
           genre asc,name asc,id asc',
          (error, results) => {
              res.render('Limited.ejs', {limiteds: results});
              connection.release();
          }
      );
    });
  });

  app.get('/Drink/BaseSearch',(req,res) => {
    pool.getConnection(function(err, connection){
    var Base = req.query.Base;
      connection.query(
        'SELECT \
           name,genre,base1,base2,base3,base4,base5,base6,base7 \
         FROM \
           drinks \
         WHERE \
           genre = "カクテル" \
           AND (base1 = ? \
           OR base2 = ? \
           OR base3 = ? \
           OR base4 = ? \
           OR base5 = ?)',
        //LIKEの後ろにワイルドカード(%)が使えないけど妥協
        [Base,Base,Base,Base,Base],
          (error, results) => {
              res.render('BaseSearch.ejs', {kakuterus: results});
              connection.release();
          }
      );
    });
  });

  app.get('/Drink/NameSearch',(req,res) => {
    pool.getConnection(function(err, connection){
    var Name = req.query.Name;
      connection.query(
        'SELECT \
           name,genre,base1,base2,base3,base4,base5,base6,base7 \
         FROM \
           drinks \
         WHERE \
           genre = "カクテル" \
           AND name = ?',
        [Name],
          (error, results) => {
              res.render('NameSearch.ejs', {kakuterus: results});
              connection.release();
          }
      );
    });
  });

  app.get('/access', (req, res) => {
    pool.getConnection(function(err, connection){
      res.render('access.ejs');
      connection.release();
    });
  });

app.listen(process.env.PORT || 5000)