var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "root",
  database: "bamazon"
});

function start(){
    console.log("Items for sale are listed below. \n");
    var query = connection.query(
        'SELECT * FROM Products',function(err, res, fields){
            if (err) throw err;
            for (var i = 0; i < res.length; i++){
                console.log("ID: " + res[i].id, " - Product: " + res[i].productname, " - Dept: " + res[i].deptName);
            }
        }
    );
    purchase();
}

connection.connect(function(err) {
  if (err) throw err;
  console.log('Hello!! Welcome to Bamazon.');
  start();
});

function purchase (){
    inquirer.prompt([
        {
            name: 'itemtopurchase',
            type: 'input',
            itemName: 'productname',
            message: "Please enter the ID of the item you would like to purchase. \n"
        },
        {
            name: 'quantity',
            type: 'input',
            message: "How many would you like? \n"
        }
    ]).then(function(ans){
        var buying = ans.itemtopurchase;
        var quantity = parseInt(ans.quantity);

        console.log(buying);
        console.log(quantity);
        console.log(buying.stockOnHand);
        
       
        if(buying.stockOnHand >= quantity){
            connection.query("UPDATE products SET ? WHERE ?", [
                {stockOnHand: (buying.quantity - quantity)},
                {id: ans.itemtopurchase}
            ], function(err, res){
                if(err) throw err;
                console.log("Your order has been placed.");
            }
            );
        }else{
            console.log("Order exceeds quantity on hand. Please reenter your order.")
            purchase();
        }
            
        });
    }


   
