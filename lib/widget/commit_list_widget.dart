import 'package:flutter/material.dart';
import 'package:github_test_app/models/github_commit_model.dart';


class CommitListWidget extends StatelessWidget {
  final List<CommitModel> commit;
  CommitListWidget({this.commit});


  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        itemCount: commit.length,
        itemBuilder: (context, index){
          final CommitModel commitModel = commit.elementAt(index);
          return Card(
            child: ListTile(
              leading: Text('${commitModel.author.name}'),
              title: Text('${commitModel.commit.message}'),
            ),
          );
        });
  }
}
