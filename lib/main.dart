import 'package:exercises_57_challenges/input-processing-output/exercise1.dart';
import 'package:exercises_57_challenges/input-processing-output/exercise2.dart';
import 'package:exercises_57_challenges/input-processing-output/exercise3.dart';
import 'package:exercises_57_challenges/working-with-external-services/exercise47/exercise47.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
      home: new MyHomePage(title: '57 Flutter Challenges'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Exercise 1: Hello World"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Exercise1Page()));
              },
            ),
            ListTile(
              title: Text("Exercise 2: Counting the Number of Characters"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Exercise2Page()));
              },
            ),
            ListTile(
              title: Text("Exercise 3: Printing Quotes"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Exercise3Page()));
              },
            ),
            ListTile(
              title: Text("Exercise 47: Who's in Space?"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Exercise47Page()));
              },
            ),
          ],
        ));
  }
}
