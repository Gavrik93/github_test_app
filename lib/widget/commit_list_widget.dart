import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import '../models/github_commit_model.dart';


class CommitListWidget extends StatelessWidget {
  CommitListWidget(this.commit);
  final List<CommitModel> commit;
  final centerText = TextAlign.center;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: commit.length,
        itemBuilder: (context, index) {
          final CommitModel commitModel = commit.elementAt(index);
          return Card(
            child: ListTile(
              leading: Container(
                height: 35,
                width: 125,
                child: Text(
                  'Author: \n ${commitModel.author.name}',
                  textAlign: centerText,
                ),
              ),
              title: Column(
                children: <Widget>[
                  Text(
                    '${commitModel.commit.message}',
                    textAlign: centerText,
                  ),
                  Text(DateFormat.yMd().add_jm().format(commitModel.author.dateTime)),
                ],
              ),
            ),
          );
        });
  }
}
