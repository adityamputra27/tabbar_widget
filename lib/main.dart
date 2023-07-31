import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<Tab> myTab = [
    const Tab(
      text: "Tab 1",
      icon: Icon(Icons.camera),
    ),
    const Tab(
      text: "Tab 2",
      icon: Icon(Icons.access_alarm),
    ),
    const Tab(
      text: "Tab 3",
      icon: Icon(Icons.ac_unit_outlined),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: myTab.length,
        initialIndex: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('My Apps'),
            centerTitle: true,
            bottom: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              labelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.normal,
              ),
              tabs: myTab,
              // indicatorColor: Colors.green,
              // indicatorWeight: 5,
              // indicatorPadding: const EdgeInsets.all(10),
              indicator: const BoxDecoration(
                color: Colors.amber,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 5,
                  ),
                ),
              ),
            ),
          ),
          body: const TabBarView(children: [
            Center(
              child: Text(
                'Tab 1',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
            Center(
              child: Text(
                'Tab 2',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
            Center(
              child: Text(
                'Tab 3',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
