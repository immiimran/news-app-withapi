import 'package:flutter/material.dart';
import 'package:news_app/ui/all_news.dart';
import 'package:news_app/ui/breaking_news.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            title: const Text(
              'Immi News App',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            backgroundColor: Colors.yellow,
            bottom: const TabBar(tabs: [
              Tab(
                text: 'Breaking News',
              ),
              Tab(
                text: 'All News',
              )
            ])),
        body: const TabBarView(children: [
          BreakingNews(),
          AllNews(),
        ]),
      ),
    );
  }
}
