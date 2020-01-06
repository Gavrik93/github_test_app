import 'dart:convert';

import 'package:flutter/material.dart';
import './constants/github_constants.dart';
import 'package:http/http.dart' as http;


void main() => runApp(MyApp());

//String url = GithubConstants.getUserCommits;
// List<GithubParse> parseGithub(String responseBody) {

// }

Future fetchGithub() async {
  String url = GithubConstants.getUserCommits;
  final response = await http.get(url);
  List <dynamic> githubData = jsonDecode(response.body); 
  print('${githubData.length}');
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Github_demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Github_demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Push me'),
              onPressed: fetchGithub,
            )
          ],
        ),
      ),
    );
  }
}
