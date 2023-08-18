import 'package:flutter/material.dart';
import 'package:flutter_tes/client/inicia.dart';
import 'package:flutter_tes/client/registro.dart';

// ignore: camel_case_types
class cuenta extends StatelessWidget {
  const cuenta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 36, 97, 112),
        centerTitle: true,
        // ignore: prefer_const_constructors
        title: Text("Cuenta"),
      ),
      //body: cuerpoC(),
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
                height: 150,
              ),
            ),
            //login
            OutlinedButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    // ignore: prefer_const_constructors
                    MaterialPageRoute(builder: (context) => IniciaS()));
              },
              icon: const Icon(Icons.account_circle),
              label: const Text("Inicia"),
              style: OutlinedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 11, 79, 108),
                  side: const BorderSide(
                      color: Color.fromARGB(255, 11, 79, 108), width: 6)),
            ),
            //Registro
            OutlinedButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    // ignore: prefer_const_constructors
                    MaterialPageRoute(builder: (context) => Regist()));
              },
              label: const Text("Rgistro"),
              icon: const Icon(Icons.manage_accounts),
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

/*Widget cuerpoC() {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage(bundle: null, 'assets/img/pantalla_1.jpg'),
          fit: BoxFit.cover),
    ),
    child: Column(
      //Es Logo
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Image.asset(
            'assets/img/Tes.png',
            height: 200,
          ),
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  // ignore: prefer_const_constructors
                  MaterialPageRoute(builder: (context) => IniciaS()));
            },
            child: const Text("Inicia"))
      ],
    ),
  );
}*/
