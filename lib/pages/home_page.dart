import 'package:flutter/material.dart';
import 'package:github_test_app/models/github_commit_model.dart';
import 'package:github_test_app/widget/commit_list_widget.dart';
import '../services/Response.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<CommitModel>> data;
  @override
  void initState() {
    super.initState();
    data = GithubResponse().fetchCommits();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Github commit data'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                data = GithubResponse().fetchCommits();
              });
            },
          ),
        ],
      ),
      body: Center(
        child: FutureBuilder<List<CommitModel>>(
          future: data,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return CommitListWidget(snapshot.data);
            } else if (snapshot.hasError) {
              return CircularProgressIndicator();
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
