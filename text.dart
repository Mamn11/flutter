// Importa o pacote de widgets do Flutter
import 'package:flutter/material.dart';

// Função principal que inicia o aplicativo
main() => runApp(const MyApp());

// Classe principal do aplicativo, que é um componente "stateless"
class MyApp extends StatelessWidget {
  // Construtor da classe
  const MyApp({super.key});

  // Método que constrói a interface do aplicativo
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Desativa a faixa de debug no canto superior direito
      debugShowCheckedModeBanner: false,
      // Configura o tema do aplicativo
      theme: ThemeData(
          // Cria um esquema de cores a partir de uma semente (seed color) azul
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          // Habilita o uso do Material 3
          useMaterial3: true),
      // Define a tela inicial como sendo a HomePage
      home: const HomePage(),
    );
  }
}

// Classe que representa a página principal do aplicativo
class HomePage extends StatelessWidget {
  // Construtor da classe
  const HomePage({super.key});

  // Método que constrói a interface da página principal
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // Barra superior do aplicativo (AppBar)
        appBar: AppBar(
          title: const Text('Layout Modelo'), // Título da barra
          backgroundColor: Theme.of(context)
              .colorScheme
              .inversePrimary, // Cor de fundo da barra
          centerTitle: true, // Centraliza o título
        ),
        body: const Center(
            child: Text('Teste',
            style: TextStyle(fontFamily: 'Dancing Script'
            )
            )
            ));
      
            
  }
}
