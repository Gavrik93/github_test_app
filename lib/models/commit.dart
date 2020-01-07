import 'commit_author.dart';

class Commit {
  CommitAuthor author;
  CommitAuthor commiter;
  String message;

  Commit({this.author, this.commiter, this.message});

  factory Commit.fromJson(Map<String, dynamic> json) => Commit(
    author: CommitAuthor.fromJson(json["author"]),
    commiter: CommitAuthor.fromJson(json["commiter"]),
    message: json["message"],
  );

  Map<String, dynamic> toJson() =>{
    "author" : author.toJson(),
    "commiter": commiter.toJson(),
    "message" : message,
  };
}