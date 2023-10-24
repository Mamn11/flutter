import 'package:flutter/material.dart';

// *********************************
//
// ROteiro dia 11/10 - STATELESS
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
        
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
          
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
          title: const Text('Stack e Imagens'),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Stack(children: [Container(color: Colors.red,child: Center(child:Text('ola')),),
          SizedBox.expand(child: Image.asset('assets/img/simpsons.jpg',
          fit: BoxFit.cover,
          ),),
          // Container(color: Colors.red,child: Center(child:Text('ola')),),  //caso descomentar,irá este container vai aparecer por cima da imagem dos simpsons
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Expanded(
                      child: Container(
                          padding: EdgeInsets.all(
                            16,
                            
                          ),
                          color: Color.fromRGBO(254, 203, 0, 0.7),
                          child: Text(
                            'A família mais divertida do planeta!',
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w400,
                              color: Colors.black87,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          )))
                ],
              )
            ],
          )
        ]));
  }
}
