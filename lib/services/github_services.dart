import 'dart:convert';

import 'package:ercaguysalcom/widgets/github/github_repos_model.dart';
import 'package:http/http.dart' as http;

class GitHubServies {
  final String githubAuthority = "api.github.com";

  Future<List<GitHubReposModel>> getRepos() async {
    List<GitHubReposModel> retList = [];
    String githubPath = "/users/ercag/repos";
    Uri url = Uri.https(githubAuthority, githubPath);

    var response = await http
        .get(url, headers: {"Accept": "application/vnd.github.v3+json"});

    if (response.statusCode == 200) {
      List<dynamic> dyna = jsonDecode(response.body);
      for (var element in dyna) {
        retList.add(GitHubReposModel.fromJson(element));
      }
    }

    return retList;
  }
}
