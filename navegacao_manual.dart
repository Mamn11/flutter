import 'package:flutter/material.dart';
import 'arquivos_page.dart';

// *********************************
//
// Navegação Manual - STATELESS
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
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
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
          title: const Text('HomePage'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Center(
          child: ElevatedButton(
              
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ArquivosPage(),
                  ),
                );
              },
              child: SizedBox(
                width: 90,
                
                child: Row(
                  children: [Text('Arquivos'), 
                  SizedBox(width: 5,),
                  Icon(Icons.save)],
                ),
              )),
        ));
  }
}
