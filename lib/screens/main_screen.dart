import 'package:flutter/material.dart';
import 'package:git_history/providers/commit_provider.dart';
import 'package:git_history/utils/responsive.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState(){
    super.initState();
    final commitProvider = Provider.of<CommitProvider>(context, listen: false);
    commitProvider.getRepoCommits();
  }

  @override
  Widget build(BuildContext context) {
    final commitProvider = Provider.of<CommitProvider>(context);
    final Responsive resp = Responsive(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Github Commit History'),
        elevation: 0,
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: double.maxFinite,
          child: ListView.builder(
            controller: scrollController,
            itemCount: commitProvider.repo.length,
            itemBuilder: (BuildContext context, index) {
              final commit = commitProvider.repo[index];
              return Card(
                child: Row(
                  children: [
                    Container(
                      height: resp.hp(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(
                            commit.committer!.avatarUrl.toString(),
                            height: resp.hp(10),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Committer: ${commit.commit!.committer!.name}"),
                          Text("Email: ${commit.commit!.committer!.email}"),
                          Text("Date: ${commit.commit!.committer!.date}"),
                          Container(
                            height: resp.hp(0.3),
                          ),
                          const Text("--------------------------------------------------------------------"),
                          Container(
                            height: resp.hp(0.3),
                          ),
                          Container(
                            width: resp.wp(70),
                            child: Text(
                              "Message: ${commit.commit!.message}",
                              overflow: TextOverflow.fade,
                            ),
                          ),
                          Container(
                            height: resp.hp(0.3),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}
