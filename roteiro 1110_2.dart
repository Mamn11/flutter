import 'package:flutter/material.dart';

// *********************************
//
// Roteiro dia 11/10 - STATELESS
//
// *********************************
main() => runApp(const MyApp());

class Img {  //Classe IMG
    String nome;
    String path;

    Img(this.nome, this.path);
  }

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
     List<Img> imgs = [   //lista com o nome e caminho da imagem, utilizando a classe IMG
      Img("Homer Simpson", "assets/img/homer.jpg"),
      Img("Marge Simpson", "assets/img/marge.jpg"),
      Img("Bart Simpson", "assets/img/bart.jpg"),
      Img("Lisa Simpson", "assets/img/lisa.png"),
      Img("Meg Simpson", "assets/img/meg.png"),
      Img("Homer Simpson", "assets/img/homer.jpg"),
      Img("Marge Simpson", "assets/img/marge.jpg"),
      Img("Bart Simpson", "assets/img/bart.jpg"),
      Img("Lisa Simpson", "assets/img/lisa.png"),
      Img("Meg Simpson", "assets/img/meg.png"),
      Img("Homer Simpson", "assets/img/homer.jpg"),
      Img("Marge Simpson", "assets/img/marge.jpg"),
      Img("Bart Simpson", "assets/img/bart.jpg"),
      Img("Lisa Simpson", "assets/img/lisa.png"),
      Img("Meg Simpson", "assets/img/meg.png"),
      Img("Homer Simpson", "assets/img/homer.jpg"),
      Img("Marge Simpson", "assets/img/marge.jpg"),
      Img("Bart Simpson", "assets/img/bart.jpg"),
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stack e Imagens'),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: GridView.builder(
           // crossAxisCount: altera a quantidade de imagens por linha
          // se colocar 1 ficará igual ao ListView
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
          itemCount: imgs.length,
          // o itemBuilder percorre item por item nelo contido 
          // transformando um a um em widgets
          itemBuilder: (context,index) {
          Img img = imgs[index];
          // antes do retorno do método, cada imagem é forçada a se encaixar no espaço 
          // a ela destinado em BoxFit.cover
           Image imagemFormatada = Image.asset(img.path, fit: BoxFit.cover);
          // O itemBuilder serve para percorrer a lista de imagens transformando uma a uma em widgets Img img = imgs[index];
          return Stack(fit: StackFit.expand,children: [
            imagemFormatada,
            Container(alignment: Alignment.bottomCenter,
              child: Container(decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(16)),
                child:
                Text(img.nome,style: TextStyle(fontSize: 16,color: Colors.white),),
            )
              )
          ],);
          }
          ,)
        
        );
  }
}
