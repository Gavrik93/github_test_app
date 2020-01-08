import 'package:flutter/material.dart';
import '../models/github_commit_model.dart';


class CommitListWidget extends StatelessWidget {
  CommitListWidget(this.commit);
  final List<CommitModel> commit;
 
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        itemCount: commit.length,
        itemBuilder: (context, index){
          final CommitModel commitModel = commit.elementAt(index);
          return Card(
            child: ListTile(
              leading: Text('${commitModel.commit.author}'),
              title: Text('${commitModel.commit.message}'),
            ),
          );
        });
  }
}
