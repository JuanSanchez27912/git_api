import 'package:flutter/material.dart';
import 'package:git_history/models/commit_model.dart';
import 'package:http/http.dart' as http;

class CommitProvider with ChangeNotifier {
  final String url = 'api.github.com';
  List<CommitModel> repo = [];
  
  Future<void> getRepoCommits(int page) async {
    final result = await http.get(Uri.https(url, "/repos/JuanSanchez27912/git_api/commits",
        {
          'page': page.toString(),
        }
    )
    );
    final response = commitModelFromJson(result.body);
    repo.addAll(response.commit as Iterable<CommitModel>);
    notifyListeners();
  }
}