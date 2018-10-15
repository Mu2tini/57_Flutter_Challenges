import 'package:flutter/material.dart';

class Exercise2Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Exercise2PageState();
  }
}

class _Exercise2PageState extends State<Exercise2Page> {

  TextEditingController myController = new TextEditingController();
  var inputString = "";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Exercise 2: Counting the Number of Characters'),
      ),
      body: Container(
          padding: EdgeInsets.all(5.0),
          child: Column(
            children: <Widget>[
              Row(children: <Widget>[
                Flexible (child:
                  TextField(controller: myController, decoration: InputDecoration(hintText: "What is the input string?"),),
                ),
                SizedBox(width: 5.0),
                RaisedButton(child: Text('display'),
                  onPressed: (){
                  setState(() {
                       inputString = myController.text + " has " + myController.text.length.toString() + " characters.";                 
                  });
                },),
              ],),
              SizedBox(height:10.0),
              Text(inputString, style: TextStyle(fontSize: 30.0),),              
            ],
          )),
    );
  }
}
