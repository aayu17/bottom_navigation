import 'package:botton_navigation/pages/account_page.dart';
import 'package:botton_navigation/pages/add_page.dart';
import 'package:botton_navigation/pages/home_page.dart';
import 'package:botton_navigation/pages/search_page.dart';
import 'package:botton_navigation/pages/settings_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  final screens = [
    HomePage(),
    SearchPage(),
    AccountPage(),
    AddPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blue.shade50 ,
      appBar: AppBar(
        title: Text("Bottom Navigation"),
        centerTitle: true,
        
      ),
      body:screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blue.shade50,
        buttonBackgroundColor: Colors.white,
        height: 55,
        index: index,
        onTap: (index) => setState(() {
          this.index = index;
        }),
        items: const [
          Icon(
            Icons.home,
            size: 20,
            color: Colors.black,
          ),
          Icon(
            Icons.search,
            size: 20,
            color: Colors.black,
          ),
          Icon(
            Icons.account_box,
            size: 20,
            color: Colors.black,
          ),
          Icon(
            Icons.add,
            size: 20,
            color: Colors.black,
          ),
          Icon(
            Icons.settings,
            size: 20,
            color: Colors.black,
          ),
        ],
        animationDuration: Duration(milliseconds: 20),
        animationCurve: Curves.bounceIn,
      ),
    );
  }
}
