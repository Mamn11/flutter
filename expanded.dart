import 'package:flutter/material.dart';

// *********************************
//
// Layout Modelo Básico - Expanded- STATELESS
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
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
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
        
        centerTitle:true,
        title:Text( 'Expanded'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Row(children: [
        Expanded(
          flex: 3,
          child: Container(
              alignment: Alignment.center,
              color: Colors.blue,
              child: Text(
                'Texto 1 Texto 1 Texto 1 Texto 1',
                maxLines: 1,
                style: TextStyle(
                  fontSize: 22,
                  overflow: TextOverflow.ellipsis,
                ),
              )),
        ),
        Expanded(
          flex: 7,
          child: Container(
            alignment: Alignment.center,
            color: Colors.green,
            child: Text(
              'Texto 1 Texto 1 Texto 1 Texto 1 aaaaaaaaaaaaaaa',
              maxLines: 1,
              style: TextStyle(fontSize: 22, overflow: TextOverflow.ellipsis),
            ),
          ),
        )
      ]),
    );
  }
}
