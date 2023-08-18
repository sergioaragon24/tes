import 'package:flutter/material.dart';
import 'package:flutter_tes/Cursos/curso.dart';

class Regist extends StatelessWidget {
  const Regist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // ignore: prefer_const_constructors
        title: Text(
          'Registro',
          style: const TextStyle(color: Colors.blueGrey),
        ),
        backgroundColor: const Color.fromARGB(255, 152, 226, 230),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(bundle: null, 'assets/img/pantalla_1.jpg'),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset(
                'assets/img/Tes.png',
                width: MediaQuery.of(context).size.width / 2,
                height: 150,
              ),
            ),
            //cuerpoR(),
            nombreRegistro(),
            apellidoRegistro(),
            correoRegistro(),
            contraseRegistro(),
            //botonRegistro(),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    // ignore: prefer_const_constructors
                    MaterialPageRoute(builder: (context) => cursoI()));
              },
              label: const Text("Guardar"),
              icon: const Icon(Icons.exit_to_app),
              style: OutlinedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 11, 79, 108),
                  side: const BorderSide(
                      color: Color.fromARGB(255, 11, 79, 108), width: 6)),
            ),
          ],
        ),
      ),
    );
  }
}

/*Widget cuerpoR() {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(bundle: null, 'assets/img/pantalla_1.jpg'),
        fit: BoxFit.cover,
      ),
    ),
  );
}
*/
Widget nombreRegistro() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: const TextField(
      decoration: InputDecoration(
        hintText: "Nombre",
        fillColor: Color.fromARGB(255, 224, 227, 227),
        filled: false,
      ),
    ),
  );
}

Widget apellidoRegistro() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: const TextField(
      decoration: InputDecoration(
        hintText: "Apellido",
        fillColor: Color.fromARGB(255, 224, 227, 227),
        filled: false,
      ),
    ),
  );
}

Widget correoRegistro() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: const TextField(
      decoration: InputDecoration(
        hintText: "Emial",
        fillColor: Color.fromARGB(255, 224, 227, 227),
        filled: false,
      ),
    ),
  );
}

Widget contraseRegistro() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: const TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Contraseñas",
        fillColor: Color.fromARGB(255, 224, 227, 227),
        filled: false,
      ),
    ),
  );
}

/*botonRegistro() {
  return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
          foregroundColor: const Color.fromARGB(255, 11, 79, 108),
          side: const BorderSide(
              color: Color.fromARGB(255, 11, 79, 108), width: 6)),
      onPressed: () {},
      icon: const Icon(Icons.exit_to_app),
      label: const Text("Guardar"));
}
*/