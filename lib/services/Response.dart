import 'dart:convert';

import 'package:http/http.dart' as http;
import '../constants/github_constants.dart';
import '../models/github_commit_model.dart';

class GithubResponse {
  Future<List<CommitModel>> fetchCommits() async {
    String url = GithubConstants.getUserCommits;

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        final Iterable json = result;

        List<CommitModel> commit = 
          json.map((commit)=> CommitModel.fromJson(commit)).toList();
          print('commits length = ${commit.length}');
          return commit;
      } else {
        throw Exception('Error fetching github commits');
      } 
    }catch (e){
     throw Exception('There was an error $e'); 
    }

  }
}