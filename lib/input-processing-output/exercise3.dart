import 'package:flutter/material.dart';

class Exercise3Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Exercise3PageState();
  }
}

class _Exercise3PageState extends State<Exercise3Page> {
  TextEditingController qouteCtrl = new TextEditingController();
  TextEditingController authorCtrl = new TextEditingController();

  List<String> qoutesList = new List<String>();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Exercise 3: Printing Quotes'),
      ),
      body: Container(
        padding: EdgeInsets.all(5.0),
        child: Column(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: qouteCtrl,
                decoration: InputDecoration(hintText: "What is the qoute?"),
              ),
            ),
            Flexible(
              child: TextField(
                controller: authorCtrl,
                decoration: InputDecoration(hintText: "Who said it?"),
              ),
            ),
            RaisedButton(
              child: Text("Add"),
              onPressed: () {
                setState(() {
                  qoutesList
                      .add(authorCtrl.text + ', says "' + qouteCtrl.text + '"');
                });
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            Flexible(
              child: ListView.builder(
                itemCount: qoutesList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${qoutesList[index]}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
