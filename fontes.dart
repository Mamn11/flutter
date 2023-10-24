
import 'package:flutter/material.dart';

// *********************************
//
// Layout Modelo Básico -Fontes- STATELESS
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
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
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
          centerTitle: true,
          title: const Text('Fontes'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: const Center(
            child: Column(children: [
          Text(
            'Hellow World',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 50,
              
            ),
          ),
          Text('Mateus',style: TextStyle(
            fontFamily: 'Dancing Script',
            fontSize: 50
          ),)
        ])));
  }
}
