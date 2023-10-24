import 'package:flutter/material.dart';

// *********************************
//
// ELEVATED BUTTON
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
        title: const Text('Elevated Button'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // ElevatedButton - Estrutura Mínima
            ElevatedButton(child: const Text('Botão 01'), onPressed: () {}),
            // ElevatedButton - Estrutura Mínima - Desabilitado
            const ElevatedButton(onPressed: null, child: Text('Botão 02')),
            // ElevatedButton - Simples
            ElevatedButton(
              // Primeira forma de chamar a função
              onPressed: () {
                print('>>>>>>>>>>>> Botão Clicado!');
              },
              child: const Text(
                'Botão 03',
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 22,
                ),
              ),
            ),
            // ElevatedButton - Com ícone
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text(
                'Botão 04',
                style: TextStyle(fontSize: 22),
              ),
            ),

            // ElevatedButton - Com ícone à direita
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(8),
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: const SizedBox(
                width: 300,
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Botão 05'),
                    SizedBox(width: 8),
                    Icon(Icons.save),
                  ],
                ),
              ),
            ),

            // ElevatedButton com style
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  elevation: 10,
                  backgroundColor: Colors.purple,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                  textStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              child: const Text('Botão 06'),
            ),

            // ElevatedButton com style e bordas arredondadas
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.purple,
                backgroundColor:
                    const Color.fromRGBO(255, 255, 255, 0.8), // foreground
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                textStyle:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: const BorderSide(color: Colors.purple, width: 2),
                ),
              ),
              child: const Text('Botão 07'),
            ),

            // ElevatedButton com ButtonStyle
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
                  textStyle:
                      MaterialStateProperty.all(const TextStyle(fontSize: 20))),
              child: const Text('Botão 08'),
            ),
          ],
        ),
      ),
    );
  }
}