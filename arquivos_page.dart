import 'package:flutter/material.dart';


class ArquivosPage extends StatelessWidget {
 const ArquivosPage({super.key});
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(
 title: const Text('Página de Arquivos'),
 backgroundColor: Colors.green,
 centerTitle: true,
 ),
 backgroundColor: Colors.greenAccent,
 body: Center(

  child: ElevatedButton( onPressed: () { Navigator.pop(context); },
  child: SizedBox(
    width: 70,
    child: Row(children: [
      Icon(Icons.arrow_back_outlined, color: Colors.white),
     SizedBox(width: 5),
     Text('Voltar', style: TextStyle(color: Colors.white)), 
    ]),
  ),
  style:ElevatedButton.styleFrom(backgroundColor: Colors.red, elevation: 9,
  
  ),


 ),
 ));
 }
}
