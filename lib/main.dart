
import 'package:flutter/material.dart';
import 'package:test1/home/home.dart';
import 'package:test1/pages/icon_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName ,
    routes: {
      HomeScreen.routeName : (context)=>  HomeScreen(),
      IconDetailScreen.routeName: (context) => IconDetailScreen(
        iconPath: (ModalRoute.of(context)?.settings.arguments as Map<String, String>)['iconPath']!,
        iconTitle: (ModalRoute.of(context)?.settings.arguments as Map<String, String>)['iconText']!,
      ),
    },
    );
  }
}