import 'package:flutter/material.dart';

void main() =>runApp(new MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) => new MaterialApp(
      theme: ThemeData(),
      home: Quadratic_calc(),
      title: 'Quadratic Calculator',
    );

}


class Quadratic_calc extends StatefulWidget{
  @override
  Quadratic_calcState createState () => Quadratic_calcState();

}

class Quadratic_calcState extends State<Quadratic_calc>{

  void calculation(){

  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title:Text('Kristos Quadratic Calculator'),
      ),
      body:
       Padding(
        padding : const EdgeInsets.all(20.0),
        child:Form(
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText:"Input the value of x^2"),
              ),
            TextField(
                decoration: InputDecoration(labelText:"Input the value of x"),
              ),
            TextField(
                decoration: InputDecoration(labelText:"Input the value of Constant"),
              ),
            Padding(padding: const EdgeInsets.all(10.0),),
            RaisedButton(
              child: Text("Get Answer"),
              color: Colors.lightGreen,
              onPressed: calculation,
            )
            ],
          ),
        ),
      )
    );
  }
}