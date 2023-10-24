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
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary, // Cor de fundo da barra
        centerTitle: true, // Centraliza o título
      ),
      // Corpo da página
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _container(Colors.red, "PARE!"),    // Container vermelho com texto "PARE!"
            _container(Colors.yellow, "PARE!"), // Container amarelo com texto "PARE!"
            _container(Colors.green, "PARE!"),  // Container verde com texto "PARE!"
          ],
        ),
      ),
    );
  }

  // Método privado que retorna um widget Container com características específicas
  Container _container(Color color, String txt) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: color), // Estilo do container
      padding: const EdgeInsets.all(20), // Preenchimento interno
      height: 150, // Altura do container
      width: 150,  // Largura do container
      alignment: Alignment.center, // Alinhamento do conteúdo
      child: Text(txt, style: TextStyle(color: Colors.black)), // Texto dentro do container
    );
  }
}
