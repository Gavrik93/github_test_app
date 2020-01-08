mixin GithubConstants {
  static const String baseGithubUrl = 'https://api.github.com';

  static String user = 'Gavrik93';
  static String repo = 'github_test_app';

  static String getUser = '$baseGithubUrl/users/$user';
  static String getUserCommits = '$baseGithubUrl/repos/$user/$repo/commits';
}
