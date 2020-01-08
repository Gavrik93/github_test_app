import 'commit_author.dart';

class Commit {
  Commit({this.author, this.committer, this.message});

  CommitAuthor author;
  CommitAuthor committer;
  String message;

  factory Commit.fromJson(Map<String, dynamic> json) => Commit(
        author: CommitAuthor.fromJson(json['author']),
        committer: CommitAuthor.fromJson(json['committer']),
        message: json['message'],
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'author': author.toJson(),
        'committer': committer.toJson(),
        'message': message,
      };
}
