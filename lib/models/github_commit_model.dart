import 'commit.dart';
import 'commit_author.dart';




class CommitModel {
  CommitModel({this.commit, this.author, this.commiter});
  Commit commit;
  CommitAuthor author;
  CommitAuthor commiter;

  
}