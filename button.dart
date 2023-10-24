import 'package:flutter/material.dart';

// *********************************
//
// Layout Modelo Básico - Button -  STATELESS
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
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
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
        body: Column(
          children: [
            Center(
              child: ElevatedButton(onPressed: null, child: Text('Aperte')),
            ),
            ElevatedButton(onPressed: () => '', child:Text('Aperte')),
          ],
        ));
  }
}
