import 'package:flutter/material.dart'; 
import 'anuncios_page.dart';
import 'dados_page.dart';
import 'favoritos_page.dart';

// *********************************
//
// Tab Bar - STATELESS
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
    
    return 


     DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(title: const Text('Layout Modelo'),
      centerTitle: true,
      bottom: TabBar(tabs: [

            Tab(icon:  Icon(Icons.announcement)),
            Tab(icon:  Icon(Icons.cloud)),
            Tab(icon:  Icon(Icons.favorite)),
            
            
            
            
      ]),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        // body: const AnunciosPage(),
      // body: const DadosPage(),
       body: const TabBarView(children: [
        AnunciosPage(),
        DadosPage(),
        FavoritosPage()
        ]


       )
        ));
    
    
   
}
}