import 'dart:convert';

import 'commit.dart';
import 'commit_author.dart';

List<CommitModel> gitCommitModelFromJson(String str) =>
    List<CommitModel>.from(jsonDecode(str).map((m) => CommitModel.fromJson(m)));

String gitCommitToJson(List<CommitModel> data) =>
    jsonEncode(List<dynamic>.from(data.map((m) => m.toJson())));

class CommitModel {
  CommitModel({this.commit, this.author, this.committer});
  Commit commit;
  CommitAuthor author;
  CommitAuthor committer;

  factory CommitModel.fromJson(Map<String, dynamic> json) {
    final commit = Commit.fromJson(json['commit']);
    final author = commit.author;
    final commiter = commit.committer;
    return CommitModel(
        commit: Commit.fromJson(json['commit']),
        author: author,
        committer: commiter);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'commit': commit.toJson(),
        'author': author.toJson(),
        'committer': committer.toJson(),
      };
}
