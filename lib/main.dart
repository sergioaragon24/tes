// ignore_for_file: avoid_print, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_tes/client/cuenta.dart';
//import 'package:flutter_tes/client/inicia.dart';
//import 'package:flutter_tes/inform.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My Tes',
      //home: Inicio(),
      home: cuerpo1(),
    );
  }
}

// ignore: camel_case_types
class cuerpo1 extends StatelessWidget {
  const cuerpo1({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_init_to_null
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(bundle: null, 'assets/img/pantalla.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset(
                'assets/img/Tes.png',
                width: MediaQuery.of(context).size.width / 2,
                height: 200,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // ignore: prefer_const_constructors
                Navigator.push(
                    context,
                    // ignore: prefer_const_constructors
                    MaterialPageRoute(builder: (context) => cuenta()));
              },
              // ignore: prefer_const_constructors
              child: Icon(
                Icons.chevron_right,
                // ignore: prefer_const_constructors
                color: Color.fromARGB(255, 255, 255, 255),
                size: 50,
              ),
              style: ElevatedButton.styleFrom(
                  // ignore: prefer_const_constructors
                  shape: CircleBorder(),
                  // ignore: prefer_const_constructors
                  backgroundColor: Color.fromARGB(255, 11, 79, 108),
                  // ignore: prefer_const_constructors
                  padding: EdgeInsets.all(20)),
            )
          ],
        ));
  }
}


/*class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      backgroundColor: Color.fromARGB(255, 33, 158, 188),
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Image.asset(
                  'assets/img/Tes.png',
                  width: MediaQuery.of(context).size.width / 2,
                  height: 200,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // ignore: prefer_const_constructors
                  Navigator.push(
                      context,
                      // ignore: prefer_const_constructors
                      MaterialPageRoute(builder: (context) => IniciaS()));
                },
                // ignore: prefer_const_constructors
                child: Icon(
                  Icons.chevron_right,
                  // ignore: prefer_const_constructors
                  color: Color.fromARGB(255, 255, 255, 255),
                  size: 50,
                ),
                style: ElevatedButton.styleFrom(
                    // ignore: prefer_const_constructors
                    shape: CircleBorder(),
                    // ignore: prefer_const_constructors
                    backgroundColor: Color.fromARGB(255, 11, 79, 108),
                    // ignore: prefer_const_constructors
                    padding: EdgeInsets.all(20)),
              )
            ],
          )
        ],
      ),
    );
  }
}*/
