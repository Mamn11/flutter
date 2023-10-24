// import 'package:flutter/material.dart';
// import 'anuncios_page.dart';
// import 'dados_page.dart';
// import 'favoritos_page.dart';

// // *********************************
// //
// // Navegação drawer - STATELESS
// //
// // *********************************
// main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
//           useMaterial3: true),
//       home: const HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Layout Modelo'),
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         ),
//         drawer: Drawer(
//           child: ListView(
//             children: [
//               UserAccountsDrawerHeader(
//                 accountName: Text('Seu nome e sobrenome'),
//                 accountEmail: Text('seuemail@mail.com'),
//                 currentAccountPicture: CircleAvatar(
//                   backgroundImage: AssetImage('assets/images/bart.jpg'),
//                 ),
//               ),
//               ListTile(
//                 leading: const Icon(Icons.announcement),
//                 title: const Text("Anúncios"),
//                 subtitle: const Text("mais informações..."),
//                 trailing: const Icon(Icons.arrow_forward),




//                 onTap: () {print("Anúncios");},
//                 onTap: () {print("Dados");},
//                 onTap: () {print("Favoritos");},
//                 onTap: () {print("Logout");},
//               ),
//               ListTile(
//                   leading: const Icon(Icons.cloud),
//                   title: const Text("Dados"),
//                   subtitle: const Text("mais informações..."),
//                   trailing: const Icon(Icons.arrow_forward)
                  
//                 onTap: () {print("Anúncios");},
//                 onTap: () {print("Dados");},
//                 onTap: () {print("Favoritos");},
//                 onTap: () {print("Logout");},
                  
                  
//                   ),
//               ListTile(
//                   leading: const Icon(Icons.star),
//                   title: const Text("Favoritos"),
//                   subtitle: const Text("mais informações..."),
//                   trailing: const Icon(Icons.arrow_forward)
                  
//                 onTap: () {print("Anúncios");},
//                 onTap: () {print("Dados");},
//                 onTap: () {print("Favoritos");},
//                 onTap: () {print("Logout");},
                  
//                   ),
//               ListTile(
//                 leading: const Icon(Icons.exit_to_app),
//                 title: const Text("Logout"),
//                 trailing: const Icon(Icons.arrow_forward),

//                 onTap: () {print("Anúncios");},
//                 onTap: () {print("Dados");},
//                 onTap: () {print("Favoritos");},
//                 onTap: () {print("Logout");},

//               )
//             ],
//           ),
//         ),
//         body: const Center(
//           child: Text(
//             'Home Page',
//             style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
//           ),
//         ));
//   }
// }
