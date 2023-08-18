import 'package:flutter/material.dart';
import 'package:flutter_tes/Cursos/lsg.dart';
import 'package:flutter_tes/Cursos/videosdeletreo.dart';
import 'package:flutter_tes/main.dart';

// ignore: camel_case_types
class cursoI extends StatelessWidget {
  const cursoI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 58, 126, 131),
        centerTitle: true,
        // ignore: prefer_const_constructors
        title: Text("Bienvenida"),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(bundle: null, 'assets/img/pantalla_4.jpg'),
                fit: BoxFit.cover)),
      ),
    );
  }
}

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  get accountEmail => null;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: const Text('Sergio Pablo'),
              accountEmail: accountEmail),
          ListTile(
            leading: const Icon(Icons.waving_hand),
            title: const Text('LSG'),
            onTap: () {
              Navigator.push(
                  context,
                  // ignore: prefer_const_constructors
                  MaterialPageRoute(builder: (context) => Lsg()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.numbers),
            title: const Text('Matematica'),
            onTap: () {
              Navigator.push(
                  context,
                  // ignore: prefer_const_constructors
                  MaterialPageRoute(builder: (context) => VideoApp()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.close),
            title: const Text('Salir'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyApp()));
            },
          ),
        ],
      ),
    );
  }
}
