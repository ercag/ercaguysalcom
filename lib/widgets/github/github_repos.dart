import 'package:ercaguysalcom/services/github_services.dart';
import 'package:ercaguysalcom/widgets/github/github_repos_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GithubRepoList extends StatefulWidget {
  const GithubRepoList({Key? key}) : super(key: key);

  @override
  _GithubRepoListState createState() => _GithubRepoListState();
}

class _GithubRepoListState extends State<GithubRepoList> {
  List<GitHubReposModel> repoList = [];

  @override
  void initState() {
    super.initState();
    GitHubServies().getRepos().then((value) {
      repoList.clear();
      setState(() {
        repoList.addAll(value);
        repoList.where((element) => !element.private);
        repoList.sort((b, a) => (a.id.compareTo(b.id)));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width / 4,
        height: MediaQuery.of(context).size.height / 2,
        child: Column(children: [
          Text(
            "My Latest GitHub Repos",
            style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w200,
                decoration: TextDecoration.none,
                color: Colors.black),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: repoList.length,
              itemBuilder: (context, index) {
                return Card(
                    color: Colors.transparent,
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(100, 191, 186, 176),
                                blurRadius: 1,
                                spreadRadius: 1)
                          ],
                          gradient: LinearGradient(
                            tileMode: TileMode.mirror,
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromARGB(255, 171, 183, 91),
                              Color.fromARGB(255, 168, 183, 72),
                            ],
                            stops: [
                              0,
                              1,
                            ],
                          )),
                      child: InkWell(
                          onTap: () {
                            print(repoList[index].url);
                          },
                          child: ListTile(
                            mouseCursor: MouseCursor.defer,
                            title: Text(repoList[index].name,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black)),
                            trailing: const Icon(
                              Icons.touch_app,
                              color: Colors.black,
                            ),
                          )),
                    ));
              },
            ),
          )
        ]));
  }
}
