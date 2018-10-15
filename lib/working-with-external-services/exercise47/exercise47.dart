import 'dart:convert';
import 'dart:async';
import 'package:exercises_57_challenges/working-with-external-services/exercise47/space_info.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Exercise47Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Exercise47PageState();
  }
}

class _Exercise47PageState extends State<Exercise47Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercise 47 - Who's in Space?"),
      ),
      body: FutureBuilder(
        future: fetchSpaceInfo(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var people = (snapshot.data as SpaceInfo).people;
            return ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
                return ListTile(
                    title: Text(
                        '${people[index].name} is in craft ${people[index].craft}'));
              },
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }

          return CircularProgressIndicator();
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  Future<SpaceInfo> fetchSpaceInfo() async {
    final response = await http.get('http://api.open-notify.org/astros.json');

    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON.
      return SpaceInfoSerializer().fromMap(json.decode(response.body));
    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to load post');
    }
  }
}
