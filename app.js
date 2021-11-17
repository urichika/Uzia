const express = require('express');
const mysql = require('mysql');

const app = express();
app.use(express.static('public')); //ワンちゃんこの文いらない

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'Soccer0014',
  database: 'webapp'
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
    connection.query(
      'SELECT \
         id,ブルワリー,name,IBU,ABV,スタイル \
       FROM \
         beers',
        (error, results) => {
            res.render('top.ejs', {beers: results});
        }
    )
  });

  app.get('/Food',(req,res) => {
    connection.query(
      'SELECT \
         name,price,genre,info \
       FROM \
         foods \
       ORDER BY \
         genre asc,name asc,id asc',
        (error, results) => {
            res.render('Food.ejs', {foods: results});
        }
    )
  })

  app.get('/Drink',(req,res) => {
    connection.query(
      'SELECT \
         name,price,genre,base1 \
       FROM \
         drinks \
       ORDER BY \
         genre asc,base1 asc,name asc',
        (error, results) => {
            res.render('Drink.ejs', {drinks: results});
        }
    )
  })

  app.get('/Limited',(req,res) => {
    connection.query(
      'SELECT \
         name,price,genre,info \
       FROM \
         limiteds \
       ORDER BY \
         genre asc,name asc,id asc',
        (error, results) => {
            res.render('Limited.ejs', {limiteds: results});
        }
    )
  })

  app.get('/Drink/BaseSearch',(req,res) => {
    const Base = req.query.Base;
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
        }
    )
  })

  app.get('/Drink/NameSearch',(req,res) => {
      const Name = req.query.Name;
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
        }
    )
})

app.get('/access', (req, res) => {
    res.render('access.ejs');
});

  app.listen(3000);