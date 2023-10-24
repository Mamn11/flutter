import 'package:flutter/material.dart';

// *********************************
//
// Layout Modelo Básico - SEMAFORO - STATELESS
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
        body: Center(
          child: (Column(
            children: [
              Container(  //sinal vermelho
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(500),
                    color: Colors.red, //cor do contariner
                  ),
                  width: 100, //largura
                  height: 100, //altura
                  margin: const EdgeInsets.all(10.0),

                  //valor do margin para Todos os lados do container (edge.all)
                  child: const Center(
                    //Centraliza o texto dentro do container
                    child: Text('Pare',style: TextStyle(
                      color: Colors.black
                    ),), //texto
                  )),
              Container(  //sinal amarelo
                  decoration: BoxDecoration( //border radius do conteiner
                    borderRadius: BorderRadius.circular(500),
                    color: Colors.yellowAccent, //cor do contariner
                  ),
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.all(10.0),
                  child: const Center(
                    child: Text('Atenção!',style: TextStyle(
                      color: Colors.black
                    ),),
                    
                  )),
              Container( //sinal verde
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(500),
                    color: Colors.green, //cor do contariner
                  ),
                  width: 100, //largura
                  height: 100, //altura
                  margin: const EdgeInsets.all(
                      10.0), //valor do margin para Todos os lados do container (edge.all)
                  child: const Center(
                    //centraliza o texto dentro do container
                    child: Text('Siga',style: TextStyle(
                      color: Colors.black
                    ),), //texto
                  ))
            ],
          )),
        ));
  }
}
