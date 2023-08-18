//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_tes/Cursos/curso.dart';

class IniciaS extends StatelessWidget {
  const IniciaS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        backgroundColor: Color.fromARGB(255, 36, 97, 112),
        centerTitle: true,
        // ignore: prefer_const_constructors
        title: Text(
          'Inicia',
          style: const TextStyle(color: Colors.white),
        ),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(bundle: null, 'assets/img/pantalla_3.jpg'),
              fit: BoxFit.cover),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Image.asset(
                  'assets/img/Tes.png',
                  width: MediaQuery.of(context).size.width / 2,
                  height: 100,
                ),
              ),
              nombreInicia(),
              contraInicia(),
              //botonInicia(),
              OutlinedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      // ignore: prefer_const_constructors
                      MaterialPageRoute(builder: (context) => cursoI()));
                },
                label: const Text("Enter"),
                icon: const Icon(Icons.playlist_add_check),
                style: OutlinedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 11, 79, 108),
                    side: const BorderSide(
                        color: Color.fromARGB(255, 11, 79, 108), width: 6)),
              ),
            ]),
      ),
      //body: cuerpo(),
    );
  }
}

//correo
Widget nombreInicia() {
  // ignore: avoid_unnecessary_containers
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: const TextField(
      decoration: InputDecoration(
        hintText: "Emial",
        fillColor: Color.fromARGB(255, 224, 227, 227),
        filled: true,
      ),
    ),
  );
}

//contrase;o
contraInicia() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: const TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Contraseñas",
        fillColor: Color.fromARGB(255, 224, 227, 227),
        filled: true,
      ),
    ),
  );
}

//botton
/*botonInicia() {
  return Container(
    child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 11, 79, 108),
            side: const BorderSide(
                color: Color.fromARGB(255, 11, 79, 108), width: 6)),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => cursoI()));
        },
        icon: const Icon(Icons.playlist_add_check),
        label: const Text("Enter")),
  );
}*/

/*Widget cuerpo() {
  // ignore: avoid_unnecessary_containers
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(bundle: null, 'assets/img/pantalla_1.jpg'),
        fit: BoxFit.cover,
      ),
    ),
    // ignore: prefer_const_constructors
    child: Center(child: Text("Hola")),
  );
}*/
