import 'commit_author.dart';

class Commit {
  CommitAuthor author;
  CommitAuthor committer;
  String message;

  Commit({this.author, this.committer, this.message});

  factory Commit.fromJson(Map<String, dynamic> json) => Commit(
    author: CommitAuthor.fromJson(json["author"]),
    committer: CommitAuthor.fromJson(json["commiter"]),
    message: json["message"],
  );

  Map<String, dynamic> toJson() =>{
    "author" : author.toJson(),
    "committer": committer.toJson(),
    "message" : message,
  };
}