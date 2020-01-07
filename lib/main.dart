import 'dart:convert';

import 'package:flutter/material.dart';
import './pages/home_page.dart';
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
      home: HomePage(),
    );
  }
}

