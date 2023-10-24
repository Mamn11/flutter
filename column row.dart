import 'package:flutter/material.dart';

// *********************************
//
// Layout Modelo Básico - STATELESS
//
// *********************************
main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Layout Modelo'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        backgroundColor: Colors.yellow,
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.green,
                      padding: EdgeInsets.all(50),
                      width: 90,
                      height: 40,
                      margin: EdgeInsets.all(80),
                      child: Text(
                        '1',
                        style: TextStyle(),
                      ),
                    ),
                    Container(
                      color: Colors.green,
                      padding: EdgeInsets.all(50),
                      width: 90,
                      height: 40,
                      margin: EdgeInsets.all(80),
                      child: Text('3'),
                    ),
                    Container(
                      color: Colors.green,
                      padding: EdgeInsets.all(50),
                      width: 90,
                      height: 40,
                      margin: EdgeInsets.all(80),
                      child: Text('5'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.green,
                      padding: EdgeInsets.all(50),
                      width: 90,
                      height: 40,
                      margin: EdgeInsets.all(80),
                      child: Text('2'),
                    ),
                    Container(
                      color: Colors.green,
                      padding: EdgeInsets.all(50),
                      width: 90,
                      height: 40,
                      margin: EdgeInsets.all(80),
                      child: Text('4'),
                    ),
                    Container(
                      color: Colors.green,
                      padding: EdgeInsets.all(8.0),
                      width: 90,
                      height: 40,
                      margin: EdgeInsets.all(80),
                      child: Text('6'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
