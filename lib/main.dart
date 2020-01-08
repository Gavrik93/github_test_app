import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:github_test_app/pages/home_page.dart';
// import './constants/github_constants.dart';
// import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

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
