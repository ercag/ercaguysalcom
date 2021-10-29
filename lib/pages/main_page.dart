import 'package:ercaguysalcom/widgets/contact.dart';
import 'package:ercaguysalcom/widgets/github/github_repos.dart';
import 'package:ercaguysalcom/widgets/logo.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Container(
        alignment: Alignment.center,
        child: SizedBox(
            width: MediaQuery.of(context).size.width > 800
                ? MediaQuery.of(context).size.width / 3
                : MediaQuery.of(context).size.width,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Logo(),
                  Contact(),
                  Expanded(child: GithubRepoList()),
                ])));
  }
}
