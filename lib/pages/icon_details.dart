import 'package:flutter/material.dart';
import 'package:test1/pages/today.dart';
import 'package:test1/pages/tomorrow.dart';
import 'package:test1/pages/yesterday.dart';

class IconDetailScreen extends StatelessWidget {
  static const routeName = '/icon-detail';

  final String iconPath;
  final String iconTitle;

  const IconDetailScreen({
    super.key,
    required this.iconPath,
    required this.iconTitle,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFFFDF2F8),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color(0xFF672F98),
          title: const Text(
            "Divine Connection",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          bottom: const TabBar(
              indicatorColor: Colors.white,
              tabs: [
            Tab(child: Text("Yesterday",style: TextStyle(color: Colors.white),),),
            Tab(child: Text("Today",style: TextStyle(color: Colors.white),),),
            Tab(child: Text("Tomorrow",style: TextStyle(color: Colors.white),),),
          ]),
        ),
        body: const Center(
          child: TabBarView(
            children: [
             Yesterday(),
              Today(),
              Tomorrow(),
            ],
          ),
        ),
      ),
    );
  }
}