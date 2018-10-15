import 'package:flutter/material.dart';

class Exercise1Page extends StatefulWidget {

  Exercise1Page() {

  }

  @override
  State<StatefulWidget> createState() {
    return _Exercise1PageState();
  }
}

class _Exercise1PageState extends State<Exercise1Page> {
  // Create a text controller. We will use it to retireve the current value
  // of the TextField!
  final myController = TextEditingController();
  String _name = "";

  @override
  Widget build(BuildContext context) {
    print("build called");

    return new Scaffold(
        appBar: AppBar(
          title: Text('Exercise 1: Hello World'),
        ),
        body: Container(
          padding: EdgeInsets.all(5.0),
          child: Column(
            children: <Widget>[
              Row(children: <Widget>[
                Flexible(
                  child: TextField(
                    controller: myController,
                    decoration:
                        InputDecoration(hintText: 'What is your name?'),
                  ),
                ),
                SizedBox(width: 10.0,),
                RaisedButton(
                  child: Text('Display'),
                  onPressed: (){
                    setState(() {
                      _name = "Hello, " + myController.text + ", nice to meet you!";                      
                    });                    
                  },
                ),
              ]),
              SizedBox(height: 10.0,),
              Text(_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),),
            ],
          ),
        ));
  }

  @override
  void initState() {
    super.initState();
    print("initState called!");
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    myController.dispose();
    super.dispose();
    print("dispose called!");
  }

  void doSometing() {}
}
